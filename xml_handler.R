library(xml2)
library(XML)
library(readr)
require(tidyverse)
library(xmlconvert)
library(dplyr)

toredcap <- script_env$toredcap
nms <- script_env$nms
filelist <-  readLines("filelist.txt")

for (file in filelist) {

  patient <- as_list(read_xml(file))
  patient_df <- tibble::as_tibble(patient) # %>%
  #  unnest_longer(Report,names_repair = "universal") # unneeded
  name	<- attr(patient_df$Report$Patient$Name, which = "val")
  procedure_name <- attr(patient_df$Report$Study$StudyDescription, which="val")
  record_id	<- attr(patient_df$Report$Patient$PatientID, which = "val")
  nhs_number	<- attr(patient_df$Report$Patient$RETIRED_OtherPatientIDs, which = "val")
  date_of_birth	<- attr(patient_df$Report$Patient$BirthDate, which = "val")
  gender	<- attr(patient_df$Report$Patient$Sex, which = "val")
  height	<- attr(patient_df$Report$Patient$Height, which = "val")
  weight	<- attr(patient_df$Report$Patient$Weight, which = "val")
  date_cmr	<- attr(patient_df$Report$Study$StudyDate, which = "val")
  hr_cmr	<- attr(patient_df$Report$Patient$HeartRate, which = "val")
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
  mapselat_cmr	<- attr(patient_df$Report$BiTriPlanarFunction$Monoplanar4CV$Mapse, which = "val")
  
  # mapsesep_cmr	<- attr(patient_df$Report$LvFunction$Monoplanar4CV$Mapse[2], which = "val") # no way to derive anterior + septal MAPSE
  tapse_cmr <- attr(patient_df$Report$BiTriPlanarFunction$Monoplanar4CV$Tapse, which = "val")
  min_la_vol_cmr <- attr(patient_df$Report$BiTriPlanarFunction$Biplanar$MinLeftAtrialVolume, which = "val")
  max_la_vol_cmr <- attr(patient_df$Report$BiTriPlanarFunction$Biplanar$MaxLeftAtrialVolume, which = "val")
  la_ef_cmr <- attr(patient_df$Report$BiTriPlanarFunction$Biplanar$LeftAtrialEjectionFraction, which = "val")
  
  #average_lv_long_axis_strain_cmr <- attr(patient_df$, which = "val")
  # average_lv_long_axis_difference_cmr <- attr(patient_df$Report$, which = "val")
  average_la_long_axis_strain_cmr <- attr(patient_df$Report$BiTriPlanarFunction$Biplanar$AverageLeftAtrialLaxStrain, which = "val")
  average_la_long_axis_difference_cmr <- attr(patient_df$Report$BiTriPlanarFunction$Biplanar$AverageLeftAtrialLaxDifference, which = "val")
  # lv_long_axis_strain_2ch_cmr <- attr(patient_df$Report$, which = "val")
  # lv_long_axis_difference_2ch_cmr <- attr(patient_df$Report$, which = "val")
  
  #la_long_axis_strain_2ch_cmr <- attr(patient_df$Report$BiTriPlanarFunction$Biplanar$, which = "val")
  
  #la_long_axis_difference_2ch_cmr <- attr(patient_df$Report$BiTriPlanarFunction$Monoplanar2CV$, which = "val")
  #la_av_junction_strain_2ch_cmr <- attr(patient_df$Report$BiTriPlanarFunction$AtrialStrain$Atrium$AtrioVentricularJunctionStrain, which = "val")
  #la_av_junction_difference_2ch_cmr <- attr(patient_df$Report$BiTriPlanarFunction$AtrialStrain$Atrium$AtrioVentricularJunctionDifference, which = "val")
  # lv_la_strain_4ch_cmr <- attr(patient_df$Report$, which = "val")
  #la_la_strain_4ch_cmr <- attr(patient_df$Report$BiTriPlanarFunction$LongAxisStrainGraphResults$frame$LeftAtrioVentricular4CvStrain, which = "val")
  # lv_la_difference_4ch_cmr <- attr(patient_df$Report$, which = "val")
  #la_la_difference_4ch_cmr <- attr(patient_df$Report$BiTriPlanarFunction$AtrialStrain$Atrium$LaxDifference, which = "val")
  #ra_la_strain_4ch_cmr <- attr(patient_df$Report$BiTriPlanarFunction$, which = "val")
  #ra_la_difference_4ch_cmr <- attr(patient_df$Report$, which = "val")
  #la_av_junction_strain_4ch_cmr <- attr(patient_df$Report$, which = "val")
  #la_av_junction_difference_4ch_cmr <- attr(patient_df$Report$, which = "val")
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
  
  #tr_cmr <- attr(patient_df$Report$, which = "val")
  #tr_fraction_cmr <- attr(patient_df$Report$, which = "val")
  #tr_vol_cmr <- attr(patient_df$Report$, which = "val")
  
  qp_qs_cmr <- attr(patient_df$Report$FlowComparisonReport$Comparison_FLOW1_FLOW2$Ratio_TotalVolume_FLOW2_FLOW1, which = "val")
  
  #basal_peak_strain_radial <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_3DGlobalResults$Basal, which = "PeakStrainRadial")
  #mid_peak_strain_radial <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_3DGlobalResults$Mid, which = "PeakStrainRadial")
  #apical_peak_strain_radial <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_3DGlobalResults$Apical, which = "PeakStrainRadial")
  #global_peak_strain_radial <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_3DGlobalResults$Global, which = "PeakStrainRadial")
  peak_strain_radial_1 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainRadial$ahaSeg1, which = "val")
  peak_strain_radial_2 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainRadial$ahaSeg2, which = "val")
  peak_strain_radial_3 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainRadial$ahaSeg3, which = "val")
  peak_strain_radial_4 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainRadial$ahaSeg4, which = "val")
  peak_strain_radial_5 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainRadial$ahaSeg5, which = "val")
  peak_strain_radial_6 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainRadial$ahaSeg6, which = "val")
  peak_strain_radial_7 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainRadial$ahaSeg7, which = "val")
  peak_strain_radial_8 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainRadial$ahaSeg8, which = "val")
  peak_strain_radial_9 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainRadial$ahaSeg9, which = "val")
  peak_strain_radial_10 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainRadial$ahaSeg10, which = "val")
  peak_strain_radial_11 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainRadial$ahaSeg11, which = "val")
  peak_strain_radial_12 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainRadial$ahaSeg12, which = "val")
  peak_strain_radial_13 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainRadial$ahaSeg13, which = "val")
  peak_strain_radial_14 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainRadial$ahaSeg14, which = "val")
  peak_strain_radial_15 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainRadial$ahaSeg15, which = "val")
  peak_strain_radial_16 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainRadial$ahaSeg16, which = "val")
  #basal_peak_strain_circumferential <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_3DGlobalResults$Basal, which = "PeakStrainCircumferential")
  #mid_peak_strain_circumferential <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_3DGlobalResults$Mid, which = "PeakStrainCircumferential")
  #apical_peak_strain_circumferential <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_2DGlobalResults$Apical, which = "PeakStrainCircumferential")
  #global_peak_strain_circumferential <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_3DGlobalResults$Global, which = "PeakStrainCircumferential")
  peak_strain_circumferential_1 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainCircumferential$ahaSeg1, which = "val")
  peak_strain_circumferential_2 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainCircumferential$ahaSeg2, which = "val")
  peak_strain_circumferential_3 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainCircumferential$ahaSeg3, which = "val")
  peak_strain_circumferential_4 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainCircumferential$ahaSeg4, which = "val")
  peak_strain_circumferential_5 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainCircumferential$ahaSeg5, which = "val")
  peak_strain_circumferential_6 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainCircumferential$ahaSeg6, which = "val")
  peak_strain_circumferential_7 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainCircumferential$ahaSeg7, which = "val")
  peak_strain_circumferential_8 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainCircumferential$ahaSeg8, which = "val")
  peak_strain_circumferential_9 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainCircumferential$ahaSeg9, which = "val")
  peak_strain_circumferential_10 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainCircumferential$ahaSeg10, which = "val")
  peak_strain_circumferential_11 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainCircumferential$ahaSeg11, which = "val")
  peak_strain_circumferential_12 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainCircumferential$ahaSeg12, which = "val")
  peak_strain_circumferential_13 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainCircumferential$ahaSeg13, which = "val")
  peak_strain_circumferential_14 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainCircumferential$ahaSeg14, which = "val")
  peak_strain_circumferential_15 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainCircumferential$ahaSeg15, which = "val")
  peak_strain_circumferential_16 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainCircumferential$ahaSeg16, which = "val")
  #basal_peak_strain_longitudinal <- attr(patient_df$, which = "val")
  #mid_peak_strain_longitudinal <- attr(patient_df$, which = "val")
  #apical_peak_strain_longitudinal <- attr(patient_df$, which = "val")
  #global_peak_strain_longitudinal <- attr(patient_df$, which = "val")
  peak_strain_longitudinal_1 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainLongitudinal$ahaSeg1, which = "val")
  peak_strain_longitudinal_2 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainLongitudinal$ahaSeg2, which = "val")
  peak_strain_longitudinal_3 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainLongitudinal$ahaSeg3, which = "val")
  peak_strain_longitudinal_4 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainLongitudinal$ahaSeg4, which = "val")
  peak_strain_longitudinal_5 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainLongitudinal$ahaSeg5, which = "val")
  peak_strain_longitudinal_6 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainLongitudinal$ahaSeg6, which = "val")
  peak_strain_longitudinal_7 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainLongitudinal$ahaSeg7, which = "val")
  peak_strain_longitudinal_8 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainLongitudinal$ahaSeg8, which = "val")
  peak_strain_longitudinal_9 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainLongitudinal$ahaSeg9, which = "val")
  peak_strain_longitudinal_10 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainLongitudinal$ahaSeg10, which = "val")
  peak_strain_longitudinal_11 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainLongitudinal$ahaSeg11, which = "val")
  peak_strain_longitudinal_12 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainLongitudinal$ahaSeg12, which = "val")
  peak_strain_longitudinal_13 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainLongitudinal$ahaSeg13, which = "val")
  peak_strain_longitudinal_14 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainLongitudinal$ahaSeg14, which = "val")
  peak_strain_longitudinal_15 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainLongitudinal$ahaSeg15, which = "val")
  peak_strain_longitudinal_16 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainLongitudinal$ahaSeg16, which = "val")
  #basal_time_to_peak_radial <- attr(patient_df$, which = "val")
  #mid_time_to_peak_radial <- attr(patient_df$, which = "val")
  #apical_time_to_peak_radial <- attr(patient_df$, which = "val")
  #global_time_to_peak_radial <- attr(patient_df$, which = "val")
  time_to_peak_radial_1 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainRadial$ahaSeg1, which = "val")
  time_to_peak_radial_2 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainRadial$ahaSeg2, which = "val")
  time_to_peak_radial_3 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainRadial$ahaSeg3, which = "val")
  time_to_peak_radial_4 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainRadial$ahaSeg4, which = "val")
  time_to_peak_radial_5 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainRadial$ahaSeg5, which = "val")
  time_to_peak_radial_6 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainRadial$ahaSeg6, which = "val")
  time_to_peak_radial_7 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainRadial$ahaSeg7, which = "val")
  time_to_peak_radial_8 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainRadial$ahaSeg8, which = "val")
  time_to_peak_radial_9 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainRadial$ahaSeg9, which = "val")
  time_to_peak_radial_10 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainRadial$ahaSeg10, which = "val")
  time_to_peak_radial_11 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainRadial$ahaSeg11, which = "val")
  time_to_peak_radial_12 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainRadial$ahaSeg12, which = "val")
  time_to_peak_radial_13 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainRadial$ahaSeg13, which = "val")
  time_to_peak_radial_14 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainRadial$ahaSeg14, which = "val")
  time_to_peak_radial_15 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainRadial$ahaSeg15, which = "val")
  time_to_peak_radial_16 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainRadial$ahaSeg16, which = "val")
  #basal_time_to_peak_circumferential <- attr(patient_df$, which = "val")
  #mid_time_to_peak_circumferential <- attr(patient_df$, which = "val")
  #apical_time_to_peak_circumferential <- attr(patient_df$, which = "val")
  #global_time_to_peak_circumferential <- attr(patient_df$, which = "val")
  time_to_peak_circumferential_1 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainCircumferential$ahaSeg1, which = "val")
  time_to_peak_circumferential_2 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainCircumferential$ahaSeg2, which = "val")
  time_to_peak_circumferential_3 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainCircumferential$ahaSeg3, which = "val")
  time_to_peak_circumferential_4 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainCircumferential$ahaSeg4, which = "val")
  time_to_peak_circumferential_5 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainCircumferential$ahaSeg5, which = "val")
  time_to_peak_circumferential_6 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainCircumferential$ahaSeg6, which = "val")
  time_to_peak_circumferential_7 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainCircumferential$ahaSeg7, which = "val")
  time_to_peak_circumferential_8 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainCircumferential$ahaSeg8, which = "val")
  time_to_peak_circumferential_9 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainCircumferential$ahaSeg9, which = "val")
  time_to_peak_circumferential_10 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainCircumferential$ahaSeg10, which = "val")
  time_to_peak_circumferential_11 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainCircumferential$ahaSeg11, which = "val")
  time_to_peak_circumferential_12 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainCircumferential$ahaSeg12, which = "val")
  time_to_peak_circumferential_13 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainCircumferential$ahaSeg13, which = "val")
  time_to_peak_circumferential_14 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainCircumferential$ahaSeg14, which = "val")
  time_to_peak_circumferential_15 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainCircumferential$ahaSeg15, which = "val")
  time_to_peak_circumferential_16 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainCircumferential$ahaSeg16, which = "val")
  #basal_time_to_peak_longitudinal <- attr(patient_df$, which = "val")
  #mid_time_to_peak_longitudinal <- attr(patient_df$, which = "val")
  #apical_time_to_peak_longitudinal <- attr(patient_df$, which = "val")
  #global_time_to_peak_longitudinal <- attr(patient_df$, which = "val")
  time_to_peak_longitudinal_1 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainLongitudinal$ahaSeg1, which = "val")
  time_to_peak_longitudinal_2 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainLongitudinal$ahaSeg2, which = "val")
  time_to_peak_longitudinal_3 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainLongitudinal$ahaSeg3, which = "val")
  time_to_peak_longitudinal_4 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainLongitudinal$ahaSeg4, which = "val")
  time_to_peak_longitudinal_5 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainLongitudinal$ahaSeg5, which = "val")
  time_to_peak_longitudinal_6 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainLongitudinal$ahaSeg6, which = "val")
  time_to_peak_longitudinal_7 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainLongitudinal$ahaSeg7, which = "val")
  time_to_peak_longitudinal_8 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainLongitudinal$ahaSeg8, which = "val")
  time_to_peak_longitudinal_9 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainLongitudinal$ahaSeg9, which = "val")
  time_to_peak_longitudinal_10 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainLongitudinal$ahaSeg10, which = "val")
  time_to_peak_longitudinal_11 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainLongitudinal$ahaSeg11, which = "val")
  time_to_peak_longitudinal_12 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainLongitudinal$ahaSeg12, which = "val")
  time_to_peak_longitudinal_13 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainLongitudinal$ahaSeg13, which = "val")
  time_to_peak_longitudinal_14 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainLongitudinal$ahaSeg14, which = "val")
  time_to_peak_longitudinal_15 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainLongitudinal$ahaSeg15, which = "val")
  time_to_peak_longitudinal_16 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainLongitudinal$ahaSeg16, which = "val")
  #basal_peak_systolic_strain_rate_radial <- attr(, which = "val")
  #mid_peak_systolic_strain_rate_radial <- attr(patient_df$, which = "val")
  #apical_peak_systolic_strain_rate_radial <- attr(patient_df$, which = "val")
  #global_peak_systolic_strain_rate_radial <- attr(patient_df$, which = "val")
  peak_systolic_strain_rate_radial_1 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateRadial$ahaSeg1, which = "val")
  peak_systolic_strain_rate_radial_2 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateRadial$ahaSeg2, which = "val")
  peak_systolic_strain_rate_radial_3 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateRadial$ahaSeg3, which = "val")
  peak_systolic_strain_rate_radial_4 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateRadial$ahaSeg4, which = "val")
  peak_systolic_strain_rate_radial_5 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateRadial$ahaSeg5, which = "val")
  peak_systolic_strain_rate_radial_6 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateRadial$ahaSeg6, which = "val")
  peak_systolic_strain_rate_radial_7 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateRadial$ahaSeg7, which = "val")
  peak_systolic_strain_rate_radial_8 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateRadial$ahaSeg8, which = "val")
  peak_systolic_strain_rate_radial_9 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateRadial$ahaSeg9, which = "val")
  peak_systolic_strain_rate_radial_10 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateRadial$ahaSeg10, which = "val")
  peak_systolic_strain_rate_radial_11 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateRadial$ahaSeg11, which = "val")
  peak_systolic_strain_rate_radial_12 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateRadial$ahaSeg12, which = "val")
  peak_systolic_strain_rate_radial_13 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateRadial$ahaSeg13, which = "val")
  peak_systolic_strain_rate_radial_14 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateRadial$ahaSeg14, which = "val")
  peak_systolic_strain_rate_radial_15 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateRadial$ahaSeg15, which = "val")
  peak_systolic_strain_rate_radial_16 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateRadial$ahaSeg16, which = "val")
  #basal_peak_systolic_strain_rate_circumferential <- attr(patient_df$, which = "val")
  #mid_peak_systolic_strain_rate_circumferential <- attr(patient_df$, which = "val")
  #apical_peak_systolic_strain_rate_circumferential <- attr(patient_df$, which = "val")
  #global_peak_systolic_strain_rate_circumferential <- attr(patient_df$, which = "val")
  peak_systolic_strain_rate_circumferential_1 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateCircumferential$ahaSeg1, which = "val")
  peak_systolic_strain_rate_circumferential_2 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateCircumferential$ahaSeg2, which = "val")
  peak_systolic_strain_rate_circumferential_3 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateCircumferential$ahaSeg3, which = "val")
  peak_systolic_strain_rate_circumferential_4 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateCircumferential$ahaSeg4, which = "val")
  peak_systolic_strain_rate_circumferential_5 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateCircumferential$ahaSeg5, which = "val")
  peak_systolic_strain_rate_circumferential_6 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateCircumferential$ahaSeg6, which = "val")
  peak_systolic_strain_rate_circumferential_7 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateCircumferential$ahaSeg7, which = "val")
  peak_systolic_strain_rate_circumferential_8 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateCircumferential$ahaSeg8, which = "val")
  peak_systolic_strain_rate_circumferential_9 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateCircumferential$ahaSeg9, which = "val")
  peak_systolic_strain_rate_circumferential_10 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateCircumferential$ahaSeg10, which = "val")
  peak_systolic_strain_rate_circumferential_11 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateCircumferential$ahaSeg11, which = "val")
  peak_systolic_strain_rate_circumferential_12 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateCircumferential$ahaSeg12, which = "val")
  peak_systolic_strain_rate_circumferential_13 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateCircumferential$ahaSeg13, which = "val")
  peak_systolic_strain_rate_circumferential_14 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateCircumferential$ahaSeg14, which = "val")
  peak_systolic_strain_rate_circumferential_15 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateCircumferential$ahaSeg15, which = "val")
  peak_systolic_strain_rate_circumferential_16 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateCircumferential$ahaSeg16, which = "val")
  #basal_peak_systolic_strain_rate_longitudinal <- attr(patient_df$, which = "val")
  #mid_peak_systolic_strain_rate_longitudinal <- attr(patient_df$, which = "val")
  #apical_peak_systolic_strain_rate_longitudinal <- attr(patient_df$, which = "val")
  #global_peak_systolic_strain_rate_longitudinal <- attr(patient_df$, which = "val")
  peak_systolic_strain_rate_longitudinal_1 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateLongitudinal$ahaSeg1, which = "val")
  peak_systolic_strain_rate_longitudinal_2 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateLongitudinal$ahaSeg2, which = "val")
  peak_systolic_strain_rate_longitudinal_3 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateLongitudinal$ahaSeg3, which = "val")
  peak_systolic_strain_rate_longitudinal_4 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateLongitudinal$ahaSeg4, which = "val")
  peak_systolic_strain_rate_longitudinal_5 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateLongitudinal$ahaSeg5, which = "val")
  peak_systolic_strain_rate_longitudinal_6 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateLongitudinal$ahaSeg6, which = "val")
  peak_systolic_strain_rate_longitudinal_7 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateLongitudinal$ahaSeg7, which = "val")
  peak_systolic_strain_rate_longitudinal_8 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateLongitudinal$ahaSeg8, which = "val")
  peak_systolic_strain_rate_longitudinal_9 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateLongitudinal$ahaSeg9, which = "val")
  peak_systolic_strain_rate_longitudinal_10 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateLongitudinal$ahaSeg10, which = "val")
  peak_systolic_strain_rate_longitudinal_11 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateLongitudinal$ahaSeg11, which = "val")
  peak_systolic_strain_rate_longitudinal_12 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateLongitudinal$ahaSeg12, which = "val")
  peak_systolic_strain_rate_longitudinal_13 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateLongitudinal$ahaSeg13, which = "val")
  peak_systolic_strain_rate_longitudinal_14 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateLongitudinal$ahaSeg14, which = "val")
  peak_systolic_strain_rate_longitudinal_15 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateLongitudinal$ahaSeg15, which = "val")
  peak_systolic_strain_rate_longitudinal_16 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateLongitudinal$ahaSeg16, which = "val")
  #basal_peak_diastolic_strain_rate_radial <- attr(patient_df$, which = "val")
  #mid_peak_diastolic_strain_rate_radial <- attr(patient_df$, which = "val")
  #apical_peak_diastolic_strain_rate_radial <- attr(patient_df$, which = "val")
  #global_peak_diastolic_strain_rate_radial <- attr(patient_df$, which = "val")
  peak_diastolic_strain_rate_radial_1 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateRadial$ahaSeg1, which = "val")
  peak_diastolic_strain_rate_radial_2 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateRadial$ahaSeg2, which = "val")
  peak_diastolic_strain_rate_radial_3 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateRadial$ahaSeg3, which = "val")
  peak_diastolic_strain_rate_radial_4 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateRadial$ahaSeg4, which = "val")
  peak_diastolic_strain_rate_radial_5 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateRadial$ahaSeg5, which = "val")
  peak_diastolic_strain_rate_radial_6 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateRadial$ahaSeg6, which = "val")
  peak_diastolic_strain_rate_radial_7 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateRadial$ahaSeg7, which = "val")
  peak_diastolic_strain_rate_radial_8 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateRadial$ahaSeg8, which = "val")
  peak_diastolic_strain_rate_radial_9 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateRadial$ahaSeg9, which = "val")
  peak_diastolic_strain_rate_radial_10 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateRadial$ahaSeg10, which = "val")
  peak_diastolic_strain_rate_radial_11 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateRadial$ahaSeg11, which = "val")
  peak_diastolic_strain_rate_radial_12 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateRadial$ahaSeg12, which = "val")
  peak_diastolic_strain_rate_radial_13 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateRadial$ahaSeg13, which = "val")
  peak_diastolic_strain_rate_radial_14 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateRadial$ahaSeg14, which = "val")
  peak_diastolic_strain_rate_radial_15 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateRadial$ahaSeg15, which = "val")
  peak_diastolic_strain_rate_radial_16 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateRadial$ahaSeg16, which = "val")
  #basal_peak_diastolic_strain_rate_circumferential <- attr(patient_df$, which = "val")
  #mid_peak_diastolic_strain_rate_circumferential <- attr(patient_df$, which = "val")
  #apical_peak_diastolic_strain_rate_circumferential <- attr(patient_df$, which = "val")
  #global_peak_diastolic_strain_rate_circumferential <- attr(patient_df$, which = "val")
  peak_diastolic_strain_rate_circumferential_1 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateCircumferential$ahaSeg1, which = "val")
  peak_diastolic_strain_rate_circumferential_2 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateCircumferential$ahaSeg2, which = "val")
  peak_diastolic_strain_rate_circumferential_3 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateCircumferential$ahaSeg3, which = "val")
  peak_diastolic_strain_rate_circumferential_4 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateCircumferential$ahaSeg4, which = "val")
  peak_diastolic_strain_rate_circumferential_5 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateCircumferential$ahaSeg5, which = "val")
  peak_diastolic_strain_rate_circumferential_6 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateCircumferential$ahaSeg6, which = "val")
  peak_diastolic_strain_rate_circumferential_7 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateCircumferential$ahaSeg7, which = "val")
  peak_diastolic_strain_rate_circumferential_8 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateCircumferential$ahaSeg8, which = "val")
  peak_diastolic_strain_rate_circumferential_9 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateCircumferential$ahaSeg9, which = "val")
  peak_diastolic_strain_rate_circumferential_10 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateCircumferential$ahaSeg10, which = "val")
  peak_diastolic_strain_rate_circumferential_11 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateCircumferential$ahaSeg11, which = "val")
  peak_diastolic_strain_rate_circumferential_12 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateCircumferential$ahaSeg12, which = "val")
  peak_diastolic_strain_rate_circumferential_13 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateCircumferential$ahaSeg13, which = "val")
  peak_diastolic_strain_rate_circumferential_14 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateCircumferential$ahaSeg14, which = "val")
  peak_diastolic_strain_rate_circumferential_15 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateCircumferential$ahaSeg15, which = "val")
  peak_diastolic_strain_rate_circumferential_16 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateCircumferential$ahaSeg16, which = "val")
  #basal_peak_diastolic_strain_rate_longitudinal <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_3DGlobalResults$Basal, which = "PeakDiastolicStrainRateLongitudinal")
  #mid_peak_diastolic_strain_rate_longitudinal <- attr(patient_df$, which = "val")
  #apical_peak_diastolic_strain_rate_longitudinal <- attr(patient_df$, which = "val")
  #global_peak_diastolic_strain_rate_longitudinal <- attr(patient_df$, which = "val")
  peak_diastolic_strain_rate_longitudinal_1 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateLongitudinal$ahaSeg1, which = "val")
  peak_diastolic_strain_rate_longitudinal_2 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateLongitudinal$ahaSeg2, which = "val")
  peak_diastolic_strain_rate_longitudinal_3 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateLongitudinal$ahaSeg3, which = "val")
  peak_diastolic_strain_rate_longitudinal_4 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateLongitudinal$ahaSeg4, which = "val")
  peak_diastolic_strain_rate_longitudinal_5 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateLongitudinal$ahaSeg5, which = "val")
  peak_diastolic_strain_rate_longitudinal_6 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateLongitudinal$ahaSeg6, which = "val")
  peak_diastolic_strain_rate_longitudinal_7 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateLongitudinal$ahaSeg7, which = "val")
  peak_diastolic_strain_rate_longitudinal_8 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateLongitudinal$ahaSeg8, which = "val")
  peak_diastolic_strain_rate_longitudinal_9 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateLongitudinal$ahaSeg9, which = "val")
  peak_diastolic_strain_rate_longitudinal_10 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateLongitudinal$ahaSeg10, which = "val")
  peak_diastolic_strain_rate_longitudinal_11 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateLongitudinal$ahaSeg11, which = "val")
  peak_diastolic_strain_rate_longitudinal_12 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateLongitudinal$ahaSeg12, which = "val")
  peak_diastolic_strain_rate_longitudinal_13 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateLongitudinal$ahaSeg13, which = "val")
  peak_diastolic_strain_rate_longitudinal_14 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateLongitudinal$ahaSeg14, which = "val")
  peak_diastolic_strain_rate_longitudinal_15 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateLongitudinal$ahaSeg15, which = "val")
  peak_diastolic_strain_rate_longitudinal_16 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateLongitudinal$ahaSeg16, which = "val")
  #basal_peak_displacement_radial <- attr(patient_df$, which = "val")
  #mid_peak_displacement_radial <- attr(patient_df$, which = "val")
  #apical_peak_displacement_radial <- attr(patient_df$, which = "val")
  #global_peak_displacement_radial <- attr(patient_df$, which = "val")
  peak_displacement_radial_1 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementRadial$ahaSeg1, which = "val")
  peak_displacement_radial_2 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementRadial$ahaSeg2, which = "val")
  peak_displacement_radial_3 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementRadial$ahaSeg3, which = "val")
  peak_displacement_radial_4 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementRadial$ahaSeg4, which = "val")
  peak_displacement_radial_5 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementRadial$ahaSeg5, which = "val")
  peak_displacement_radial_6 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementRadial$ahaSeg6, which = "val")
  peak_displacement_radial_7 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementRadial$ahaSeg7, which = "val")
  peak_displacement_radial_8 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementRadial$ahaSeg8, which = "val")
  peak_displacement_radial_9 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementRadial$ahaSeg9, which = "val")
  peak_displacement_radial_10 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementRadial$ahaSeg10, which = "val")
  peak_displacement_radial_11 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementRadial$ahaSeg11, which = "val")
  peak_displacement_radial_12 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementRadial$ahaSeg12, which = "val")
  peak_displacement_radial_13 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementRadial$ahaSeg13, which = "val")
  peak_displacement_radial_14 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementRadial$ahaSeg14, which = "val")
  peak_displacement_radial_15 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementRadial$ahaSeg15, which = "val")
  peak_displacement_radial_16 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementRadial$ahaSeg16, which = "val")
  #basal_peak_displacement_circumferential <- attr(patient_df$, which = "val")
  #mid_peak_displacement_circumferential <- attr(patient_df$, which = "val")
  #apical_peak_displacement_circumferential <- attr(patient_df$, which = "val")
  #global_peak_displacement_circumferential <- attr(patient_df$, which = "val")
  peak_displacement_circumferential_1 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementCircumferential$ahaSeg1, which = "val")
  peak_displacement_circumferential_2 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementCircumferential$ahaSeg2, which = "val")
  peak_displacement_circumferential_3 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementCircumferential$ahaSeg3, which = "val")
  peak_displacement_circumferential_4 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementCircumferential$ahaSeg4, which = "val")
  peak_displacement_circumferential_5 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementCircumferential$ahaSeg5, which = "val")
  peak_displacement_circumferential_6 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementCircumferential$ahaSeg6, which = "val")
  peak_displacement_circumferential_7 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementCircumferential$ahaSeg7, which = "val")
  peak_displacement_circumferential_8 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementCircumferential$ahaSeg8, which = "val")
  peak_displacement_circumferential_9 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementCircumferential$ahaSeg9, which = "val")
  peak_displacement_circumferential_10 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementCircumferential$ahaSeg10, which = "val")
  peak_displacement_circumferential_11 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementCircumferential$ahaSeg11, which = "val")
  peak_displacement_circumferential_12 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementCircumferential$ahaSeg12, which = "val")
  peak_displacement_circumferential_13 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementCircumferential$ahaSeg13, which = "val")
  peak_displacement_circumferential_14 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementCircumferential$ahaSeg14, which = "val")
  peak_displacement_circumferential_15 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementCircumferential$ahaSeg15, which = "val")
  peak_displacement_circumferential_16 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementCircumferential$ahaSeg16, which = "val")
  #basal_peak_displacement_longitudinal <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_3DGlobalResults$Basal, which = "PeakDisplacementLongitudinal")
  #mid_peak_displacement_longitudinal <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_3DGlobalResults$Mid, which = "PeakDisplacementLongitudinal")
  #apical_peak_displacement_longitudinal <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_3DGlobalResults$Apical, which = "PeakDisplacementLongitudinal")
  #global_peak_displacement_longitudinal <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_3DGlobalResults$Global, which = "PeakDisplacementLongitudinal")
  peak_displacement_longitudinal_1 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementLongitudinal$ahaSeg1, which = "val")
  peak_displacement_longitudinal_2 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementLongitudinal$ahaSeg2, which = "val")
  peak_displacement_longitudinal_3 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementLongitudinal$ahaSeg3, which = "val")
  peak_displacement_longitudinal_4 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementLongitudinal$ahaSeg4, which = "val")
  peak_displacement_longitudinal_5 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementLongitudinal$ahaSeg5, which = "val")
  peak_displacement_longitudinal_6 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementLongitudinal$ahaSeg6, which = "val")
  peak_displacement_longitudinal_7 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementLongitudinal$ahaSeg7, which = "val")
  peak_displacement_longitudinal_8 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementLongitudinal$ahaSeg8, which = "val")
  peak_displacement_longitudinal_9 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementLongitudinal$ahaSeg9, which = "val")
  peak_displacement_longitudinal_10 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementLongitudinal$ahaSeg10, which = "val")
  peak_displacement_longitudinal_11 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementLongitudinal$ahaSeg11, which = "val")
  peak_displacement_longitudinal_12 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementLongitudinal$ahaSeg12, which = "val")
  peak_displacement_longitudinal_13 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementLongitudinal$ahaSeg13, which = "val")
  peak_displacement_longitudinal_14 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementLongitudinal$ahaSeg14, which = "val")
  peak_displacement_longitudinal_15 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementLongitudinal$ahaSeg15, which = "val")
  peak_displacement_longitudinal_16 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementLongitudinal$ahaSeg16, which = "val")
  #basal_peak_systolic_velocity_radial <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_2DGlobalResults$Basal, which = "PeakSystolicVelocityRadial")
  #mid_peak_systolic_velocity_radial <- attr(patient_df$, which = "val")
  #apical_peak_systolic_velocity_radial <- attr(patient_df$, which = "val")
  #global_peak_systolic_velocity_radial <- attr(patient_df$, which = "val")
  peak_systolic_velocity_radial_1 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityRadial$ahaSeg1, which = "val")
  peak_systolic_velocity_radial_2 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityRadial$ahaSeg2, which = "val")
  peak_systolic_velocity_radial_3 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityRadial$ahaSeg3, which = "val")
  peak_systolic_velocity_radial_4 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityRadial$ahaSeg4, which = "val")
  peak_systolic_velocity_radial_5 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityRadial$ahaSeg5, which = "val")
  peak_systolic_velocity_radial_6 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityRadial$ahaSeg6, which = "val")
  peak_systolic_velocity_radial_7 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityRadial$ahaSeg7, which = "val")
  peak_systolic_velocity_radial_8 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityRadial$ahaSeg8, which = "val")
  peak_systolic_velocity_radial_9 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityRadial$ahaSeg9, which = "val")
  peak_systolic_velocity_radial_10 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityRadial$ahaSeg10, which = "val")
  peak_systolic_velocity_radial_11 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityRadial$ahaSeg11, which = "val")
  peak_systolic_velocity_radial_12 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityRadial$ahaSeg12, which = "val")
  peak_systolic_velocity_radial_13 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityRadial$ahaSeg13, which = "val")
  peak_systolic_velocity_radial_14 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityRadial$ahaSeg14, which = "val")
  peak_systolic_velocity_radial_15 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityRadial$ahaSeg15, which = "val")
  peak_systolic_velocity_radial_16 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityRadial$ahaSeg16, which = "val")
  #basal_peak_systolic_velocity_circumferential <- attr(patient_df$, which = "val")
  #mid_peak_systolic_velocity_circumferential <- attr(patient_df$, which = "val")
  #apical_peak_systolic_velocity_circumferential <- attr(patient_df$, which = "val")
  #global_peak_systolic_velocity_circumferential <- attr(patient_df$, which = "val")
  peak_systolic_velocity_circumferential_1 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityCircumferential$ahaSeg1, which = "val")
  peak_systolic_velocity_circumferential_2 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityCircumferential$ahaSeg2, which = "val")
  peak_systolic_velocity_circumferential_3 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityCircumferential$ahaSeg3, which = "val")
  peak_systolic_velocity_circumferential_4 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityCircumferential$ahaSeg4, which = "val")
  peak_systolic_velocity_circumferential_5 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityCircumferential$ahaSeg5, which = "val")
  peak_systolic_velocity_circumferential_6 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityCircumferential$ahaSeg6, which = "val")
  peak_systolic_velocity_circumferential_7 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityCircumferential$ahaSeg7, which = "val")
  peak_systolic_velocity_circumferential_8 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityCircumferential$ahaSeg8, which = "val")
  peak_systolic_velocity_circumferential_9 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityCircumferential$ahaSeg9, which = "val")
  peak_systolic_velocity_circumferential_10 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityCircumferential$ahaSeg10, which = "val")
  peak_systolic_velocity_circumferential_11 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityCircumferential$ahaSeg11, which = "val")
  peak_systolic_velocity_circumferential_12 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityCircumferential$ahaSeg12, which = "val")
  peak_systolic_velocity_circumferential_13 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityCircumferential$ahaSeg13, which = "val")
  peak_systolic_velocity_circumferential_14 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityCircumferential$ahaSeg14, which = "val")
  peak_systolic_velocity_circumferential_15 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityCircumferential$ahaSeg15, which = "val")
  peak_systolic_velocity_circumferential_16 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityCircumferential$ahaSeg16, which = "val")
  #basal_peak_systolic_velocity_longitudinal <- attr(patient_df$, which = "val")
  #mid_peak_systolic_velocity_longitudinal <- attr(patient_df$, which = "val")
  #apical_peak_systolic_velocity_longitudinal <- attr(patient_df$, which = "val")
  #global_peak_systolic_velocity_longitudinal <- attr(patient_df$, which = "val")
  peak_systolic_velocity_longitudinal_1 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityLongitudinal$ahaSeg1, which = "val")
  peak_systolic_velocity_longitudinal_2 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityLongitudinal$ahaSeg2, which = "val")
  peak_systolic_velocity_longitudinal_3 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityLongitudinal$ahaSeg3, which = "val")
  peak_systolic_velocity_longitudinal_4 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityLongitudinal$ahaSeg4, which = "val")
  peak_systolic_velocity_longitudinal_5 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityLongitudinal$ahaSeg5, which = "val")
  peak_systolic_velocity_longitudinal_6 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityLongitudinal$ahaSeg6, which = "val")
  peak_systolic_velocity_longitudinal_7 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityLongitudinal$ahaSeg7, which = "val")
  peak_systolic_velocity_longitudinal_8 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityLongitudinal$ahaSeg8, which = "val")
  peak_systolic_velocity_longitudinal_9 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityLongitudinal$ahaSeg9, which = "val")
  peak_systolic_velocity_longitudinal_10 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityLongitudinal$ahaSeg10, which = "val")
  peak_systolic_velocity_longitudinal_11 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityLongitudinal$ahaSeg11, which = "val")
  peak_systolic_velocity_longitudinal_12 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityLongitudinal$ahaSeg12, which = "val")
  peak_systolic_velocity_longitudinal_13 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityLongitudinal$ahaSeg13, which = "val")
  peak_systolic_velocity_longitudinal_14 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityLongitudinal$ahaSeg14, which = "val")
  peak_systolic_velocity_longitudinal_15 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityLongitudinal$ahaSeg15, which = "val")
  peak_systolic_velocity_longitudinal_16 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityLongitudinal$ahaSeg16, which = "val")
  #basal_peak_diastolic_velocity_radial <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_3DGlobalResults$$LeftVentricle_3DGlobalResults$Basal, which = "PeakDiastolicVelocityRadial")
  #mid_peak_diastolic_velocity_radial <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_3DGlobalResults$Mid, which = "PeakDiastolicVelocityRadial")
  #apical_peak_diastolic_velocity_radial <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_3DGlobalResults$Apical, which = "PeakDiastolicVelocityRadial")
  #global_peak_diastolic_velocity_radial <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_3DGlobalResults$Global, which = "PeakDiastolicVelocityRadial")
  peak_diastolic_velocity_radial_1 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityRadial$ahaSeg1, which = "val")
  peak_diastolic_velocity_radial_2 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityRadial$ahaSeg2, which = "val")
  peak_diastolic_velocity_radial_3 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityRadial$ahaSeg3, which = "val")
  peak_diastolic_velocity_radial_4 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityRadial$ahaSeg4, which = "val")
  peak_diastolic_velocity_radial_5 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityRadial$ahaSeg5, which = "val")
  peak_diastolic_velocity_radial_6 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityRadial$ahaSeg6, which = "val")
  peak_diastolic_velocity_radial_7 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityRadial$ahaSeg7, which = "val")
  peak_diastolic_velocity_radial_8 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityRadial$ahaSeg8, which = "val")
  peak_diastolic_velocity_radial_9 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityRadial$ahaSeg9, which = "val")
  peak_diastolic_velocity_radial_10 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityRadial$ahaSeg10, which = "val")
  peak_diastolic_velocity_radial_11 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityRadial$ahaSeg11, which = "val")
  peak_diastolic_velocity_radial_12 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityRadial$ahaSeg12, which = "val")
  peak_diastolic_velocity_radial_13 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityRadial$ahaSeg13, which = "val")
  peak_diastolic_velocity_radial_14 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityRadial$ahaSeg14, which = "val")
  peak_diastolic_velocity_radial_15 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityRadial$ahaSeg15, which = "val")
  peak_diastolic_velocity_radial_16 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityRadial$ahaSeg16, which = "val")
  #basal_peak_diastolic_velocity_circumferential <- attr(patient_df$, which = "val")
  #mid_peak_diastolic_velocity_circumferential <- attr(patient_df$, which = "val")
  #apical_peak_diastolic_velocity_circumferential <- attr(patient_df$, which = "val")
  #global_peak_diastolic_velocity_circumferential <- attr(patient_df$, which = "val")
  peak_diastolic_velocity_circumferential_1 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityCircumferential$ahaSeg1, which = "val")
  peak_diastolic_velocity_circumferential_2 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityCircumferential$ahaSeg2, which = "val")
  peak_diastolic_velocity_circumferential_3 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityCircumferential$ahaSeg3, which = "val")
  peak_diastolic_velocity_circumferential_4 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityCircumferential$ahaSeg4, which = "val")
  peak_diastolic_velocity_circumferential_5 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityCircumferential$ahaSeg5, which = "val")
  peak_diastolic_velocity_circumferential_6 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityCircumferential$ahaSeg6, which = "val")
  peak_diastolic_velocity_circumferential_7 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityCircumferential$ahaSeg7, which = "val")
  peak_diastolic_velocity_circumferential_8 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityCircumferential$ahaSeg8, which = "val")
  peak_diastolic_velocity_circumferential_9 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityCircumferential$ahaSeg9, which = "val")
  peak_diastolic_velocity_circumferential_10 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityCircumferential$ahaSeg10, which = "val")
  peak_diastolic_velocity_circumferential_11 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityCircumferential$ahaSeg11, which = "val")
  peak_diastolic_velocity_circumferential_12 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityCircumferential$ahaSeg12, which = "val")
  peak_diastolic_velocity_circumferential_13 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityCircumferential$ahaSeg13, which = "val")
  peak_diastolic_velocity_circumferential_14 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityCircumferential$ahaSeg14, which = "val")
  peak_diastolic_velocity_circumferential_15 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityCircumferential$ahaSeg15, which = "val")
  peak_diastolic_velocity_circumferential_16 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityCircumferential$ahaSeg16, which = "val")
  #basal_peak_diastolic_velocity_longitudinal <- attr(patient_df$, which = "val")
  #mid_peak_diastolic_velocity_longitudinal <- attr(patient_df$, which = "val")
  #apical_peak_diastolic_velocity_longitudinal <- attr(patient_df$, which = "val")
  #global_peak_diastolic_velocity_longitudinal <- attr(patient_df$, which = "val")
  peak_diastolic_velocity_longitudinal_1 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityLongitudinal$ahaSeg1, which = "val")
  peak_diastolic_velocity_longitudinal_2 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityLongitudinal$ahaSeg2, which = "val")
  peak_diastolic_velocity_longitudinal_3 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityLongitudinal$ahaSeg3, which = "val")
  peak_diastolic_velocity_longitudinal_4 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityLongitudinal$ahaSeg4, which = "val")
  peak_diastolic_velocity_longitudinal_5 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityLongitudinal$ahaSeg5, which = "val")
  peak_diastolic_velocity_longitudinal_6 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityLongitudinal$ahaSeg6, which = "val")
  peak_diastolic_velocity_longitudinal_7 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityLongitudinal$ahaSeg7, which = "val")
  peak_diastolic_velocity_longitudinal_8 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityLongitudinal$ahaSeg8, which = "val")
  peak_diastolic_velocity_longitudinal_9 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityLongitudinal$ahaSeg9, which = "val")
  peak_diastolic_velocity_longitudinal_10 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityLongitudinal$ahaSeg10, which = "val")
  peak_diastolic_velocity_longitudinal_11 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityLongitudinal$ahaSeg11, which = "val")
  peak_diastolic_velocity_longitudinal_12 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityLongitudinal$ahaSeg12, which = "val")
  peak_diastolic_velocity_longitudinal_13 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityLongitudinal$ahaSeg13, which = "val")
  peak_diastolic_velocity_longitudinal_14 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityLongitudinal$ahaSeg14, which = "val")
  peak_diastolic_velocity_longitudinal_15 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityLongitudinal$ahaSeg15, which = "val")
  peak_diastolic_velocity_longitudinal_16 <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityLongitudinal$ahaSeg16, which = "val")
  
  procedure_name <- replace(procedure_name, is.null(procedure_name), NA)
  record_id <- replace(record_id, is.null(record_id), NA)
  date_of_birth <- replace(date_of_birth, is.null(date_of_birth), NA)
  gender <- replace(gender, is.null(gender), NA)
  height <- replace(height, is.null(height), NA)
  weight <- replace(weight, is.null(weight), NA)
  date_cmr	 <- replace(date_cmr	, is.null(date_cmr	), NA)
  hr_cmr	 <- replace(hr_cmr	, is.null(hr_cmr	), NA)
  lvedv_cmr <- replace(lvedv_cmr, is.null(lvedv_cmr), NA)
  lvesv_cmr <- replace(lvesv_cmr, is.null(lvesv_cmr), NA)
  lvsv_cmr <- replace(lvsv_cmr, is.null(lvsv_cmr), NA)
  lvef_cmr <- replace(lvef_cmr, is.null(lvef_cmr), NA)
  lv_mass_cmr <- replace(lv_mass_cmr, is.null(lv_mass_cmr), NA)
  rvedv_cmr <- replace(rvedv_cmr, is.null(rvedv_cmr), NA)
  rvesv_cmr <- replace(rvesv_cmr, is.null(rvesv_cmr), NA)
  rvsv_cmr <- replace(rvsv_cmr, is.null(rvsv_cmr), NA)
  rvef_cmr <- replace(rvef_cmr, is.null(rvef_cmr), NA)
  #mapseinf_cmr <- replace(#mapseinf_cmr, is.null(#mapseinf_cmr), NA)
  #mapseant_cmr <- replace(#mapseant_cmr, is.null(#mapseant_cmr), NA)
  mapselat_cmr	 <- replace(mapselat_cmr	, is.null(mapselat_cmr	), NA)
  #mapsesep_cmr	 <- replace(#mapsesep_cmr	, is.null(#mapsesep_cmr	), NA)
  tapse_cmr <- replace(tapse_cmr, is.null(tapse_cmr), NA)
  min_la_vol_cmr <- replace(min_la_vol_cmr, is.null(min_la_vol_cmr), NA)
  max_la_vol_cmr <- replace(max_la_vol_cmr, is.null(max_la_vol_cmr), NA)
  la_ef_cmr <- replace(la_ef_cmr, is.null(la_ef_cmr), NA)
  average_la_long_axis_strain_cmr <- replace(average_la_long_axis_strain_cmr, is.null(average_la_long_axis_strain_cmr), NA)
  average_la_long_axis_difference_cmr <- replace(average_la_long_axis_difference_cmr, is.null(average_la_long_axis_difference_cmr), NA)
  sax_gcs_cmr <- replace(sax_gcs_cmr, is.null(sax_gcs_cmr), NA)
  sax_grs_cmr <- replace(sax_grs_cmr, is.null(sax_grs_cmr), NA)
  lax_gls_cmr <- replace(lax_gls_cmr, is.null(lax_gls_cmr), NA)
  lax_grs_cmr <- replace(lax_grs_cmr, is.null(lax_grs_cmr), NA)
  total_forward_volume_ao_cmr <- replace(total_forward_volume_ao_cmr, is.null(total_forward_volume_ao_cmr), NA)
  total_backward_volume_ao_cmr <- replace(total_backward_volume_ao_cmr, is.null(total_backward_volume_ao_cmr), NA)
  total_volume_ao_cmr <- replace(total_volume_ao_cmr, is.null(total_volume_ao_cmr), NA)
  regurgitation_fraction_ao_cmr <- replace(regurgitation_fraction_ao_cmr, is.null(regurgitation_fraction_ao_cmr), NA)
  vol_min_ao_cmr <- replace(vol_min_ao_cmr, is.null(vol_min_ao_cmr), NA)
  max_pressure_gradient_ao_cmr <- replace(max_pressure_gradient_ao_cmr, is.null(max_pressure_gradient_ao_cmr), NA)
  mean_pressure_gradient_ao_cmr <- replace(mean_pressure_gradient_ao_cmr, is.null(mean_pressure_gradient_ao_cmr), NA)
  maximum_velocity_ao_cmr <- replace(maximum_velocity_ao_cmr, is.null(maximum_velocity_ao_cmr), NA)
  total_forward_volume_pa_cmr <- replace(total_forward_volume_pa_cmr, is.null(total_forward_volume_pa_cmr), NA)
  total_backward_volume_pa_cmr <- replace(total_backward_volume_pa_cmr, is.null(total_backward_volume_pa_cmr), NA)
  total_volume_pa_cmr <- replace(total_volume_pa_cmr, is.null(total_volume_pa_cmr), NA)
  regurgitation_fraction_pa_cmr <- replace(regurgitation_fraction_pa_cmr, is.null(regurgitation_fraction_pa_cmr), NA)
  vol_min_pa_cmr <- replace(vol_min_pa_cmr, is.null(vol_min_pa_cmr), NA)
  max_pressure_gradient_pa_cmr <- replace(max_pressure_gradient_pa_cmr, is.null(max_pressure_gradient_pa_cmr), NA)
  mean_pressure_gradient_pa_cmr <- replace(mean_pressure_gradient_pa_cmr, is.null(mean_pressure_gradient_pa_cmr), NA)
  maximum_velocity_pa_cmr <- replace(maximum_velocity_pa_cmr, is.null(maximum_velocity_pa_cmr), NA)
  qp_qs_cmr <- replace(qp_qs_cmr, is.null(qp_qs_cmr), NA)
  peak_strain_radial_1 <- replace(peak_strain_radial_1, is.null(peak_strain_radial_1), NA)
  peak_strain_radial_2 <- replace(peak_strain_radial_2, is.null(peak_strain_radial_2), NA)
  peak_strain_radial_3 <- replace(peak_strain_radial_3, is.null(peak_strain_radial_3), NA)
  peak_strain_radial_4 <- replace(peak_strain_radial_4, is.null(peak_strain_radial_4), NA)
  peak_strain_radial_5 <- replace(peak_strain_radial_5, is.null(peak_strain_radial_5), NA)
  peak_strain_radial_6 <- replace(peak_strain_radial_6, is.null(peak_strain_radial_6), NA)
  peak_strain_radial_7 <- replace(peak_strain_radial_7, is.null(peak_strain_radial_7), NA)
  peak_strain_radial_8 <- replace(peak_strain_radial_8, is.null(peak_strain_radial_8), NA)
  peak_strain_radial_9 <- replace(peak_strain_radial_9, is.null(peak_strain_radial_9), NA)
  peak_strain_radial_10 <- replace(peak_strain_radial_10, is.null(peak_strain_radial_10), NA)
  peak_strain_radial_11 <- replace(peak_strain_radial_11, is.null(peak_strain_radial_11), NA)
  peak_strain_radial_12 <- replace(peak_strain_radial_12, is.null(peak_strain_radial_12), NA)
  peak_strain_radial_13 <- replace(peak_strain_radial_13, is.null(peak_strain_radial_13), NA)
  peak_strain_radial_14 <- replace(peak_strain_radial_14, is.null(peak_strain_radial_14), NA)
  peak_strain_radial_15 <- replace(peak_strain_radial_15, is.null(peak_strain_radial_15), NA)
  peak_strain_radial_16 <- replace(peak_strain_radial_16, is.null(peak_strain_radial_16), NA)
  peak_strain_circumferential_1 <- replace(peak_strain_circumferential_1, is.null(peak_strain_circumferential_1), NA)
  peak_strain_circumferential_2 <- replace(peak_strain_circumferential_2, is.null(peak_strain_circumferential_2), NA)
  peak_strain_circumferential_3 <- replace(peak_strain_circumferential_3, is.null(peak_strain_circumferential_3), NA)
  peak_strain_circumferential_4 <- replace(peak_strain_circumferential_4, is.null(peak_strain_circumferential_4), NA)
  peak_strain_circumferential_5 <- replace(peak_strain_circumferential_5, is.null(peak_strain_circumferential_5), NA)
  peak_strain_circumferential_6 <- replace(peak_strain_circumferential_6, is.null(peak_strain_circumferential_6), NA)
  peak_strain_circumferential_7 <- replace(peak_strain_circumferential_7, is.null(peak_strain_circumferential_7), NA)
  peak_strain_circumferential_8 <- replace(peak_strain_circumferential_8, is.null(peak_strain_circumferential_8), NA)
  peak_strain_circumferential_9 <- replace(peak_strain_circumferential_9, is.null(peak_strain_circumferential_9), NA)
  peak_strain_circumferential_10 <- replace(peak_strain_circumferential_10, is.null(peak_strain_circumferential_10), NA)
  peak_strain_circumferential_11 <- replace(peak_strain_circumferential_11, is.null(peak_strain_circumferential_11), NA)
  peak_strain_circumferential_12 <- replace(peak_strain_circumferential_12, is.null(peak_strain_circumferential_12), NA)
  peak_strain_circumferential_13 <- replace(peak_strain_circumferential_13, is.null(peak_strain_circumferential_13), NA)
  peak_strain_circumferential_14 <- replace(peak_strain_circumferential_14, is.null(peak_strain_circumferential_14), NA)
  peak_strain_circumferential_15 <- replace(peak_strain_circumferential_15, is.null(peak_strain_circumferential_15), NA)
  peak_strain_circumferential_16 <- replace(peak_strain_circumferential_16, is.null(peak_strain_circumferential_16), NA)
  peak_strain_longitudinal_1 <- replace(peak_strain_longitudinal_1, is.null(peak_strain_longitudinal_1), NA)
  peak_strain_longitudinal_2 <- replace(peak_strain_longitudinal_2, is.null(peak_strain_longitudinal_2), NA)
  peak_strain_longitudinal_3 <- replace(peak_strain_longitudinal_3, is.null(peak_strain_longitudinal_3), NA)
  peak_strain_longitudinal_4 <- replace(peak_strain_longitudinal_4, is.null(peak_strain_longitudinal_4), NA)
  peak_strain_longitudinal_5 <- replace(peak_strain_longitudinal_5, is.null(peak_strain_longitudinal_5), NA)
  peak_strain_longitudinal_6 <- replace(peak_strain_longitudinal_6, is.null(peak_strain_longitudinal_6), NA)
  peak_strain_longitudinal_7 <- replace(peak_strain_longitudinal_7, is.null(peak_strain_longitudinal_7), NA)
  peak_strain_longitudinal_8 <- replace(peak_strain_longitudinal_8, is.null(peak_strain_longitudinal_8), NA)
  peak_strain_longitudinal_9 <- replace(peak_strain_longitudinal_9, is.null(peak_strain_longitudinal_9), NA)
  peak_strain_longitudinal_10 <- replace(peak_strain_longitudinal_10, is.null(peak_strain_longitudinal_10), NA)
  peak_strain_longitudinal_11 <- replace(peak_strain_longitudinal_11, is.null(peak_strain_longitudinal_11), NA)
  peak_strain_longitudinal_12 <- replace(peak_strain_longitudinal_12, is.null(peak_strain_longitudinal_12), NA)
  peak_strain_longitudinal_13 <- replace(peak_strain_longitudinal_13, is.null(peak_strain_longitudinal_13), NA)
  peak_strain_longitudinal_14 <- replace(peak_strain_longitudinal_14, is.null(peak_strain_longitudinal_14), NA)
  peak_strain_longitudinal_15 <- replace(peak_strain_longitudinal_15, is.null(peak_strain_longitudinal_15), NA)
  peak_strain_longitudinal_16 <- replace(peak_strain_longitudinal_16, is.null(peak_strain_longitudinal_16), NA)
  time_to_peak_radial_1 <- replace(time_to_peak_radial_1, is.null(time_to_peak_radial_1), NA)
  time_to_peak_radial_2 <- replace(time_to_peak_radial_2, is.null(time_to_peak_radial_2), NA)
  time_to_peak_radial_3 <- replace(time_to_peak_radial_3, is.null(time_to_peak_radial_3), NA)
  time_to_peak_radial_4 <- replace(time_to_peak_radial_4, is.null(time_to_peak_radial_4), NA)
  time_to_peak_radial_5 <- replace(time_to_peak_radial_5, is.null(time_to_peak_radial_5), NA)
  time_to_peak_radial_6 <- replace(time_to_peak_radial_6, is.null(time_to_peak_radial_6), NA)
  time_to_peak_radial_7 <- replace(time_to_peak_radial_7, is.null(time_to_peak_radial_7), NA)
  time_to_peak_radial_8 <- replace(time_to_peak_radial_8, is.null(time_to_peak_radial_8), NA)
  time_to_peak_radial_9 <- replace(time_to_peak_radial_9, is.null(time_to_peak_radial_9), NA)
  time_to_peak_radial_10 <- replace(time_to_peak_radial_10, is.null(time_to_peak_radial_10), NA)
  time_to_peak_radial_11 <- replace(time_to_peak_radial_11, is.null(time_to_peak_radial_11), NA)
  time_to_peak_radial_12 <- replace(time_to_peak_radial_12, is.null(time_to_peak_radial_12), NA)
  time_to_peak_radial_13 <- replace(time_to_peak_radial_13, is.null(time_to_peak_radial_13), NA)
  time_to_peak_radial_14 <- replace(time_to_peak_radial_14, is.null(time_to_peak_radial_14), NA)
  time_to_peak_radial_15 <- replace(time_to_peak_radial_15, is.null(time_to_peak_radial_15), NA)
  time_to_peak_radial_16 <- replace(time_to_peak_radial_16, is.null(time_to_peak_radial_16), NA)
  time_to_peak_circumferential_1 <- replace(time_to_peak_circumferential_1, is.null(time_to_peak_circumferential_1), NA)
  time_to_peak_circumferential_2 <- replace(time_to_peak_circumferential_2, is.null(time_to_peak_circumferential_2), NA)
  time_to_peak_circumferential_3 <- replace(time_to_peak_circumferential_3, is.null(time_to_peak_circumferential_3), NA)
  time_to_peak_circumferential_4 <- replace(time_to_peak_circumferential_4, is.null(time_to_peak_circumferential_4), NA)
  time_to_peak_circumferential_5 <- replace(time_to_peak_circumferential_5, is.null(time_to_peak_circumferential_5), NA)
  time_to_peak_circumferential_6 <- replace(time_to_peak_circumferential_6, is.null(time_to_peak_circumferential_6), NA)
  time_to_peak_circumferential_7 <- replace(time_to_peak_circumferential_7, is.null(time_to_peak_circumferential_7), NA)
  time_to_peak_circumferential_8 <- replace(time_to_peak_circumferential_8, is.null(time_to_peak_circumferential_8), NA)
  time_to_peak_circumferential_9 <- replace(time_to_peak_circumferential_9, is.null(time_to_peak_circumferential_9), NA)
  time_to_peak_circumferential_10 <- replace(time_to_peak_circumferential_10, is.null(time_to_peak_circumferential_10), NA)
  time_to_peak_circumferential_11 <- replace(time_to_peak_circumferential_11, is.null(time_to_peak_circumferential_11), NA)
  time_to_peak_circumferential_12 <- replace(time_to_peak_circumferential_12, is.null(time_to_peak_circumferential_12), NA)
  time_to_peak_circumferential_13 <- replace(time_to_peak_circumferential_13, is.null(time_to_peak_circumferential_13), NA)
  time_to_peak_circumferential_14 <- replace(time_to_peak_circumferential_14, is.null(time_to_peak_circumferential_14), NA)
  time_to_peak_circumferential_15 <- replace(time_to_peak_circumferential_15, is.null(time_to_peak_circumferential_15), NA)
  time_to_peak_circumferential_16 <- replace(time_to_peak_circumferential_16, is.null(time_to_peak_circumferential_16), NA)
  time_to_peak_longitudinal_1 <- replace(time_to_peak_longitudinal_1, is.null(time_to_peak_longitudinal_1), NA)
  time_to_peak_longitudinal_2 <- replace(time_to_peak_longitudinal_2, is.null(time_to_peak_longitudinal_2), NA)
  time_to_peak_longitudinal_3 <- replace(time_to_peak_longitudinal_3, is.null(time_to_peak_longitudinal_3), NA)
  time_to_peak_longitudinal_4 <- replace(time_to_peak_longitudinal_4, is.null(time_to_peak_longitudinal_4), NA)
  time_to_peak_longitudinal_5 <- replace(time_to_peak_longitudinal_5, is.null(time_to_peak_longitudinal_5), NA)
  time_to_peak_longitudinal_6 <- replace(time_to_peak_longitudinal_6, is.null(time_to_peak_longitudinal_6), NA)
  time_to_peak_longitudinal_7 <- replace(time_to_peak_longitudinal_7, is.null(time_to_peak_longitudinal_7), NA)
  time_to_peak_longitudinal_8 <- replace(time_to_peak_longitudinal_8, is.null(time_to_peak_longitudinal_8), NA)
  time_to_peak_longitudinal_9 <- replace(time_to_peak_longitudinal_9, is.null(time_to_peak_longitudinal_9), NA)
  time_to_peak_longitudinal_10 <- replace(time_to_peak_longitudinal_10, is.null(time_to_peak_longitudinal_10), NA)
  time_to_peak_longitudinal_11 <- replace(time_to_peak_longitudinal_11, is.null(time_to_peak_longitudinal_11), NA)
  time_to_peak_longitudinal_12 <- replace(time_to_peak_longitudinal_12, is.null(time_to_peak_longitudinal_12), NA)
  time_to_peak_longitudinal_13 <- replace(time_to_peak_longitudinal_13, is.null(time_to_peak_longitudinal_13), NA)
  time_to_peak_longitudinal_14 <- replace(time_to_peak_longitudinal_14, is.null(time_to_peak_longitudinal_14), NA)
  time_to_peak_longitudinal_15 <- replace(time_to_peak_longitudinal_15, is.null(time_to_peak_longitudinal_15), NA)
  time_to_peak_longitudinal_16 <- replace(time_to_peak_longitudinal_16, is.null(time_to_peak_longitudinal_16), NA)
  peak_systolic_strain_rate_radial_1 <- replace(peak_systolic_strain_rate_radial_1, is.null(peak_systolic_strain_rate_radial_1), NA)
  peak_systolic_strain_rate_radial_2 <- replace(peak_systolic_strain_rate_radial_2, is.null(peak_systolic_strain_rate_radial_2), NA)
  peak_systolic_strain_rate_radial_3 <- replace(peak_systolic_strain_rate_radial_3, is.null(peak_systolic_strain_rate_radial_3), NA)
  peak_systolic_strain_rate_radial_4 <- replace(peak_systolic_strain_rate_radial_4, is.null(peak_systolic_strain_rate_radial_4), NA)
  peak_systolic_strain_rate_radial_5 <- replace(peak_systolic_strain_rate_radial_5, is.null(peak_systolic_strain_rate_radial_5), NA)
  peak_systolic_strain_rate_radial_6 <- replace(peak_systolic_strain_rate_radial_6, is.null(peak_systolic_strain_rate_radial_6), NA)
  peak_systolic_strain_rate_radial_7 <- replace(peak_systolic_strain_rate_radial_7, is.null(peak_systolic_strain_rate_radial_7), NA)
  peak_systolic_strain_rate_radial_8 <- replace(peak_systolic_strain_rate_radial_8, is.null(peak_systolic_strain_rate_radial_8), NA)
  peak_systolic_strain_rate_radial_9 <- replace(peak_systolic_strain_rate_radial_9, is.null(peak_systolic_strain_rate_radial_9), NA)
  peak_systolic_strain_rate_radial_10 <- replace(peak_systolic_strain_rate_radial_10, is.null(peak_systolic_strain_rate_radial_10), NA)
  peak_systolic_strain_rate_radial_11 <- replace(peak_systolic_strain_rate_radial_11, is.null(peak_systolic_strain_rate_radial_11), NA)
  peak_systolic_strain_rate_radial_12 <- replace(peak_systolic_strain_rate_radial_12, is.null(peak_systolic_strain_rate_radial_12), NA)
  peak_systolic_strain_rate_radial_13 <- replace(peak_systolic_strain_rate_radial_13, is.null(peak_systolic_strain_rate_radial_13), NA)
  peak_systolic_strain_rate_radial_14 <- replace(peak_systolic_strain_rate_radial_14, is.null(peak_systolic_strain_rate_radial_14), NA)
  peak_systolic_strain_rate_radial_15 <- replace(peak_systolic_strain_rate_radial_15, is.null(peak_systolic_strain_rate_radial_15), NA)
  peak_systolic_strain_rate_radial_16 <- replace(peak_systolic_strain_rate_radial_16, is.null(peak_systolic_strain_rate_radial_16), NA)
  peak_systolic_strain_rate_circumferential_1 <- replace(peak_systolic_strain_rate_circumferential_1, is.null(peak_systolic_strain_rate_circumferential_1), NA)
  peak_systolic_strain_rate_circumferential_2 <- replace(peak_systolic_strain_rate_circumferential_2, is.null(peak_systolic_strain_rate_circumferential_2), NA)
  peak_systolic_strain_rate_circumferential_3 <- replace(peak_systolic_strain_rate_circumferential_3, is.null(peak_systolic_strain_rate_circumferential_3), NA)
  peak_systolic_strain_rate_circumferential_4 <- replace(peak_systolic_strain_rate_circumferential_4, is.null(peak_systolic_strain_rate_circumferential_4), NA)
  peak_systolic_strain_rate_circumferential_5 <- replace(peak_systolic_strain_rate_circumferential_5, is.null(peak_systolic_strain_rate_circumferential_5), NA)
  peak_systolic_strain_rate_circumferential_6 <- replace(peak_systolic_strain_rate_circumferential_6, is.null(peak_systolic_strain_rate_circumferential_6), NA)
  peak_systolic_strain_rate_circumferential_7 <- replace(peak_systolic_strain_rate_circumferential_7, is.null(peak_systolic_strain_rate_circumferential_7), NA)
  peak_systolic_strain_rate_circumferential_8 <- replace(peak_systolic_strain_rate_circumferential_8, is.null(peak_systolic_strain_rate_circumferential_8), NA)
  peak_systolic_strain_rate_circumferential_9 <- replace(peak_systolic_strain_rate_circumferential_9, is.null(peak_systolic_strain_rate_circumferential_9), NA)
  peak_systolic_strain_rate_circumferential_10 <- replace(peak_systolic_strain_rate_circumferential_10, is.null(peak_systolic_strain_rate_circumferential_10), NA)
  peak_systolic_strain_rate_circumferential_11 <- replace(peak_systolic_strain_rate_circumferential_11, is.null(peak_systolic_strain_rate_circumferential_11), NA)
  peak_systolic_strain_rate_circumferential_12 <- replace(peak_systolic_strain_rate_circumferential_12, is.null(peak_systolic_strain_rate_circumferential_12), NA)
  peak_systolic_strain_rate_circumferential_13 <- replace(peak_systolic_strain_rate_circumferential_13, is.null(peak_systolic_strain_rate_circumferential_13), NA)
  peak_systolic_strain_rate_circumferential_14 <- replace(peak_systolic_strain_rate_circumferential_14, is.null(peak_systolic_strain_rate_circumferential_14), NA)
  peak_systolic_strain_rate_circumferential_15 <- replace(peak_systolic_strain_rate_circumferential_15, is.null(peak_systolic_strain_rate_circumferential_15), NA)
  peak_systolic_strain_rate_circumferential_16 <- replace(peak_systolic_strain_rate_circumferential_16, is.null(peak_systolic_strain_rate_circumferential_16), NA)
  peak_systolic_strain_rate_longitudinal_1 <- replace(peak_systolic_strain_rate_longitudinal_1, is.null(peak_systolic_strain_rate_longitudinal_1), NA)
  peak_systolic_strain_rate_longitudinal_2 <- replace(peak_systolic_strain_rate_longitudinal_2, is.null(peak_systolic_strain_rate_longitudinal_2), NA)
  peak_systolic_strain_rate_longitudinal_3 <- replace(peak_systolic_strain_rate_longitudinal_3, is.null(peak_systolic_strain_rate_longitudinal_3), NA)
  peak_systolic_strain_rate_longitudinal_4 <- replace(peak_systolic_strain_rate_longitudinal_4, is.null(peak_systolic_strain_rate_longitudinal_4), NA)
  peak_systolic_strain_rate_longitudinal_5 <- replace(peak_systolic_strain_rate_longitudinal_5, is.null(peak_systolic_strain_rate_longitudinal_5), NA)
  peak_systolic_strain_rate_longitudinal_6 <- replace(peak_systolic_strain_rate_longitudinal_6, is.null(peak_systolic_strain_rate_longitudinal_6), NA)
  peak_systolic_strain_rate_longitudinal_7 <- replace(peak_systolic_strain_rate_longitudinal_7, is.null(peak_systolic_strain_rate_longitudinal_7), NA)
  peak_systolic_strain_rate_longitudinal_8 <- replace(peak_systolic_strain_rate_longitudinal_8, is.null(peak_systolic_strain_rate_longitudinal_8), NA)
  peak_systolic_strain_rate_longitudinal_9 <- replace(peak_systolic_strain_rate_longitudinal_9, is.null(peak_systolic_strain_rate_longitudinal_9), NA)
  peak_systolic_strain_rate_longitudinal_10 <- replace(peak_systolic_strain_rate_longitudinal_10, is.null(peak_systolic_strain_rate_longitudinal_10), NA)
  peak_systolic_strain_rate_longitudinal_11 <- replace(peak_systolic_strain_rate_longitudinal_11, is.null(peak_systolic_strain_rate_longitudinal_11), NA)
  peak_systolic_strain_rate_longitudinal_12 <- replace(peak_systolic_strain_rate_longitudinal_12, is.null(peak_systolic_strain_rate_longitudinal_12), NA)
  peak_systolic_strain_rate_longitudinal_13 <- replace(peak_systolic_strain_rate_longitudinal_13, is.null(peak_systolic_strain_rate_longitudinal_13), NA)
  peak_systolic_strain_rate_longitudinal_14 <- replace(peak_systolic_strain_rate_longitudinal_14, is.null(peak_systolic_strain_rate_longitudinal_14), NA)
  peak_systolic_strain_rate_longitudinal_15 <- replace(peak_systolic_strain_rate_longitudinal_15, is.null(peak_systolic_strain_rate_longitudinal_15), NA)
  peak_systolic_strain_rate_longitudinal_16 <- replace(peak_systolic_strain_rate_longitudinal_16, is.null(peak_systolic_strain_rate_longitudinal_16), NA)
  peak_diastolic_strain_rate_radial_1 <- replace(peak_diastolic_strain_rate_radial_1, is.null(peak_diastolic_strain_rate_radial_1), NA)
  peak_diastolic_strain_rate_radial_2 <- replace(peak_diastolic_strain_rate_radial_2, is.null(peak_diastolic_strain_rate_radial_2), NA)
  peak_diastolic_strain_rate_radial_3 <- replace(peak_diastolic_strain_rate_radial_3, is.null(peak_diastolic_strain_rate_radial_3), NA)
  peak_diastolic_strain_rate_radial_4 <- replace(peak_diastolic_strain_rate_radial_4, is.null(peak_diastolic_strain_rate_radial_4), NA)
  peak_diastolic_strain_rate_radial_5 <- replace(peak_diastolic_strain_rate_radial_5, is.null(peak_diastolic_strain_rate_radial_5), NA)
  peak_diastolic_strain_rate_radial_6 <- replace(peak_diastolic_strain_rate_radial_6, is.null(peak_diastolic_strain_rate_radial_6), NA)
  peak_diastolic_strain_rate_radial_7 <- replace(peak_diastolic_strain_rate_radial_7, is.null(peak_diastolic_strain_rate_radial_7), NA)
  peak_diastolic_strain_rate_radial_8 <- replace(peak_diastolic_strain_rate_radial_8, is.null(peak_diastolic_strain_rate_radial_8), NA)
  peak_diastolic_strain_rate_radial_9 <- replace(peak_diastolic_strain_rate_radial_9, is.null(peak_diastolic_strain_rate_radial_9), NA)
  peak_diastolic_strain_rate_radial_10 <- replace(peak_diastolic_strain_rate_radial_10, is.null(peak_diastolic_strain_rate_radial_10), NA)
  peak_diastolic_strain_rate_radial_11 <- replace(peak_diastolic_strain_rate_radial_11, is.null(peak_diastolic_strain_rate_radial_11), NA)
  peak_diastolic_strain_rate_radial_12 <- replace(peak_diastolic_strain_rate_radial_12, is.null(peak_diastolic_strain_rate_radial_12), NA)
  peak_diastolic_strain_rate_radial_13 <- replace(peak_diastolic_strain_rate_radial_13, is.null(peak_diastolic_strain_rate_radial_13), NA)
  peak_diastolic_strain_rate_radial_14 <- replace(peak_diastolic_strain_rate_radial_14, is.null(peak_diastolic_strain_rate_radial_14), NA)
  peak_diastolic_strain_rate_radial_15 <- replace(peak_diastolic_strain_rate_radial_15, is.null(peak_diastolic_strain_rate_radial_15), NA)
  peak_diastolic_strain_rate_radial_16 <- replace(peak_diastolic_strain_rate_radial_16, is.null(peak_diastolic_strain_rate_radial_16), NA)
  peak_diastolic_strain_rate_circumferential_1 <- replace(peak_diastolic_strain_rate_circumferential_1, is.null(peak_diastolic_strain_rate_circumferential_1), NA)
  peak_diastolic_strain_rate_circumferential_2 <- replace(peak_diastolic_strain_rate_circumferential_2, is.null(peak_diastolic_strain_rate_circumferential_2), NA)
  peak_diastolic_strain_rate_circumferential_3 <- replace(peak_diastolic_strain_rate_circumferential_3, is.null(peak_diastolic_strain_rate_circumferential_3), NA)
  peak_diastolic_strain_rate_circumferential_4 <- replace(peak_diastolic_strain_rate_circumferential_4, is.null(peak_diastolic_strain_rate_circumferential_4), NA)
  peak_diastolic_strain_rate_circumferential_5 <- replace(peak_diastolic_strain_rate_circumferential_5, is.null(peak_diastolic_strain_rate_circumferential_5), NA)
  peak_diastolic_strain_rate_circumferential_6 <- replace(peak_diastolic_strain_rate_circumferential_6, is.null(peak_diastolic_strain_rate_circumferential_6), NA)
  peak_diastolic_strain_rate_circumferential_7 <- replace(peak_diastolic_strain_rate_circumferential_7, is.null(peak_diastolic_strain_rate_circumferential_7), NA)
  peak_diastolic_strain_rate_circumferential_8 <- replace(peak_diastolic_strain_rate_circumferential_8, is.null(peak_diastolic_strain_rate_circumferential_8), NA)
  peak_diastolic_strain_rate_circumferential_9 <- replace(peak_diastolic_strain_rate_circumferential_9, is.null(peak_diastolic_strain_rate_circumferential_9), NA)
  peak_diastolic_strain_rate_circumferential_10 <- replace(peak_diastolic_strain_rate_circumferential_10, is.null(peak_diastolic_strain_rate_circumferential_10), NA)
  peak_diastolic_strain_rate_circumferential_11 <- replace(peak_diastolic_strain_rate_circumferential_11, is.null(peak_diastolic_strain_rate_circumferential_11), NA)
  peak_diastolic_strain_rate_circumferential_12 <- replace(peak_diastolic_strain_rate_circumferential_12, is.null(peak_diastolic_strain_rate_circumferential_12), NA)
  peak_diastolic_strain_rate_circumferential_13 <- replace(peak_diastolic_strain_rate_circumferential_13, is.null(peak_diastolic_strain_rate_circumferential_13), NA)
  peak_diastolic_strain_rate_circumferential_14 <- replace(peak_diastolic_strain_rate_circumferential_14, is.null(peak_diastolic_strain_rate_circumferential_14), NA)
  peak_diastolic_strain_rate_circumferential_15 <- replace(peak_diastolic_strain_rate_circumferential_15, is.null(peak_diastolic_strain_rate_circumferential_15), NA)
  peak_diastolic_strain_rate_circumferential_16 <- replace(peak_diastolic_strain_rate_circumferential_16, is.null(peak_diastolic_strain_rate_circumferential_16), NA)
  peak_diastolic_strain_rate_longitudinal_1 <- replace(peak_diastolic_strain_rate_longitudinal_1, is.null(peak_diastolic_strain_rate_longitudinal_1), NA)
  peak_diastolic_strain_rate_longitudinal_2 <- replace(peak_diastolic_strain_rate_longitudinal_2, is.null(peak_diastolic_strain_rate_longitudinal_2), NA)
  peak_diastolic_strain_rate_longitudinal_3 <- replace(peak_diastolic_strain_rate_longitudinal_3, is.null(peak_diastolic_strain_rate_longitudinal_3), NA)
  peak_diastolic_strain_rate_longitudinal_4 <- replace(peak_diastolic_strain_rate_longitudinal_4, is.null(peak_diastolic_strain_rate_longitudinal_4), NA)
  peak_diastolic_strain_rate_longitudinal_5 <- replace(peak_diastolic_strain_rate_longitudinal_5, is.null(peak_diastolic_strain_rate_longitudinal_5), NA)
  peak_diastolic_strain_rate_longitudinal_6 <- replace(peak_diastolic_strain_rate_longitudinal_6, is.null(peak_diastolic_strain_rate_longitudinal_6), NA)
  peak_diastolic_strain_rate_longitudinal_7 <- replace(peak_diastolic_strain_rate_longitudinal_7, is.null(peak_diastolic_strain_rate_longitudinal_7), NA)
  peak_diastolic_strain_rate_longitudinal_8 <- replace(peak_diastolic_strain_rate_longitudinal_8, is.null(peak_diastolic_strain_rate_longitudinal_8), NA)
  peak_diastolic_strain_rate_longitudinal_9 <- replace(peak_diastolic_strain_rate_longitudinal_9, is.null(peak_diastolic_strain_rate_longitudinal_9), NA)
  peak_diastolic_strain_rate_longitudinal_10 <- replace(peak_diastolic_strain_rate_longitudinal_10, is.null(peak_diastolic_strain_rate_longitudinal_10), NA)
  peak_diastolic_strain_rate_longitudinal_11 <- replace(peak_diastolic_strain_rate_longitudinal_11, is.null(peak_diastolic_strain_rate_longitudinal_11), NA)
  peak_diastolic_strain_rate_longitudinal_12 <- replace(peak_diastolic_strain_rate_longitudinal_12, is.null(peak_diastolic_strain_rate_longitudinal_12), NA)
  peak_diastolic_strain_rate_longitudinal_13 <- replace(peak_diastolic_strain_rate_longitudinal_13, is.null(peak_diastolic_strain_rate_longitudinal_13), NA)
  peak_diastolic_strain_rate_longitudinal_14 <- replace(peak_diastolic_strain_rate_longitudinal_14, is.null(peak_diastolic_strain_rate_longitudinal_14), NA)
  peak_diastolic_strain_rate_longitudinal_15 <- replace(peak_diastolic_strain_rate_longitudinal_15, is.null(peak_diastolic_strain_rate_longitudinal_15), NA)
  peak_diastolic_strain_rate_longitudinal_16 <- replace(peak_diastolic_strain_rate_longitudinal_16, is.null(peak_diastolic_strain_rate_longitudinal_16), NA)
  peak_displacement_radial_1 <- replace(peak_displacement_radial_1, is.null(peak_displacement_radial_1), NA)
  peak_displacement_radial_2 <- replace(peak_displacement_radial_2, is.null(peak_displacement_radial_2), NA)
  peak_displacement_radial_3 <- replace(peak_displacement_radial_3, is.null(peak_displacement_radial_3), NA)
  peak_displacement_radial_4 <- replace(peak_displacement_radial_4, is.null(peak_displacement_radial_4), NA)
  peak_displacement_radial_5 <- replace(peak_displacement_radial_5, is.null(peak_displacement_radial_5), NA)
  peak_displacement_radial_6 <- replace(peak_displacement_radial_6, is.null(peak_displacement_radial_6), NA)
  peak_displacement_radial_7 <- replace(peak_displacement_radial_7, is.null(peak_displacement_radial_7), NA)
  peak_displacement_radial_8 <- replace(peak_displacement_radial_8, is.null(peak_displacement_radial_8), NA)
  peak_displacement_radial_9 <- replace(peak_displacement_radial_9, is.null(peak_displacement_radial_9), NA)
  peak_displacement_radial_10 <- replace(peak_displacement_radial_10, is.null(peak_displacement_radial_10), NA)
  peak_displacement_radial_11 <- replace(peak_displacement_radial_11, is.null(peak_displacement_radial_11), NA)
  peak_displacement_radial_12 <- replace(peak_displacement_radial_12, is.null(peak_displacement_radial_12), NA)
  peak_displacement_radial_13 <- replace(peak_displacement_radial_13, is.null(peak_displacement_radial_13), NA)
  peak_displacement_radial_14 <- replace(peak_displacement_radial_14, is.null(peak_displacement_radial_14), NA)
  peak_displacement_radial_15 <- replace(peak_displacement_radial_15, is.null(peak_displacement_radial_15), NA)
  peak_displacement_radial_16 <- replace(peak_displacement_radial_16, is.null(peak_displacement_radial_16), NA)
  peak_displacement_circumferential_1 <- replace(peak_displacement_circumferential_1, is.null(peak_displacement_circumferential_1), NA)
  peak_displacement_circumferential_2 <- replace(peak_displacement_circumferential_2, is.null(peak_displacement_circumferential_2), NA)
  peak_displacement_circumferential_3 <- replace(peak_displacement_circumferential_3, is.null(peak_displacement_circumferential_3), NA)
  peak_displacement_circumferential_4 <- replace(peak_displacement_circumferential_4, is.null(peak_displacement_circumferential_4), NA)
  peak_displacement_circumferential_5 <- replace(peak_displacement_circumferential_5, is.null(peak_displacement_circumferential_5), NA)
  peak_displacement_circumferential_6 <- replace(peak_displacement_circumferential_6, is.null(peak_displacement_circumferential_6), NA)
  peak_displacement_circumferential_7 <- replace(peak_displacement_circumferential_7, is.null(peak_displacement_circumferential_7), NA)
  peak_displacement_circumferential_8 <- replace(peak_displacement_circumferential_8, is.null(peak_displacement_circumferential_8), NA)
  peak_displacement_circumferential_9 <- replace(peak_displacement_circumferential_9, is.null(peak_displacement_circumferential_9), NA)
  peak_displacement_circumferential_10 <- replace(peak_displacement_circumferential_10, is.null(peak_displacement_circumferential_10), NA)
  peak_displacement_circumferential_11 <- replace(peak_displacement_circumferential_11, is.null(peak_displacement_circumferential_11), NA)
  peak_displacement_circumferential_12 <- replace(peak_displacement_circumferential_12, is.null(peak_displacement_circumferential_12), NA)
  peak_displacement_circumferential_13 <- replace(peak_displacement_circumferential_13, is.null(peak_displacement_circumferential_13), NA)
  peak_displacement_circumferential_14 <- replace(peak_displacement_circumferential_14, is.null(peak_displacement_circumferential_14), NA)
  peak_displacement_circumferential_15 <- replace(peak_displacement_circumferential_15, is.null(peak_displacement_circumferential_15), NA)
  peak_displacement_circumferential_16 <- replace(peak_displacement_circumferential_16, is.null(peak_displacement_circumferential_16), NA)
  peak_displacement_longitudinal_1 <- replace(peak_displacement_longitudinal_1, is.null(peak_displacement_longitudinal_1), NA)
  peak_displacement_longitudinal_2 <- replace(peak_displacement_longitudinal_2, is.null(peak_displacement_longitudinal_2), NA)
  peak_displacement_longitudinal_3 <- replace(peak_displacement_longitudinal_3, is.null(peak_displacement_longitudinal_3), NA)
  peak_displacement_longitudinal_4 <- replace(peak_displacement_longitudinal_4, is.null(peak_displacement_longitudinal_4), NA)
  peak_displacement_longitudinal_5 <- replace(peak_displacement_longitudinal_5, is.null(peak_displacement_longitudinal_5), NA)
  peak_displacement_longitudinal_6 <- replace(peak_displacement_longitudinal_6, is.null(peak_displacement_longitudinal_6), NA)
  peak_displacement_longitudinal_7 <- replace(peak_displacement_longitudinal_7, is.null(peak_displacement_longitudinal_7), NA)
  peak_displacement_longitudinal_8 <- replace(peak_displacement_longitudinal_8, is.null(peak_displacement_longitudinal_8), NA)
  peak_displacement_longitudinal_9 <- replace(peak_displacement_longitudinal_9, is.null(peak_displacement_longitudinal_9), NA)
  peak_displacement_longitudinal_10 <- replace(peak_displacement_longitudinal_10, is.null(peak_displacement_longitudinal_10), NA)
  peak_displacement_longitudinal_11 <- replace(peak_displacement_longitudinal_11, is.null(peak_displacement_longitudinal_11), NA)
  peak_displacement_longitudinal_12 <- replace(peak_displacement_longitudinal_12, is.null(peak_displacement_longitudinal_12), NA)
  peak_displacement_longitudinal_13 <- replace(peak_displacement_longitudinal_13, is.null(peak_displacement_longitudinal_13), NA)
  peak_displacement_longitudinal_14 <- replace(peak_displacement_longitudinal_14, is.null(peak_displacement_longitudinal_14), NA)
  peak_displacement_longitudinal_15 <- replace(peak_displacement_longitudinal_15, is.null(peak_displacement_longitudinal_15), NA)
  peak_displacement_longitudinal_16 <- replace(peak_displacement_longitudinal_16, is.null(peak_displacement_longitudinal_16), NA)
  peak_systolic_velocity_radial_1 <- replace(peak_systolic_velocity_radial_1, is.null(peak_systolic_velocity_radial_1), NA)
  peak_systolic_velocity_radial_2 <- replace(peak_systolic_velocity_radial_2, is.null(peak_systolic_velocity_radial_2), NA)
  peak_systolic_velocity_radial_3 <- replace(peak_systolic_velocity_radial_3, is.null(peak_systolic_velocity_radial_3), NA)
  peak_systolic_velocity_radial_4 <- replace(peak_systolic_velocity_radial_4, is.null(peak_systolic_velocity_radial_4), NA)
  peak_systolic_velocity_radial_5 <- replace(peak_systolic_velocity_radial_5, is.null(peak_systolic_velocity_radial_5), NA)
  peak_systolic_velocity_radial_6 <- replace(peak_systolic_velocity_radial_6, is.null(peak_systolic_velocity_radial_6), NA)
  peak_systolic_velocity_radial_7 <- replace(peak_systolic_velocity_radial_7, is.null(peak_systolic_velocity_radial_7), NA)
  peak_systolic_velocity_radial_8 <- replace(peak_systolic_velocity_radial_8, is.null(peak_systolic_velocity_radial_8), NA)
  peak_systolic_velocity_radial_9 <- replace(peak_systolic_velocity_radial_9, is.null(peak_systolic_velocity_radial_9), NA)
  peak_systolic_velocity_radial_10 <- replace(peak_systolic_velocity_radial_10, is.null(peak_systolic_velocity_radial_10), NA)
  peak_systolic_velocity_radial_11 <- replace(peak_systolic_velocity_radial_11, is.null(peak_systolic_velocity_radial_11), NA)
  peak_systolic_velocity_radial_12 <- replace(peak_systolic_velocity_radial_12, is.null(peak_systolic_velocity_radial_12), NA)
  peak_systolic_velocity_radial_13 <- replace(peak_systolic_velocity_radial_13, is.null(peak_systolic_velocity_radial_13), NA)
  peak_systolic_velocity_radial_14 <- replace(peak_systolic_velocity_radial_14, is.null(peak_systolic_velocity_radial_14), NA)
  peak_systolic_velocity_radial_15 <- replace(peak_systolic_velocity_radial_15, is.null(peak_systolic_velocity_radial_15), NA)
  peak_systolic_velocity_radial_16 <- replace(peak_systolic_velocity_radial_16, is.null(peak_systolic_velocity_radial_16), NA)
  peak_systolic_velocity_circumferential_1 <- replace(peak_systolic_velocity_circumferential_1, is.null(peak_systolic_velocity_circumferential_1), NA)
  peak_systolic_velocity_circumferential_2 <- replace(peak_systolic_velocity_circumferential_2, is.null(peak_systolic_velocity_circumferential_2), NA)
  peak_systolic_velocity_circumferential_3 <- replace(peak_systolic_velocity_circumferential_3, is.null(peak_systolic_velocity_circumferential_3), NA)
  peak_systolic_velocity_circumferential_4 <- replace(peak_systolic_velocity_circumferential_4, is.null(peak_systolic_velocity_circumferential_4), NA)
  peak_systolic_velocity_circumferential_5 <- replace(peak_systolic_velocity_circumferential_5, is.null(peak_systolic_velocity_circumferential_5), NA)
  peak_systolic_velocity_circumferential_6 <- replace(peak_systolic_velocity_circumferential_6, is.null(peak_systolic_velocity_circumferential_6), NA)
  peak_systolic_velocity_circumferential_7 <- replace(peak_systolic_velocity_circumferential_7, is.null(peak_systolic_velocity_circumferential_7), NA)
  peak_systolic_velocity_circumferential_8 <- replace(peak_systolic_velocity_circumferential_8, is.null(peak_systolic_velocity_circumferential_8), NA)
  peak_systolic_velocity_circumferential_9 <- replace(peak_systolic_velocity_circumferential_9, is.null(peak_systolic_velocity_circumferential_9), NA)
  peak_systolic_velocity_circumferential_10 <- replace(peak_systolic_velocity_circumferential_10, is.null(peak_systolic_velocity_circumferential_10), NA)
  peak_systolic_velocity_circumferential_11 <- replace(peak_systolic_velocity_circumferential_11, is.null(peak_systolic_velocity_circumferential_11), NA)
  peak_systolic_velocity_circumferential_12 <- replace(peak_systolic_velocity_circumferential_12, is.null(peak_systolic_velocity_circumferential_12), NA)
  peak_systolic_velocity_circumferential_13 <- replace(peak_systolic_velocity_circumferential_13, is.null(peak_systolic_velocity_circumferential_13), NA)
  peak_systolic_velocity_circumferential_14 <- replace(peak_systolic_velocity_circumferential_14, is.null(peak_systolic_velocity_circumferential_14), NA)
  peak_systolic_velocity_circumferential_15 <- replace(peak_systolic_velocity_circumferential_15, is.null(peak_systolic_velocity_circumferential_15), NA)
  peak_systolic_velocity_circumferential_16 <- replace(peak_systolic_velocity_circumferential_16, is.null(peak_systolic_velocity_circumferential_16), NA)
  peak_systolic_velocity_longitudinal_1 <- replace(peak_systolic_velocity_longitudinal_1, is.null(peak_systolic_velocity_longitudinal_1), NA)
  peak_systolic_velocity_longitudinal_2 <- replace(peak_systolic_velocity_longitudinal_2, is.null(peak_systolic_velocity_longitudinal_2), NA)
  peak_systolic_velocity_longitudinal_3 <- replace(peak_systolic_velocity_longitudinal_3, is.null(peak_systolic_velocity_longitudinal_3), NA)
  peak_systolic_velocity_longitudinal_4 <- replace(peak_systolic_velocity_longitudinal_4, is.null(peak_systolic_velocity_longitudinal_4), NA)
  peak_systolic_velocity_longitudinal_5 <- replace(peak_systolic_velocity_longitudinal_5, is.null(peak_systolic_velocity_longitudinal_5), NA)
  peak_systolic_velocity_longitudinal_6 <- replace(peak_systolic_velocity_longitudinal_6, is.null(peak_systolic_velocity_longitudinal_6), NA)
  peak_systolic_velocity_longitudinal_7 <- replace(peak_systolic_velocity_longitudinal_7, is.null(peak_systolic_velocity_longitudinal_7), NA)
  peak_systolic_velocity_longitudinal_8 <- replace(peak_systolic_velocity_longitudinal_8, is.null(peak_systolic_velocity_longitudinal_8), NA)
  peak_systolic_velocity_longitudinal_9 <- replace(peak_systolic_velocity_longitudinal_9, is.null(peak_systolic_velocity_longitudinal_9), NA)
  peak_systolic_velocity_longitudinal_10 <- replace(peak_systolic_velocity_longitudinal_10, is.null(peak_systolic_velocity_longitudinal_10), NA)
  peak_systolic_velocity_longitudinal_11 <- replace(peak_systolic_velocity_longitudinal_11, is.null(peak_systolic_velocity_longitudinal_11), NA)
  peak_systolic_velocity_longitudinal_12 <- replace(peak_systolic_velocity_longitudinal_12, is.null(peak_systolic_velocity_longitudinal_12), NA)
  peak_systolic_velocity_longitudinal_13 <- replace(peak_systolic_velocity_longitudinal_13, is.null(peak_systolic_velocity_longitudinal_13), NA)
  peak_systolic_velocity_longitudinal_14 <- replace(peak_systolic_velocity_longitudinal_14, is.null(peak_systolic_velocity_longitudinal_14), NA)
  peak_systolic_velocity_longitudinal_15 <- replace(peak_systolic_velocity_longitudinal_15, is.null(peak_systolic_velocity_longitudinal_15), NA)
  peak_systolic_velocity_longitudinal_16 <- replace(peak_systolic_velocity_longitudinal_16, is.null(peak_systolic_velocity_longitudinal_16), NA)
  peak_diastolic_velocity_radial_1 <- replace(peak_diastolic_velocity_radial_1, is.null(peak_diastolic_velocity_radial_1), NA)
  peak_diastolic_velocity_radial_2 <- replace(peak_diastolic_velocity_radial_2, is.null(peak_diastolic_velocity_radial_2), NA)
  peak_diastolic_velocity_radial_3 <- replace(peak_diastolic_velocity_radial_3, is.null(peak_diastolic_velocity_radial_3), NA)
  peak_diastolic_velocity_radial_4 <- replace(peak_diastolic_velocity_radial_4, is.null(peak_diastolic_velocity_radial_4), NA)
  peak_diastolic_velocity_radial_5 <- replace(peak_diastolic_velocity_radial_5, is.null(peak_diastolic_velocity_radial_5), NA)
  peak_diastolic_velocity_radial_6 <- replace(peak_diastolic_velocity_radial_6, is.null(peak_diastolic_velocity_radial_6), NA)
  peak_diastolic_velocity_radial_7 <- replace(peak_diastolic_velocity_radial_7, is.null(peak_diastolic_velocity_radial_7), NA)
  peak_diastolic_velocity_radial_8 <- replace(peak_diastolic_velocity_radial_8, is.null(peak_diastolic_velocity_radial_8), NA)
  peak_diastolic_velocity_radial_9 <- replace(peak_diastolic_velocity_radial_9, is.null(peak_diastolic_velocity_radial_9), NA)
  peak_diastolic_velocity_radial_10 <- replace(peak_diastolic_velocity_radial_10, is.null(peak_diastolic_velocity_radial_10), NA)
  peak_diastolic_velocity_radial_11 <- replace(peak_diastolic_velocity_radial_11, is.null(peak_diastolic_velocity_radial_11), NA)
  peak_diastolic_velocity_radial_12 <- replace(peak_diastolic_velocity_radial_12, is.null(peak_diastolic_velocity_radial_12), NA)
  peak_diastolic_velocity_radial_13 <- replace(peak_diastolic_velocity_radial_13, is.null(peak_diastolic_velocity_radial_13), NA)
  peak_diastolic_velocity_radial_14 <- replace(peak_diastolic_velocity_radial_14, is.null(peak_diastolic_velocity_radial_14), NA)
  peak_diastolic_velocity_radial_15 <- replace(peak_diastolic_velocity_radial_15, is.null(peak_diastolic_velocity_radial_15), NA)
  peak_diastolic_velocity_radial_16 <- replace(peak_diastolic_velocity_radial_16, is.null(peak_diastolic_velocity_radial_16), NA)
  peak_diastolic_velocity_circumferential_1 <- replace(peak_diastolic_velocity_circumferential_1, is.null(peak_diastolic_velocity_circumferential_1), NA)
  peak_diastolic_velocity_circumferential_2 <- replace(peak_diastolic_velocity_circumferential_2, is.null(peak_diastolic_velocity_circumferential_2), NA)
  peak_diastolic_velocity_circumferential_3 <- replace(peak_diastolic_velocity_circumferential_3, is.null(peak_diastolic_velocity_circumferential_3), NA)
  peak_diastolic_velocity_circumferential_4 <- replace(peak_diastolic_velocity_circumferential_4, is.null(peak_diastolic_velocity_circumferential_4), NA)
  peak_diastolic_velocity_circumferential_5 <- replace(peak_diastolic_velocity_circumferential_5, is.null(peak_diastolic_velocity_circumferential_5), NA)
  peak_diastolic_velocity_circumferential_6 <- replace(peak_diastolic_velocity_circumferential_6, is.null(peak_diastolic_velocity_circumferential_6), NA)
  peak_diastolic_velocity_circumferential_7 <- replace(peak_diastolic_velocity_circumferential_7, is.null(peak_diastolic_velocity_circumferential_7), NA)
  peak_diastolic_velocity_circumferential_8 <- replace(peak_diastolic_velocity_circumferential_8, is.null(peak_diastolic_velocity_circumferential_8), NA)
  peak_diastolic_velocity_circumferential_9 <- replace(peak_diastolic_velocity_circumferential_9, is.null(peak_diastolic_velocity_circumferential_9), NA)
  peak_diastolic_velocity_circumferential_10 <- replace(peak_diastolic_velocity_circumferential_10, is.null(peak_diastolic_velocity_circumferential_10), NA)
  peak_diastolic_velocity_circumferential_11 <- replace(peak_diastolic_velocity_circumferential_11, is.null(peak_diastolic_velocity_circumferential_11), NA)
  peak_diastolic_velocity_circumferential_12 <- replace(peak_diastolic_velocity_circumferential_12, is.null(peak_diastolic_velocity_circumferential_12), NA)
  peak_diastolic_velocity_circumferential_13 <- replace(peak_diastolic_velocity_circumferential_13, is.null(peak_diastolic_velocity_circumferential_13), NA)
  peak_diastolic_velocity_circumferential_14 <- replace(peak_diastolic_velocity_circumferential_14, is.null(peak_diastolic_velocity_circumferential_14), NA)
  peak_diastolic_velocity_circumferential_15 <- replace(peak_diastolic_velocity_circumferential_15, is.null(peak_diastolic_velocity_circumferential_15), NA)
  peak_diastolic_velocity_circumferential_16 <- replace(peak_diastolic_velocity_circumferential_16, is.null(peak_diastolic_velocity_circumferential_16), NA)
  peak_diastolic_velocity_longitudinal_1 <- replace(peak_diastolic_velocity_longitudinal_1, is.null(peak_diastolic_velocity_longitudinal_1), NA)
  peak_diastolic_velocity_longitudinal_2 <- replace(peak_diastolic_velocity_longitudinal_2, is.null(peak_diastolic_velocity_longitudinal_2), NA)
  peak_diastolic_velocity_longitudinal_3 <- replace(peak_diastolic_velocity_longitudinal_3, is.null(peak_diastolic_velocity_longitudinal_3), NA)
  peak_diastolic_velocity_longitudinal_4 <- replace(peak_diastolic_velocity_longitudinal_4, is.null(peak_diastolic_velocity_longitudinal_4), NA)
  peak_diastolic_velocity_longitudinal_5 <- replace(peak_diastolic_velocity_longitudinal_5, is.null(peak_diastolic_velocity_longitudinal_5), NA)
  peak_diastolic_velocity_longitudinal_6 <- replace(peak_diastolic_velocity_longitudinal_6, is.null(peak_diastolic_velocity_longitudinal_6), NA)
  peak_diastolic_velocity_longitudinal_7 <- replace(peak_diastolic_velocity_longitudinal_7, is.null(peak_diastolic_velocity_longitudinal_7), NA)
  peak_diastolic_velocity_longitudinal_8 <- replace(peak_diastolic_velocity_longitudinal_8, is.null(peak_diastolic_velocity_longitudinal_8), NA)
  peak_diastolic_velocity_longitudinal_9 <- replace(peak_diastolic_velocity_longitudinal_9, is.null(peak_diastolic_velocity_longitudinal_9), NA)
  peak_diastolic_velocity_longitudinal_10 <- replace(peak_diastolic_velocity_longitudinal_10, is.null(peak_diastolic_velocity_longitudinal_10), NA)
  peak_diastolic_velocity_longitudinal_11 <- replace(peak_diastolic_velocity_longitudinal_11, is.null(peak_diastolic_velocity_longitudinal_11), NA)
  peak_diastolic_velocity_longitudinal_12 <- replace(peak_diastolic_velocity_longitudinal_12, is.null(peak_diastolic_velocity_longitudinal_12), NA)
  peak_diastolic_velocity_longitudinal_13 <- replace(peak_diastolic_velocity_longitudinal_13, is.null(peak_diastolic_velocity_longitudinal_13), NA)
  peak_diastolic_velocity_longitudinal_14 <- replace(peak_diastolic_velocity_longitudinal_14, is.null(peak_diastolic_velocity_longitudinal_14), NA)
  peak_diastolic_velocity_longitudinal_15 <- replace(peak_diastolic_velocity_longitudinal_15, is.null(peak_diastolic_velocity_longitudinal_15), NA)
  peak_diastolic_velocity_longitudinal_16 <- replace(peak_diastolic_velocity_longitudinal_16, is.null(peak_diastolic_velocity_longitudinal_16), NA)
  
  cmr <- data.frame(procedure_name,
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
                    #mapseinf_cmr,
                    #mapseant_cmr,
                    mapselat_cmr,	
                    #mapsesep_cmr,	
                    tapse_cmr,
                    min_la_vol_cmr,
                    max_la_vol_cmr,
                    la_ef_cmr,
                    # average_lv_long_axis_strain_cmr, average_lv_long_axis_difference_cmr,average_la_long_axis_strain_cmr,average_la_long_axis_difference_cmr,lv_long_axis_strain_2ch_cmr,lv_long_axis_difference_2ch_cmr,la_long_axis_strain_2ch_cmr,la_long_axis_difference_2ch_cmr,la_av_junction_strain_2ch_cmr,la_av_junction_difference_2ch_cmr,lv_la_strain_4ch_cmr,la_la_strain_4ch_cmr,lv_la_difference_4ch_cmr,la_la_difference_4ch_cmr,ra_la_strain_4ch_cmr,ra_la_difference_4ch_cmr,la_av_junction_strain_4ch_cmr,la_av_junction_difference_4ch_cmr,
                    sax_gcs_cmr,sax_grs_cmr,lax_gls_cmr,lax_grs_cmr,
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
                    qp_qs_cmr, peak_strain_radial_1,
                    peak_strain_radial_2,
                    peak_strain_radial_3,
                    peak_strain_radial_4,
                    peak_strain_radial_5,
                    peak_strain_radial_6,
                    peak_strain_radial_7,
                    peak_strain_radial_8,
                    peak_strain_radial_9,
                    peak_strain_radial_10,
                    peak_strain_radial_11,
                    peak_strain_radial_12,
                    peak_strain_radial_13,
                    peak_strain_radial_14,
                    peak_strain_radial_15,
                    peak_strain_radial_16,
                    peak_strain_circumferential_1,
                    peak_strain_circumferential_2,
                    peak_strain_circumferential_3,
                    peak_strain_circumferential_4,
                    peak_strain_circumferential_5,
                    peak_strain_circumferential_6,
                    peak_strain_circumferential_7,
                    peak_strain_circumferential_8,
                    peak_strain_circumferential_9,
                    peak_strain_circumferential_10,
                    peak_strain_circumferential_11,
                    peak_strain_circumferential_12,
                    peak_strain_circumferential_13,
                    peak_strain_circumferential_14,
                    peak_strain_circumferential_15,
                    peak_strain_circumferential_16,
                    peak_strain_longitudinal_1,
                    peak_strain_longitudinal_2,
                    peak_strain_longitudinal_3,
                    peak_strain_longitudinal_4,
                    peak_strain_longitudinal_5,
                    peak_strain_longitudinal_6,
                    peak_strain_longitudinal_7,
                    peak_strain_longitudinal_8,
                    peak_strain_longitudinal_9,
                    peak_strain_longitudinal_10,
                    peak_strain_longitudinal_11,
                    peak_strain_longitudinal_12,
                    peak_strain_longitudinal_13,
                    peak_strain_longitudinal_14,
                    peak_strain_longitudinal_15,
                    peak_strain_longitudinal_16,
                    time_to_peak_radial_1,
                    time_to_peak_radial_2,
                    time_to_peak_radial_3,
                    time_to_peak_radial_4,
                    time_to_peak_radial_5,
                    time_to_peak_radial_6,
                    time_to_peak_radial_7,
                    time_to_peak_radial_8,
                    time_to_peak_radial_9,
                    time_to_peak_radial_10,
                    time_to_peak_radial_11,
                    time_to_peak_radial_12,
                    time_to_peak_radial_13,
                    time_to_peak_radial_14,
                    time_to_peak_radial_15,
                    time_to_peak_radial_16,
                    time_to_peak_circumferential_1,
                    time_to_peak_circumferential_2,
                    time_to_peak_circumferential_3,
                    time_to_peak_circumferential_4,
                    time_to_peak_circumferential_5,
                    time_to_peak_circumferential_6,
                    time_to_peak_circumferential_7,
                    time_to_peak_circumferential_8,
                    time_to_peak_circumferential_9,
                    time_to_peak_circumferential_10,
                    time_to_peak_circumferential_11,
                    time_to_peak_circumferential_12,
                    time_to_peak_circumferential_13,
                    time_to_peak_circumferential_14,
                    time_to_peak_circumferential_15,
                    time_to_peak_circumferential_16,
                    time_to_peak_longitudinal_1,
                    time_to_peak_longitudinal_2,
                    time_to_peak_longitudinal_3,
                    time_to_peak_longitudinal_4,
                    time_to_peak_longitudinal_5,
                    time_to_peak_longitudinal_6,
                    time_to_peak_longitudinal_7,
                    time_to_peak_longitudinal_8,
                    time_to_peak_longitudinal_9,
                    time_to_peak_longitudinal_10,
                    time_to_peak_longitudinal_11,
                    time_to_peak_longitudinal_12,
                    time_to_peak_longitudinal_13,
                    time_to_peak_longitudinal_14,
                    time_to_peak_longitudinal_15,
                    time_to_peak_longitudinal_16,
                    peak_systolic_strain_rate_radial_1,
                    peak_systolic_strain_rate_radial_2,
                    peak_systolic_strain_rate_radial_3,
                    peak_systolic_strain_rate_radial_4,
                    peak_systolic_strain_rate_radial_5,
                    peak_systolic_strain_rate_radial_6,
                    peak_systolic_strain_rate_radial_7,
                    peak_systolic_strain_rate_radial_8,
                    peak_systolic_strain_rate_radial_9,
                    peak_systolic_strain_rate_radial_10,
                    peak_systolic_strain_rate_radial_11,
                    peak_systolic_strain_rate_radial_12,
                    peak_systolic_strain_rate_radial_13,
                    peak_systolic_strain_rate_radial_14,
                    peak_systolic_strain_rate_radial_15,
                    peak_systolic_strain_rate_radial_16,
                    peak_systolic_strain_rate_circumferential_1,
                    peak_systolic_strain_rate_circumferential_2,
                    peak_systolic_strain_rate_circumferential_3,
                    peak_systolic_strain_rate_circumferential_4,
                    peak_systolic_strain_rate_circumferential_5,
                    peak_systolic_strain_rate_circumferential_6,
                    peak_systolic_strain_rate_circumferential_7,
                    peak_systolic_strain_rate_circumferential_8,
                    peak_systolic_strain_rate_circumferential_9,
                    peak_systolic_strain_rate_circumferential_10,
                    peak_systolic_strain_rate_circumferential_11,
                    peak_systolic_strain_rate_circumferential_12,
                    peak_systolic_strain_rate_circumferential_13,
                    peak_systolic_strain_rate_circumferential_14,
                    peak_systolic_strain_rate_circumferential_15,
                    peak_systolic_strain_rate_circumferential_16,
                    peak_systolic_strain_rate_longitudinal_1,
                    peak_systolic_strain_rate_longitudinal_2,
                    peak_systolic_strain_rate_longitudinal_3,
                    peak_systolic_strain_rate_longitudinal_4,
                    peak_systolic_strain_rate_longitudinal_5,
                    peak_systolic_strain_rate_longitudinal_6,
                    peak_systolic_strain_rate_longitudinal_7,
                    peak_systolic_strain_rate_longitudinal_8,
                    peak_systolic_strain_rate_longitudinal_9,
                    peak_systolic_strain_rate_longitudinal_10,
                    peak_systolic_strain_rate_longitudinal_11,
                    peak_systolic_strain_rate_longitudinal_12,
                    peak_systolic_strain_rate_longitudinal_13,
                    peak_systolic_strain_rate_longitudinal_14,
                    peak_systolic_strain_rate_longitudinal_15,
                    peak_systolic_strain_rate_longitudinal_16,
                    peak_diastolic_strain_rate_radial_1,
                    peak_diastolic_strain_rate_radial_2,
                    peak_diastolic_strain_rate_radial_3,
                    peak_diastolic_strain_rate_radial_4,
                    peak_diastolic_strain_rate_radial_5,
                    peak_diastolic_strain_rate_radial_6,
                    peak_diastolic_strain_rate_radial_7,
                    peak_diastolic_strain_rate_radial_8,
                    peak_diastolic_strain_rate_radial_9,
                    peak_diastolic_strain_rate_radial_10,
                    peak_diastolic_strain_rate_radial_11,
                    peak_diastolic_strain_rate_radial_12,
                    peak_diastolic_strain_rate_radial_13,
                    peak_diastolic_strain_rate_radial_14,
                    peak_diastolic_strain_rate_radial_15,
                    peak_diastolic_strain_rate_radial_16,
                    peak_diastolic_strain_rate_circumferential_1,
                    peak_diastolic_strain_rate_circumferential_2,
                    peak_diastolic_strain_rate_circumferential_3,
                    peak_diastolic_strain_rate_circumferential_4,
                    peak_diastolic_strain_rate_circumferential_5,
                    peak_diastolic_strain_rate_circumferential_6,
                    peak_diastolic_strain_rate_circumferential_7,
                    peak_diastolic_strain_rate_circumferential_8,
                    peak_diastolic_strain_rate_circumferential_9,
                    peak_diastolic_strain_rate_circumferential_10,
                    peak_diastolic_strain_rate_circumferential_11,
                    peak_diastolic_strain_rate_circumferential_12,
                    peak_diastolic_strain_rate_circumferential_13,
                    peak_diastolic_strain_rate_circumferential_14,
                    peak_diastolic_strain_rate_circumferential_15,
                    peak_diastolic_strain_rate_circumferential_16,
                    peak_diastolic_strain_rate_longitudinal_1,
                    peak_diastolic_strain_rate_longitudinal_2,
                    peak_diastolic_strain_rate_longitudinal_3,
                    peak_diastolic_strain_rate_longitudinal_4,
                    peak_diastolic_strain_rate_longitudinal_5,
                    peak_diastolic_strain_rate_longitudinal_6,
                    peak_diastolic_strain_rate_longitudinal_7,
                    peak_diastolic_strain_rate_longitudinal_8,
                    peak_diastolic_strain_rate_longitudinal_9,
                    peak_diastolic_strain_rate_longitudinal_10,
                    peak_diastolic_strain_rate_longitudinal_11,
                    peak_diastolic_strain_rate_longitudinal_12,
                    peak_diastolic_strain_rate_longitudinal_13,
                    peak_diastolic_strain_rate_longitudinal_14,
                    peak_diastolic_strain_rate_longitudinal_15,
                    peak_diastolic_strain_rate_longitudinal_16,
                    peak_displacement_radial_1,
                    peak_displacement_radial_2,
                    peak_displacement_radial_3,
                    peak_displacement_radial_4,
                    peak_displacement_radial_5,
                    peak_displacement_radial_6,
                    peak_displacement_radial_7,
                    peak_displacement_radial_8,
                    peak_displacement_radial_9,
                    peak_displacement_radial_10,
                    peak_displacement_radial_11,
                    peak_displacement_radial_12,
                    peak_displacement_radial_13,
                    peak_displacement_radial_14,
                    peak_displacement_radial_15,
                    peak_displacement_radial_16,
                    peak_displacement_circumferential_1,
                    peak_displacement_circumferential_2,
                    peak_displacement_circumferential_3,
                    peak_displacement_circumferential_4,
                    peak_displacement_circumferential_5,
                    peak_displacement_circumferential_6,
                    peak_displacement_circumferential_7,
                    peak_displacement_circumferential_8,
                    peak_displacement_circumferential_9,
                    peak_displacement_circumferential_10,
                    peak_displacement_circumferential_11,
                    peak_displacement_circumferential_12,
                    peak_displacement_circumferential_13,
                    peak_displacement_circumferential_14,
                    peak_displacement_circumferential_15,
                    peak_displacement_circumferential_16,
                    peak_displacement_longitudinal_1,
                    peak_displacement_longitudinal_2,
                    peak_displacement_longitudinal_3,
                    peak_displacement_longitudinal_4,
                    peak_displacement_longitudinal_5,
                    peak_displacement_longitudinal_6,
                    peak_displacement_longitudinal_7,
                    peak_displacement_longitudinal_8,
                    peak_displacement_longitudinal_9,
                    peak_displacement_longitudinal_10,
                    peak_displacement_longitudinal_11,
                    peak_displacement_longitudinal_12,
                    peak_displacement_longitudinal_13,
                    peak_displacement_longitudinal_14,
                    peak_displacement_longitudinal_15,
                    peak_displacement_longitudinal_16,
                    peak_systolic_velocity_radial_1,
                    peak_systolic_velocity_radial_2,
                    peak_systolic_velocity_radial_3,
                    peak_systolic_velocity_radial_4,
                    peak_systolic_velocity_radial_5,
                    peak_systolic_velocity_radial_6,
                    peak_systolic_velocity_radial_7,
                    peak_systolic_velocity_radial_8,
                    peak_systolic_velocity_radial_9,
                    peak_systolic_velocity_radial_10,
                    peak_systolic_velocity_radial_11,
                    peak_systolic_velocity_radial_12,
                    peak_systolic_velocity_radial_13,
                    peak_systolic_velocity_radial_14,
                    peak_systolic_velocity_radial_15,
                    peak_systolic_velocity_radial_16,
                    peak_systolic_velocity_circumferential_1,
                    peak_systolic_velocity_circumferential_2,
                    peak_systolic_velocity_circumferential_3,
                    peak_systolic_velocity_circumferential_4,
                    peak_systolic_velocity_circumferential_5,
                    peak_systolic_velocity_circumferential_6,
                    peak_systolic_velocity_circumferential_7,
                    peak_systolic_velocity_circumferential_8,
                    peak_systolic_velocity_circumferential_9,
                    peak_systolic_velocity_circumferential_10,
                    peak_systolic_velocity_circumferential_11,
                    peak_systolic_velocity_circumferential_12,
                    peak_systolic_velocity_circumferential_13,
                    peak_systolic_velocity_circumferential_14,
                    peak_systolic_velocity_circumferential_15,
                    peak_systolic_velocity_circumferential_16,
                    peak_systolic_velocity_longitudinal_1,
                    peak_systolic_velocity_longitudinal_2,
                    peak_systolic_velocity_longitudinal_3,
                    peak_systolic_velocity_longitudinal_4,
                    peak_systolic_velocity_longitudinal_5,
                    peak_systolic_velocity_longitudinal_6,
                    peak_systolic_velocity_longitudinal_7,
                    peak_systolic_velocity_longitudinal_8,
                    peak_systolic_velocity_longitudinal_9,
                    peak_systolic_velocity_longitudinal_10,
                    peak_systolic_velocity_longitudinal_11,
                    peak_systolic_velocity_longitudinal_12,
                    peak_systolic_velocity_longitudinal_13,
                    peak_systolic_velocity_longitudinal_14,
                    peak_systolic_velocity_longitudinal_15,
                    peak_systolic_velocity_longitudinal_16,
                    peak_diastolic_velocity_radial_1,
                    peak_diastolic_velocity_radial_2,
                    peak_diastolic_velocity_radial_3,
                    peak_diastolic_velocity_radial_4,
                    peak_diastolic_velocity_radial_5,
                    peak_diastolic_velocity_radial_6,
                    peak_diastolic_velocity_radial_7,
                    peak_diastolic_velocity_radial_8,
                    peak_diastolic_velocity_radial_9,
                    peak_diastolic_velocity_radial_10,
                    peak_diastolic_velocity_radial_11,
                    peak_diastolic_velocity_radial_12,
                    peak_diastolic_velocity_radial_13,
                    peak_diastolic_velocity_radial_14,
                    peak_diastolic_velocity_radial_15,
                    peak_diastolic_velocity_radial_16,
                    peak_diastolic_velocity_circumferential_1,
                    peak_diastolic_velocity_circumferential_2,
                    peak_diastolic_velocity_circumferential_3,
                    peak_diastolic_velocity_circumferential_4,
                    peak_diastolic_velocity_circumferential_5,
                    peak_diastolic_velocity_circumferential_6,
                    peak_diastolic_velocity_circumferential_7,
                    peak_diastolic_velocity_circumferential_8,
                    peak_diastolic_velocity_circumferential_9,
                    peak_diastolic_velocity_circumferential_10,
                    peak_diastolic_velocity_circumferential_11,
                    peak_diastolic_velocity_circumferential_12,
                    peak_diastolic_velocity_circumferential_13,
                    peak_diastolic_velocity_circumferential_14,
                    peak_diastolic_velocity_circumferential_15,
                    peak_diastolic_velocity_circumferential_16,
                    peak_diastolic_velocity_longitudinal_1,
                    peak_diastolic_velocity_longitudinal_2,
                    peak_diastolic_velocity_longitudinal_3,
                    peak_diastolic_velocity_longitudinal_4,
                    peak_diastolic_velocity_longitudinal_5,
                    peak_diastolic_velocity_longitudinal_6,
                    peak_diastolic_velocity_longitudinal_7,
                    peak_diastolic_velocity_longitudinal_8,
                    peak_diastolic_velocity_longitudinal_9,
                    peak_diastolic_velocity_longitudinal_10,
                    peak_diastolic_velocity_longitudinal_11,
                    peak_diastolic_velocity_longitudinal_12,
                    peak_diastolic_velocity_longitudinal_13,
                    peak_diastolic_velocity_longitudinal_14,
                    peak_diastolic_velocity_longitudinal_15,
                    peak_diastolic_velocity_longitudinal_16)


  if(cmr$gender=="M") cmr$gender <- "1" else cmr$gender <- "2"
  
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
#toredcap$record_id <- NULL

# Save output_data to a file or database
#source("var_handler.r")
write_csv(toredcap, "raw/toredcap_nanull.csv", na = "")

common_vars <- intersect(names(toredcap), names(cmr))
cmrdata <- toredcap[, common_vars]

toredcap <<- toredcap
nms <<- nms