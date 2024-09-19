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
        tabPanel(
          "Processing",
          h3(""),
          verbatimTextOutput("uploadMessage"),
          h3(""),
          downloadButton(
            "downloadData",
            label = "CSV",
            icon = icon("download"),
            style = "color: #fff; background-color: #007bff; border-color: #007bff;"
          )
        ),
        tabPanel(
          "Raw CMR Data",
          p(""),
          dataTableOutput("secondPanelTable") # Raw data table
        )
      )
    )
  )
)

server <- function(input, output, session) {
  filelist <- reactiveVal(NULL)
  toredcap <- reactiveVal(NULL) # Initialize as NULL
  nms <- data.frame(matrix(ncol = 2, nrow = 0))
  colnames(nms) <- c("record_id", "name")

  observeEvent(input$processEditBtn, {
    if (is.null(input$csvTemplate) || is.null(input$xmlFiles)) {
      return()
    }

    filelist(input$xmlFiles$datapath)

    edited_xml <- list()

    if (!is.null(input$csvTemplate)) {
      toredcap(read_delim(input$csvTemplate$datapath, delim = ",", escape_double = FALSE, trim_ws = TRUE, show_col_types = FALSE))
    }

    withProgress(message = "Processing XML Files", value = 0, {
      n <- length(filelist())

      for (i in 1:n) {
        file <- filelist()[i]

        # Call the combined script to process and edit the XML file
        combined_script <- system2("./process_xml.sh", args = c(file), stdout = TRUE)

        # Store edited content
        edited_xml[[basename(file)]] <- combined_script

        # Increment the progress bar and update the detail text
        incProgress(1 / n, detail = paste("Processing file", i))

        # Pause for a while to simulate processing
        Sys.sleep(0)
      }
    })

    output$uploadMessage <- renderText({
      paste(length(filelist()), "report(s) have been uploaded.")
    })
  })

  output$secondPanelTable <- renderDataTable({
    req(filelist())
    cmrdata <- read.csv(filelist())
    cmrdata
  })

  output$thirdPanelTable <- renderDataTable({
    req(toredcap())
    toredcap()
  })

  output$downloadData <- downloadHandler(
    filename = function() {
      paste("cviData_", format(Sys.time(), "%Y%m%d-%H%M"), ".csv", sep = "")
    },
    content = function(file) {
      write.csv(toredcap(), file, na = "", row.names = FALSE)
    }
  )
}

shinyApp(ui, server)
