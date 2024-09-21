library(xml2)
library(XML)
library(readr)
require(tidyverse)
library(xmlconvert)
library(dplyr)

nms <- script_env$nms
filelist <-  readLines("filelist.txt")

for (file in filelist) {
  
  patient <- as_list(read_xml(filelist))
  patient_df <- tibble::as_tibble(patient) # %>%
  #  unnest_longer(Report,nms_repair = "universal") # unneeded
  record_id	<- attr(patient_df$Report$Patient$PatientID, which = "val")
  name	<- attr(patient_df$Report$Patient$Name, which = "val")
  
  nm <- data.frame(record_id, name)
  nms <- nms %>% 
    rows_insert(nm, by = "record_id", copy = TRUE, conflict = "ignore")
}

#nms$record_id <- nms$record_id
#nms$record_id <- NULL

# Save output_data to a file or database
#source("var_handler.r")
#write_csv(nms, "nms.csv", na = "")

nms <<- nms