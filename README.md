🚧 Under construction, please handle with care

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

cviBaker is a Shiny app that processes XML reports exported from CVi42 and creates a CSV file suitable for upload to a paired REDCap server. This tutorial will guide you through the steps to use this app.

## Prerequisites

Before using cviBaker, ensure that you have the following:

1. R and RStudio installed on your system.
2. The necessary R packages installed (`shiny`, `shinyWidgets`, `shinyjs`, `dplyr`, `gt`, `gtExtras`, `gtsummary`, `bslib`, and `readr`).
3. A [compatible](compatibility.md) REDCap Data Import Template (CSV file) for the project you want to upload data to.
4. XML reports exported from CVi 42 for the studies you want to process.

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

- Make sure to comply with any local regulations on the use of patient data by properly anonymizing studies on CVi prior to exporting or uploading the XML files.
- The app assumes that the XML files are exported from CVi 42 and follow the expected structure.
- The `process_xml.sh` and `xml_handler.R` scripts are required for the app to function correctly. These scripts should be located in the same directory as the `app.R` file.

That's it! You should now be able to use the cviBaker app to process XML reports from CVi 42 and prepare the data for upload to a REDCap server.

# Variables processed
Find below the list of all variables currently processed:

| Variable Name | Description |
|----------------|--------------|
| procedure_name | Name of the procedure |
| record_id | Patient record ID |
| nhs_number | NHS number of the patient |
| date_of_birth | Patient's date of birth |
| gender | Patient's gender (1 = Male, 2 = Female) |
| height | Patient's height |
| weight | Patient's weight |
| date_cmr | Date of CMR scan |
| hr_cmr | Heart rate during CMR scan |
| lvedv_cmr | Left ventricular end-diastolic volume |
| lvesv_cmr | Left ventricular end-systolic volume |
| lvsv_cmr | Left ventricular stroke volume |
| lvef_cmr | Left ventricular ejection fraction |
| lv_mass_cmr | Left ventricular mass |
| rvedv_cmr | Right ventricular end-diastolic volume |
| rvesv_cmr | Right ventricular end-systolic volume |
| rvsv_cmr | Right ventricular stroke volume |
| rvef_cmr | Right ventricular ejection fraction |
| mapselat_cmr | Lateral mitral annular plane systolic excursion |
| tapse_cmr | Tricuspid annular plane systolic excursion |
| min_la_vol_cmr | Minimum left atrial volume |
| max_la_vol_cmr | Maximum left atrial volume |
| la_ef_cmr | Left atrial ejection fraction |
| average_la_long_axis_strain_cmr | Average left atrial long axis strain |
| average_la_long_axis_difference_cmr | Average left atrial long axis difference |
| sax_gcs_cmr | Short-axis global circumferential strain |
| sax_grs_cmr | Short-axis global radial strain |
| lax_gls_cmr | Long-axis global longitudinal strain |
| lax_grs_cmr | Long-axis global radial strain |
| total_forward_volume_ao_cmr | Total forward volume in the aorta |
| total_backward_volume_ao_cmr | Total backward volume in the aorta |
| total_volume_ao_cmr | Total volume in the aorta |
| regurgitation_fraction_ao_cmr | Regurgitation fraction in the aorta |
| vol_min_ao_cmr | Minimum volume in the aorta |
| max_pressure_gradient_ao_cmr | Maximum pressure gradient in the aorta |
| mean_pressure_gradient_ao_cmr | Mean pressure gradient in the aorta |
| maximum_velocity_ao_cmr | Maximum velocity in the aorta |
| total_forward_volume_pa_cmr | Total forward volume in the pulmonary artery |
| total_backward_volume_pa_cmr | Total backward volume in the pulmonary artery |
| total_volume_pa_cmr | Total volume in the pulmonary artery |
| regurgitation_fraction_pa_cmr | Regurgitation fraction in the pulmonary artery |
| vol_min_pa_cmr | Minimum volume in the pulmonary artery |
| max_pressure_gradient_pa_cmr | Maximum pressure gradient in the pulmonary artery |
| mean_pressure_gradient_pa_cmr | Mean pressure gradient in the pulmonary artery |
| maximum_velocity_pa_cmr | Maximum velocity in the pulmonary artery |
| qp_qs_cmr | Ratio of pulmonary to systemic flow |
| peak_strain_radial_1 to peak_strain_radial_16 | Peak radial strain in 16 segments of the left ventricle |
| peak_strain_circumferential_1 to peak_strain_circumferential_16 | Peak circumferential strain in 16 segments of the left ventricle |
| peak_strain_longitudinal_1 to peak_strain_longitudinal_16 | Peak longitudinal strain in 16 segments of the left ventricle |
| time_to_peak_radial_1 to time_to_peak_radial_16 | Time to peak radial strain in 16 segments of the left ventricle |
| time_to_peak_circumferential_1 to time_to_peak_circumferential_16 | Time to peak circumferential strain in 16 segments of the left ventricle |
| time_to_peak_longitudinal_1 to time_to_peak_longitudinal_16 | Time to peak longitudinal strain in 16 segments of the left ventricle |
| peak_systolic_strain_rate_radial_1 to peak_systolic_strain_rate_radial_16 | Peak systolic radial strain rate in 16 segments of the left ventricle |
| peak_systolic_strain_rate_circumferential_1 to peak_systolic_strain_rate_circumferential_16 | Peak systolic circumferential strain rate in 16 segments of the left ventricle |
| peak_systolic_strain_rate_longitudinal_1 to peak_systolic_strain_rate_longitudinal_16 | Peak systolic longitudinal strain rate in 16 segments of the left ventricle |
| peak_diastolic_strain_rate_radial_1 to peak_diastolic_strain_rate_radial_16 | Peak diastolic radial strain rate in 16 segments of the left ventricle |
| peak_diastolic_strain_rate_circumferential_1 to peak_diastolic_strain_rate_circumferential_16 | Peak diastolic circumferential strain rate in 16 segments of the left ventricle |
| peak_diastolic_strain_rate_longitudinal_1 to peak_diastolic_strain_rate_longitudinal_16 | Peak diastolic longitudinal strain rate in 16 segments of the left ventricle |
| peak_displacement_radial_1 to peak_displacement_radial_16 | Peak radial displacement in 16 segments of the left ventricle |
| peak_displacement_circumferential_1 to peak_displacement_circumferential_16 | Peak circumferential displacement in 16 segments of the left ventricle |
| peak_displacement_longitudinal_1 to peak_displacement_longitudinal_16 | Peak longitudinal displacement in 16 segments of the left ventricle |
| peak_systolic_velocity_radial_1 to peak_systolic_velocity_radial_16 | Peak systolic radial velocity in 16 segments of the left ventricle |
| peak_systolic_velocity_circumferential_1 to peak_systolic_velocity_circumferential_16 | Peak systolic circumferential velocity in 16 segments of the left ventricle |
| peak_systolic_velocity_longitudinal_1 to peak_systolic_velocity_longitudinal_16 | Peak systolic longitudinal velocity in 16 segments of the left ventricle |
| peak_diastolic_velocity_radial_1 to peak_diastolic_velocity_radial_16 | Peak diastolic radial velocity in 16 segments of the left ventricle |
| peak_diastolic_velocity_circumferential_1 to peak_diastolic_velocity_circumferential_16 | Peak diastolic circumferential velocity in 16 segments of the left ventricle |
| peak_diastolic_velocity_longitudinal_1 to peak_diastolic_velocity_longitudinal_16 | Peak diastolic longitudinal velocity in 16 segments of the left ventricle |

# About
This was developed by me (Giandomenico Bisaccia) as part of a PhD project at the University of Chieti-Pescara, Italy and Royal Brompton and Harefield Hospitals, London, UK. To learn more about my work and get in touch, please visit my [website](https://bisacciamd.com).
