library(shiny)
library(shinyWidgets)
library(shinyjs)
library(dplyr)
library(gt)
library(gtExtras)
library(gtsummary)
library(bslib)
library(readr)

# Define the UI
ui <- fluidPage(
  theme = bs_theme(version = 4, bootswatch = "minty"),
  titlePanel("cviBaker"),
  p("Accepts batches of XML files exported from CVi 42 and creates a CSV file fit for upload on a paired RedCap server."),
  p("Make sure to comply with any local regulations on use of patient data by properly anonymizing studies on CVi prior to exporting or uploading the XML files."),
  sidebarLayout(
    sidebarPanel(
      p("Upload CVi42 XML reports to begin processing."),
      fileInput("csvTemplate", "1. Upload Redcap Data Import Template (csv)", multiple = FALSE),
      fileInput("xmlFiles", "2. Select CMR Reports (xml)", multiple = TRUE),
      actionButton("processEditBtn", "Process")
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Processing",
                 h3(""),
                 verbatimTextOutput("uploadMessage"),
                 h3(""),
                 downloadButton(
                   "downloadData", 
                   label = "CSV", 
                   #class = NULL, 
                   icon = icon("download"), 
                   style = "color: #fff; background-color: #007bff; border-color: #007bff;"
                 ),
                 #h4("Data Analytics"),
                 #uiOutput("processedDataUI")
        ),
        tabPanel("Raw CMR Data",
                 p(""),
                 dataTableOutput("secondPanelTable") # Raw data table
        ),
        
        tabPanel("Patient names",
                 h3(""),
                 dataTableOutput("thirdPanelTable"),
                 h3(""),
                 downloadButton(
                   "downloadNames", 
                   label = "CSV", 
                   #class = NULL, 
                   icon = icon("download"), 
                   style = "color: #fff; background-color: #007bff; border-color: #007bff;"
                 )), # Raw data table
        
      )
    )
  )
)

# Define the server
server <- function(input, output, session) {
  filelist <- reactiveVal(NULL) 
  toredcap <- reactiveVal(NULL)  # Initialize as NULL
  nms <- data.frame(matrix(ncol = 2, nrow = 0))
  l <- c("record_id", "name")
  colnames(nms) <- l
  nms$record_id <- as.character()
  nms$name <- as.character()
  
  observeEvent(input$processEditBtn, {
    # Check if any XML files are selected
    if (is.null(input$csvTemplate) || is.null(input$xmlFiles))
      return()
    
    # Store the selected XML file paths in filelist
    filelist(input$xmlFiles$datapath)
    
    writeLines(filelist(), "filelist.txt")
    
    # Initialize a list to store edited XML content
    edited_xml <- list()
    
    # Read the CSV template file
    if (!is.null(input$csvTemplate)) {
      toredcap <- read_delim(input$csvTemplate$datapath, 
                          delim = ",", 
                          escape_double = FALSE, 
                          trim_ws = TRUE, 
                          show_col_types = FALSE)
    }
    
    # Create a progress bar
    withProgress(message = 'Processing XML Files', value = 0, {
      # Number of times we'll go through the loop
      n <- length(filelist())
      
      for (i in 1:n) {
        file <- filelist()[i]
        
        # Call the combined script to process and edit the XML file
        combined_script <- system2("./process_xml.sh", args = c(file), stdout = TRUE)
        
        # Store edited content
        edited_xml[[basename(file)]] <- combined_script
        
        # Increment the progress bar and update the detail text
        incProgress(1/n, detail = paste("Processing file", i))
        
        # Pause for a while to simulate processing
        Sys.sleep(0)
        
        # New environment for the script to work in
        script_env <- new.env()
        
        script_env$toredcap <- toredcap
        script_env$nms <- nms
        
        # Source your xml_handler script here
        source("xml_handler.R", local = script_env)
        #source("xml_name_handler.R", local = script_env)
        
        cmrdata <- script_env$cmrdata
        nms <- script_env$nms
      }
    })
    
    # Display the upload message
    output$uploadMessage <- renderText({
      paste(length(filelist()), "report(s) have been uploaded.")
    })
    
    output$downloadData <- downloadHandler(
      filename = function() {
        paste("cviData_", format(Sys.time(), '%Y%m%d-%H%M'), ".csv", sep = "")
      }, 
      content = function(file) {
        write_csv(script_env$toredcap, file, na = "")  # Use toredcap as a function to access its value
      }
    )
    
    # Display the secondPanelTable
    output$secondPanelTable <- renderDataTable({
      {cmrdata}
    })
    output$thirdPanelTable <- renderDataTable({
      {nms}
      
    })
    
    output$downloadNames <- downloadHandler(
      filename = function() {
        paste("ptnames_", format(Sys.time(), '%Y%m%d-%H%M'), ".csv", sep = "")
      }, 
      content = function(file) {
        write_csv(script_env$nms, file, na = "")  # Use toredcap as a function to access its value
      }
    )
  })
}

shinyApp(ui, server)
