library(xml2)
library(XML)
library(readr)
require(tidyverse)
library(xmlconvert)
library(dplyr)

toredcap <- script_env$toredcap
nms <- script_env$nms
filelist <- readLines("filelist.txt")

for (file in filelist) {
  patient <- as_list(read_xml(file))
  patient_df <- tibble::as_tibble(patient) # %>%
  #  unnest_longer(Report,names_repair = "universal") # unneeded
  name <- attr(patient_df$Report$Patient$Name, which = "val")
  procedure_name <- attr(patient_df$Report$Study$StudyDescription, which = "val")
  record_id <- attr(patient_df$Report$Patient$PatientID, which = "val")
  nhs_number <- attr(patient_df$Report$Patient$RETIRED_OtherPatientIDs, which = "val")
  date_of_birth <- attr(patient_df$Report$Patient$BirthDate, which = "val")
  gender <- attr(patient_df$Report$Patient$Sex, which = "val")
  height <- attr(patient_df$Report$Patient$Height, which = "val")
  weight <- attr(patient_df$Report$Patient$Weight, which = "val")
  date_cmr <- attr(patient_df$Report$Study$StudyDate, which = "val")
  hr_cmr <- attr(patient_df$Report$Patient$HeartRate, which = "val")
  lvedv_cmr <- attr(patient_df$Report$SAX3DFunction$LV$EDV, which = "val")
  lvesv_cmr <- attr(patient_df$Report$SAX3DFunction$LV$ESV, which = "val")
  lvsv_cmr <- attr(patient_df$Report$SAX3DFunction$LV$SV, which = "val")
  lvef_cmr <- attr(patient_df$Report$SAX3DFunction$LV$EF, which = "val")
  lv_mass_cmr <- attr(patient_df$Report$SAX3DFunction$LV$MyoMass_diast, which = "val")
  rvedv_cmr <- attr(patient_df$Report$SAX3DFunction$RV$EDV, which = "val")
  rvesv_cmr <- attr(patient_df$Report$SAX3DFunction$RV$ESV, which = "val")
  rvsv_cmr <- attr(patient_df$Report$SAX3DFunction$RV$SV, which = "val")
  rvef_cmr <- attr(patient_df$Report$SAX3DFunction$RV$EF, which = "val")
  # mapseinf_cmr <- attr(patient_df$Report$LvFunction$Monoplanar2CV$Mapse, which = "val")
  # mapseant_cmr <- attr(patient_df$Report$LvFunction$Monoplanar2CV$Mapse[2], which = "val") # no way to derive anterior + septal MAPSE
  mapselat_cmr <- attr(patient_df$Report$BiTriPlanarFunction$Monoplanar4CV$Mapse, which = "val")

  # mapsesep_cmr	<- attr(patient_df$Report$LvFunction$Monoplanar4CV$Mapse[2], which = "val") # no way to derive anterior + septal MAPSE
  tapse_cmr <- attr(patient_df$Report$BiTriPlanarFunction$Monoplanar4CV$Tapse, which = "val")
  min_la_vol_cmr <- attr(patient_df$Report$BiTriPlanarFunction$Biplanar$MinLeftAtrialVolume, which = "val")
  max_la_vol_cmr <- attr(patient_df$Report$BiTriPlanarFunction$Biplanar$MaxLeftAtrialVolume, which = "val")
  la_ef_cmr <- attr(patient_df$Report$BiTriPlanarFunction$Biplanar$LeftAtrialEjectionFraction, which = "val")

  # average_lv_long_axis_strain_cmr <- attr(patient_df$, which = "val")
  # average_lv_long_axis_difference_cmr <- attr(patient_df$Report$, which = "val")
  average_la_long_axis_strain_cmr <- attr(patient_df$Report$BiTriPlanarFunction$Biplanar$AverageLeftAtrialLaxStrain, which = "val")
  average_la_long_axis_difference_cmr <- attr(patient_df$Report$BiTriPlanarFunction$Biplanar$AverageLeftAtrialLaxDifference, which = "val")
  # lv_long_axis_strain_2ch_cmr <- attr(patient_df$Report$, which = "val")
  # lv_long_axis_difference_2ch_cmr <- attr(patient_df$Report$, which = "val")

  # la_long_axis_strain_2ch_cmr <- attr(patient_df$Report$BiTriPlanarFunction$Biplanar$, which = "val")

  # la_long_axis_difference_2ch_cmr <- attr(patient_df$Report$BiTriPlanarFunction$Monoplanar2CV$, which = "val")
  # la_av_junction_strain_2ch_cmr <- attr(patient_df$Report$BiTriPlanarFunction$AtrialStrain$Atrium$AtrioVentricularJunctionStrain, which = "val")
  # la_av_junction_difference_2ch_cmr <- attr(patient_df$Report$BiTriPlanarFunction$AtrialStrain$Atrium$AtrioVentricularJunctionDifference, which = "val")
  # lv_la_strain_4ch_cmr <- attr(patient_df$Report$, which = "val")
  # la_la_strain_4ch_cmr <- attr(patient_df$Report$BiTriPlanarFunction$LongAxisStrainGraphResults$frame$LeftAtrioVentricular4CvStrain, which = "val")
  # lv_la_difference_4ch_cmr <- attr(patient_df$Report$, which = "val")
  # la_la_difference_4ch_cmr <- attr(patient_df$Report$BiTriPlanarFunction$AtrialStrain$Atrium$LaxDifference, which = "val")
  # ra_la_strain_4ch_cmr <- attr(patient_df$Report$BiTriPlanarFunction$, which = "val")
  # ra_la_difference_4ch_cmr <- attr(patient_df$Report$, which = "val")
  # la_av_junction_strain_4ch_cmr <- attr(patient_df$Report$, which = "val")
  # la_av_junction_difference_4ch_cmr <- attr(patient_df$Report$, which = "val")
  sax_gcs_cmr <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_2DGlobalResults$SAX_GlobalPeakStrainCircumferential, which = "val")
  sax_grs_cmr <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_2DGlobalResults$SAX_GlobalPeakStrainRadial, which = "val")
  lax_gls_cmr <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_2DGlobalResults$LAX_GlobalPeakStrainLongitudinal, which = "val")
  lax_grs_cmr <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_2DGlobalResults$LAX_GlobalPeakStrainRadial, which = "val")

  total_forward_volume_ao_cmr <- attr(patient_df$Report$FlowComparisonReport$FLOW1$FlowReport$Analysis$ROI$FlowVolume$Forward, which = "val")
  total_backward_volume_ao_cmr <- attr(patient_df$Report$FlowComparisonReport$FLOW1$FlowReport$Analysis$ROI$FlowVolume$Backward, which = "val")
  total_volume_ao_cmr <- attr(patient_df$Report$FlowComparisonReport$FLOW1$FlowReport$Analysis$ROI$FlowVolume$Total, which = "val")
  regurgitation_fraction_ao_cmr <- attr(patient_df$Report$FlowComparisonReport$FLOW1$FlowReport$Analysis$ROI$RegurgitationFraction, which = "val")
  vol_min_ao_cmr <- attr(patient_df$Report$FlowComparisonReport$FLOW1$FlowReport$Analysis$ROI$MINVOL, which = "val")
  max_pressure_gradient_ao_cmr <- attr(patient_df$Report$FlowComparisonReport$FLOW1$FlowReport$Analysis$ROI$MaxPressureGradient, which = "val")
  mean_pressure_gradient_ao_cmr <- attr(patient_df$Report$FlowComparisonReport$FLOW1$FlowReport$Analysis$ROI$MeanPressureGradient, which = "val")
  maximum_velocity_ao_cmr <- attr(patient_df$Report$FlowComparisonReport$FLOW1$FlowReport$Analysis$ROI$VelocityExtrema, which = "max")

  # mr_cmr <- attr(patient_df$Report$, which = "val")
  # mr_fraction_cmr <- attr(patient_df$Report$, which = "val")
  # mr_vol_cmr <- attr(patient_df$Report$, which = "val")

  total_forward_volume_pa_cmr <- attr(patient_df$Report$FlowComparisonReport$FLOW2$FlowReport$Analysis$ROI$FlowVolume$Forward, which = "val")
  total_backward_volume_pa_cmr <- attr(patient_df$Report$FlowComparisonReport$FLOW2$FlowReport$Analysis$ROI$FlowVolume$Backward, which = "val")
  total_volume_pa_cmr <- attr(patient_df$Report$FlowComparisonReport$FLOW2$FlowReport$Analysis$ROI$FlowVolume$Total, which = "val")
  regurgitation_fraction_pa_cmr <- attr(patient_df$Report$FlowComparisonReport$FLOW2$FlowReport$Analysis$ROI$RegurgitationFraction, which = "val")
  vol_min_pa_cmr <- attr(patient_df$Report$FlowComparisonReport$FLOW2$FlowReport$Analysis$ROI$MINVOL, which = "val")
  max_pressure_gradient_pa_cmr <- attr(patient_df$Report$FlowComparisonReport$FLOW2$FlowReport$Analysis$ROI$MaxPressureGradient, which = "val")
  mean_pressure_gradient_pa_cmr <- attr(patient_df$Report$FlowComparisonReport$FLOW2$FlowReport$Analysis$ROI$MeanPressureGradient, which = "val")
  maximum_velocity_pa_cmr <- attr(patient_df$Report$FlowComparisonReport$FLOW2$FlowReport$Analysis$ROI$VelocityExtrema, which = "max")

  # tr_cmr <- attr(patient_df$Report$, which = "val")
  # tr_fraction_cmr <- attr(patient_df$Report$, which = "val")
  # tr_vol_cmr <- attr(patient_df$Report$, which = "val")

  qp_qs_cmr <- attr(patient_df$Report$FlowComparisonReport$Comparison_FLOW1_FLOW2$Ratio_TotalVolume_FLOW2_FLOW1, which = "val")

  cmr <- data.frame(
    procedure_name,
    record_id,
    nhs_number,
    date_of_birth,
    gender,
    height,
    weight,
    date_cmr,
    hr_cmr,
    lvedv_cmr,
    lvesv_cmr,
    lvsv_cmr,
    lvef_cmr,
    lv_mass_cmr,
    rvedv_cmr,
    rvesv_cmr,
    rvsv_cmr,
    rvef_cmr,
    # mapseinf_cmr,
    # mapseant_cmr,
    mapselat_cmr,
    # mapsesep_cmr,
    tapse_cmr,
    min_la_vol_cmr,
    max_la_vol_cmr,
    la_ef_cmr,
    # average_lv_long_axis_strain_cmr, average_lv_long_axis_difference_cmr,average_la_long_axis_strain_cmr,average_la_long_axis_difference_cmr,lv_long_axis_strain_2ch_cmr,lv_long_axis_difference_2ch_cmr,la_long_axis_strain_2ch_cmr,la_long_axis_difference_2ch_cmr,la_av_junction_strain_2ch_cmr,la_av_junction_difference_2ch_cmr,lv_la_strain_4ch_cmr,la_la_strain_4ch_cmr,lv_la_difference_4ch_cmr,la_la_difference_4ch_cmr,ra_la_strain_4ch_cmr,ra_la_difference_4ch_cmr,la_av_junction_strain_4ch_cmr,la_av_junction_difference_4ch_cmr,
    sax_gcs_cmr, sax_grs_cmr, lax_gls_cmr, lax_grs_cmr,
    total_forward_volume_ao_cmr,
    total_backward_volume_ao_cmr,
    total_volume_ao_cmr,
    regurgitation_fraction_ao_cmr,
    vol_min_ao_cmr,
    max_pressure_gradient_ao_cmr,
    mean_pressure_gradient_ao_cmr,
    maximum_velocity_ao_cmr,
    # mr_cmr, mr_fraction_cmr, mr_vol_cmr,
    total_forward_volume_pa_cmr,
    total_backward_volume_pa_cmr,
    total_volume_pa_cmr,
    regurgitation_fraction_pa_cmr,
    vol_min_pa_cmr,
    max_pressure_gradient_pa_cmr,
    mean_pressure_gradient_pa_cmr,
    maximum_velocity_pa_cmr,
    # tr_cmr, tr_fraction_cmr, tr_vol_cmr,
    qp_qs_cmr
  )


  if (cmr$gender == "M") cmr$gender <- "1" else cmr$gender <- "2"

  nm <- data.frame(record_id, name)

  # Check for missing columns in toredcap
  missing_columns <- setdiff(names(cmr), names(toredcap))

  # Add missing columns to toredcap with NA values (adjust data type as needed)
  for (col_name in missing_columns) {
    toredcap[[col_name]] <- ""
  }

  toredcap <- toredcap %>%
    rows_insert(cmr, by = "record_id", copy = TRUE, conflict = "ignore")

  nms <- nms %>%
    rows_insert(nm, by = "record_id", copy = TRUE, conflict = "ignore")
}

toredcap$record_id <- toredcap$record_id
# toredcap$record_id <- NULL

# Save output_data to a file or database
# source("var_handler.r")
write_csv(toredcap, "toredcap_nanull.csv", na = "")

common_vars <- intersect(names(toredcap), names(cmr))
cmrdata <- toredcap[, common_vars]

toredcap <<- toredcap
nms <<- nms
