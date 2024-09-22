🚧 Under construction, please handle with care 🚧

[![Project Status: WIP – Initial development is in progress, but there has not yet been a stable, usable release suitable for the public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)

# cviBaker 👨🏻‍🍳🧲
✨ Shiny application that:
- 🥪 reads and digests (i.e. «bakes») batches of Circle CVi42 reports in XML format,
- 👨🏻‍🍳 puts them into an R data.frame, and
- 🛜 makes the data.frame ready for upload to a RedCAP server.

# Table of Contents

- [Tutorial](#tutorial)
  - [Prerequisites](#prerequisites)
  - [Step 1: Launch the App](#step-1-launch-the-app)
  - [Step 2: Upload Files](#step-2-upload-files)
  - [Step 3: Process the Files](#step-3-process-the-files)
  - [Step 4: Download the Processed Data](#step-4-download-the-processed-data)
  - [Step 5: View Raw CMR Data (Optional)](#step-5-view-raw-cmr-data-optional)
  - [Step 6: View Patient Names (Optional)](#step-6-view-patient-names-optional)
  - [Notes](#notes)
- [Variables processed](#variables-processed)
- [About](#about)


# Tutorial

cviBaker is a Shiny app that processes cardiac magnetic resonance imaging (CMR) reports exported from CVi42 and creates a CSV file suitable for upload to a paired REDCap server. This tutorial will guide you through the steps to use this app.

## Prerequisites

Before using cviBaker, ensure that you have the following:

1. R and RStudio installed on your system.
2. The necessary R packages installed (`shiny`, `shinyWidgets`, `shinyjs`, `dplyr`, `gt`, `gtExtras`, `gtsummary`, `bslib`, and `readr`).
3. A [compatible](compatibility.md) REDCap Data Import Template (CSV file) for the project you want to upload data to.
4. XML reports exported from CVi 42 for CMR studies you want to process.

## Step 1: Launch the App

1. Open RStudio and navigate to the directory where the `app.R` file is located.
2. Open the `app.R` file and click the "Run App" button in the top-right corner of the script editor pane.

<img width="826" alt="image" src="https://github.com/user-attachments/assets/4efc1c62-2589-4042-a5e8-b293129a558f">

## Step 2: Upload Files

1. In the sidebar panel, click the "Browse..." button next to "1. Upload Redcap Data Import Template (csv)" and select the REDCap Data Import Template CSV file.
2. Click the "Browse..." button next to "2. Select CMR Reports (xml)" and select one or more XML reports exported from CVi 42.

<img width="1033" alt="image" src="https://github.com/user-attachments/assets/92b13ad9-e178-4f25-98a9-d6c36db44259">

## Step 3: Process the Files

1. After uploading the necessary files, click the "Process" button in the sidebar panel.
2. The app will start processing the XML files and display a progress bar.
3. Once the processing is complete, a message will be displayed indicating the number of reports that have been uploaded.

## Step 4: Download the Processed Data

1. In the "Processing" tab, click the "CSV" button to download the processed data in CSV format.
2. The downloaded file will be named `cviData_YYYYMMDD-HHMM.csv`, where `YYYYMMDD-HHMM` represents the current date and time.

## Step 5: View Raw CMR Data (Optional)

1. Switch to the "Raw CMR Data" tab to view the raw CMR data in a table format.

## Step 6: View Patient Names (Optional)

1. Switch to the "Patient names" tab to view a table containing the record IDs and patient names extracted from the XML files.
2. Click the "CSV" button to download the patient names in CSV format.

## Notes

- Make sure to comply with any local regulations on the use of patient data by properly anonymizing CMR studies on CVi prior to exporting or uploading the XML files.
- The app assumes that the XML files are exported from CVi 42 and follow the expected structure.
- The `process_xml.sh` and `xml_handler.R` scripts are required for the app to function correctly. These scripts should be located in the same directory as the `app.R` file.

That's it! You should now be able to use the cviBaker app to process XML reports from CVi 42 and prepare the data for upload to a REDCap server.

# About
This was developed by me (Giandomenico Bisaccia) as part of a PhD project at the University of Chieti-Pescara, Italy and Royal Brompton and Harefield Hospitals, London, UK. To learn more about my work and get in touch, please visit my [website](https://bisacciamd.com).
