library(xml2)
library(XML)
library(readr)
require(tidyverse)
library(xmlconvert)
library(dplyr)

toredcap <- script_env$toredcap
filelist <-  readLines("filelist.txt") #"strain/4138291 strain.xml"#

for (file in filelist) {
  
  patient <- as_list(read_xml(file))
  patient_df <- tibble::as_tibble(patient) # %>%
  #  unnest_longer(Report,names_repair = "universal") # unneeded
  procedure_name_fup <- attr(patient_df$Report$Study$StudyDescription, which="val")
  record_id	<- attr(patient_df$Report$Patient$PatientID, which = "val")  
  nhs_number	<- attr(patient_df$Report$Patient$RETIRED_OtherPatientIDs, which = "val")
  date_of_birth	<- attr(patient_df$Report$Patient$BirthDate, which = "val")
  gender	<- attr(patient_df$Report$Patient$Sex, which = "val")
  height	<- attr(patient_df$Report$Patient$Height, which = "val")
  weight	<- attr(patient_df$Report$Patient$Weight, which = "val")
  date_cmr_fup	<- attr(patient_df$Report$Study$StudyDate, which = "val")
  hr_cmr_fup	<- attr(patient_df$Report$Patient$HeartRate, which = "val")
  lvedv_cmr_fup <- attr(patient_df$Report$SAX3DFunction$LV$EDV, which = "val")
  lvesv_cmr_fup <- attr(patient_df$Report$SAX3DFunction$LV$ESV, which = "val")
  lvsv_cmr_fup <- attr(patient_df$Report$SAX3DFunction$LV$SV, which = "val")
  lvef_cmr_fup <- attr(patient_df$Report$SAX3DFunction$LV$EF, which = "val")
  lv_mass_cmr_fup <- attr(patient_df$Report$SAX3DFunction$LV$MyoMass_diast, which = "val")
  rvedv_cmr_fup <- attr(patient_df$Report$SAX3DFunction$RV$EDV, which = "val")
  rvesv_cmr_fup <- attr(patient_df$Report$SAX3DFunction$RV$ESV, which = "val")
  rvsv_cmr_fup <- attr(patient_df$Report$SAX3DFunction$RV$SV, which = "val")
  rvef_cmr_fup <- attr(patient_df$Report$SAX3DFunction$RV$EF, which = "val")
  # mapseinf_cmr_fup <- attr(patient_df$Report$LvFunction$Monoplanar2CV$Mapse, which = "val") 
  # mapseant_cmr_fup <- attr(patient_df$Report$LvFunction$Monoplanar2CV$Mapse[2], which = "val") # no way to derive anterior + septal MAPSE
  mapselat_cmr_fup	<- attr(patient_df$Report$BiTriPlanarFunction$Monoplanar4CV$Mapse, which = "val")
  
  # mapsesep_cmr	<- attr(patient_df$Report$LvFunction$Monoplanar4CV$Mapse[2], which = "val") # no way to derive anterior + septal MAPSE
  tapse_cmr_fup <- attr(patient_df$Report$BiTriPlanarFunction$Monoplanar4CV$Tapse, which = "val")
  min_la_vol_cmr_fup <- attr(patient_df$Report$BiTriPlanarFunction$Biplanar$MinLeftAtrialVolume, which = "val")
  max_la_vol_cmr_fup <- attr(patient_df$Report$BiTriPlanarFunction$Biplanar$MaxLeftAtrialVolume, which = "val")
  la_ef_cmr_fup <- attr(patient_df$Report$BiTriPlanarFunction$Biplanar$LeftAtrialEjectionFraction, which = "val")
  
  #average_lv_long_axis_strain_cmr_fup <- attr(patient_df$, which = "val")
  # average_lv_long_axis_difference_cmr_fup <- attr(patient_df$Report$, which = "val")
  average_la_long_axis_strain_cmr_fup <- attr(patient_df$Report$BiTriPlanarFunction$Biplanar$AverageLeftAtrialLaxStrain, which = "val")
  average_la_long_axis_difference_cmr_fup <- attr(patient_df$Report$BiTriPlanarFunction$Biplanar$AverageLeftAtrialLaxDifference, which = "val")
  # lv_long_axis_strain_2ch_cmr_fup <- attr(patient_df$Report$, which = "val")
  # lv_long_axis_difference_2ch_cmr_fup <- attr(patient_df$Report$, which = "val")
  
  #la_long_axis_strain_2ch_cmr_fup <- attr(patient_df$Report$BiTriPlanarFunction$Biplanar$, which = "val")
  
  #la_long_axis_difference_2ch_cmr_fup <- attr(patient_df$Report$BiTriPlanarFunction$Monoplanar2CV$, which = "val")
  #la_av_junction_strain_2ch_cmr_fup <- attr(patient_df$Report$BiTriPlanarFunction$AtrialStrain$Atrium$AtrioVentricularJunctionStrain, which = "val")
  #la_av_junction_difference_2ch_cmr_fup <- attr(patient_df$Report$BiTriPlanarFunction$AtrialStrain$Atrium$AtrioVentricularJunctionDifference, which = "val")
  # lv_la_strain_4ch_cmr_fup <- attr(patient_df$Report$, which = "val")
  #la_la_strain_4ch_cmr_fup <- attr(patient_df$Report$BiTriPlanarFunction$LongAxisStrainGraphResults$frame$LeftAtrioVentricular4CvStrain, which = "val")
  # lv_la_difference_4ch_cmr_fup <- attr(patient_df$Report$, which = "val")
  #la_la_difference_4ch_cmr_fup <- attr(patient_df$Report$BiTriPlanarFunction$AtrialStrain$Atrium$LaxDifference, which = "val")
  #ra_la_strain_4ch_cmr_fup <- attr(patient_df$Report$BiTriPlanarFunction$, which = "val")
  #ra_la_difference_4ch_cmr_fup <- attr(patient_df$Report$, which = "val")
  #la_av_junction_strain_4ch_cmr_fup <- attr(patient_df$Report$, which = "val")
  #la_av_junction_difference_4ch_cmr_fup <- attr(patient_df$Report$, which = "val")
  #sax_gcs_cmr_fup <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_2DGlobalResults$SAX_GlobalPeakStrainCircumferential, which = "val")
  #sax_grs_cmr_fup <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_2DGlobalResults$SAX_GlobalPeakStrainRadial, which = "val")
  #lax_gls_cmr_fup <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_2DGlobalResults$LAX_GlobalPeakStrainLongitudinal, which = "val")
  #lax_grs_cmr_fup <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_2DGlobalResults$LAX_GlobalPeakStrainRadial, which = "val")
  
  #total_forward_volume_ao_cmr_fup <- attr(patient_df$Report$FlowComparisonReport$FLOW1$FlowReport$Analysis$ROI$FlowVolume$Forward, which = "val")
  #total_backward_volume_ao_cmr_fup <- attr(patient_df$Report$FlowComparisonReport$FLOW1$FlowReport$Analysis$ROI$FlowVolume$Backward, which = "val")
  #total_volume_ao_cmr_fup <- attr(patient_df$Report$FlowComparisonReport$FLOW1$FlowReport$Analysis$ROI$FlowVolume$Total, which = "val")
  #regurgitation_fraction_ao_cmr_fup <- attr(patient_df$Report$FlowComparisonReport$FLOW1$FlowReport$Analysis$ROI$RegurgitationFraction, which = "val")
  #vol_min_ao_cmr_fup <- attr(patient_df$Report$FlowComparisonReport$FLOW1$FlowReport$Analysis$ROI$MINVOL, which = "val")
  #max_pressure_gradient_ao_cmr_fup <- attr(patient_df$Report$FlowComparisonReport$FLOW1$FlowReport$Analysis$ROI$MaxPressureGradient, which = "val")
  #mean_pressure_gradient_ao_cmr_fup <- attr(patient_df$Report$FlowComparisonReport$FLOW1$FlowReport$Analysis$ROI$MeanPressureGradient, which = "val")
  #maximum_velocity_ao_cmr_fup <- attr(patient_df$Report$FlowComparisonReport$FLOW1$FlowReport$Analysis$ROI$VelocityExtrema, which = "max")
  
  # mr_cmr_fup <- attr(patient_df$Report$, which = "val")
  # mr_fraction_cmr_fup <- attr(patient_df$Report$, which = "val")
  # mr_vol_cmr_fup <- attr(patient_df$Report$, which = "val")
  
  #total_forward_volume_pa_cmr_fup <- attr(patient_df$Report$FlowComparisonReport$FLOW2$FlowReport$Analysis$ROI$FlowVolume$Forward, which = "val")
  #  total_backward_volume_pa_cmr_fup <- attr(patient_df$Report$FlowComparisonReport$FLOW2$FlowReport$Analysis$ROI$FlowVolume$Backward, which = "val")
  # total_volume_pa_cmr_fup <- attr(patient_df$Report$FlowComparisonReport$FLOW2$FlowReport$Analysis$ROI$FlowVolume$Total, which = "val")
  #  regurgitation_fraction_pa_cmr_fup <- attr(patient_df$Report$FlowComparisonReport$FLOW2$FlowReport$Analysis$ROI$RegurgitationFraction, which = "val")
  #  vol_min_pa_cmr_fup <- attr(patient_df$Report$FlowComparisonReport$FLOW2$FlowReport$Analysis$ROI$MINVOL, which = "val")
  #  max_pressure_gradient_pa_cmr_fup <- attr(patient_df$Report$FlowComparisonReport$FLOW2$FlowReport$Analysis$ROI$MaxPressureGradient, which = "val")
  #  mean_pressure_gradient_pa_cmr_fup <- attr(patient_df$Report$FlowComparisonReport$FLOW2$FlowReport$Analysis$ROI$MeanPressureGradient, which = "val")
  #  maximum_velocity_pa_cmr_fup <- attr(patient_df$Report$FlowComparisonReport$FLOW2$FlowReport$Analysis$ROI$VelocityExtrema, which = "max")
  
  #tr_cmr_fup <- attr(patient_df$Report$, which = "val")
  #tr_fraction_cmr_fup <- attr(patient_df$Report$, which = "val")
  #tr_vol_cmr_fup <- attr(patient_df$Report$, which = "val")
  
  #  qp_qs_cmr_fup <- attr(patient_df$Report$FlowComparisonReport$Comparison_FLOW1_FLOW2$Ratio_TotalVolume_FLOW2_FLOW1, which = "val")
  
  #basal_peak_strain_radial_fup <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_3DGlobalResults$Basal, which = "PeakStrainRadial")
  #mid_peak_strain_radial_fup <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_3DGlobalResults$Mid, which = "PeakStrainRadial")
  #apical_peak_strain_radial_fup <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_3DGlobalResults$Apical, which = "PeakStrainRadial")
  #global_peak_strain_radial_fup <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_3DGlobalResults$Global, which = "PeakStrainRadial")
  peak_strain_radial_1_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainRadial$ahaSeg1, which = "val")
  peak_strain_radial_2_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainRadial$ahaSeg2, which = "val")
  peak_strain_radial_3_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainRadial$ahaSeg3, which = "val")
  peak_strain_radial_4_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainRadial$ahaSeg4, which = "val")
  peak_strain_radial_5_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainRadial$ahaSeg5, which = "val")
  peak_strain_radial_6_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainRadial$ahaSeg6, which = "val")
  peak_strain_radial_7_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainRadial$ahaSeg7, which = "val")
  peak_strain_radial_8_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainRadial$ahaSeg8, which = "val")
  peak_strain_radial_9_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainRadial$ahaSeg9, which = "val")
  peak_strain_radial_10_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainRadial$ahaSeg10, which = "val")
  peak_strain_radial_11_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainRadial$ahaSeg11, which = "val")
  peak_strain_radial_12_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainRadial$ahaSeg12, which = "val")
  peak_strain_radial_13_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainRadial$ahaSeg13, which = "val")
  peak_strain_radial_14_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainRadial$ahaSeg14, which = "val")
  peak_strain_radial_15_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainRadial$ahaSeg15, which = "val")
  peak_strain_radial_16_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainRadial$ahaSeg16, which = "val")
  #basal_peak_strain_circumferential_fup <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_3DGlobalResults$Basal, which = "PeakStrainCircumferential")
  #mid_peak_strain_circumferential_fup <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_3DGlobalResults$Mid, which = "PeakStrainCircumferential")
  #apical_peak_strain_circumferential_fup <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_2DGlobalResults$Apical, which = "PeakStrainCircumferential")
  #global_peak_strain_circumferential_fup <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_3DGlobalResults$Global, which = "PeakStrainCircumferential")
  peak_strain_circumferential_1_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainCircumferential$ahaSeg1, which = "val")
  peak_strain_circumferential_2_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainCircumferential$ahaSeg2, which = "val")
  peak_strain_circumferential_3_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainCircumferential$ahaSeg3, which = "val")
  peak_strain_circumferential_4_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainCircumferential$ahaSeg4, which = "val")
  peak_strain_circumferential_5_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainCircumferential$ahaSeg5, which = "val")
  peak_strain_circumferential_6_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainCircumferential$ahaSeg6, which = "val")
  peak_strain_circumferential_7_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainCircumferential$ahaSeg7, which = "val")
  peak_strain_circumferential_8_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainCircumferential$ahaSeg8, which = "val")
  peak_strain_circumferential_9_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainCircumferential$ahaSeg9, which = "val")
  peak_strain_circumferential_10_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainCircumferential$ahaSeg10, which = "val")
  peak_strain_circumferential_11_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainCircumferential$ahaSeg11, which = "val")
  peak_strain_circumferential_12_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainCircumferential$ahaSeg12, which = "val")
  peak_strain_circumferential_13_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainCircumferential$ahaSeg13, which = "val")
  peak_strain_circumferential_14_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainCircumferential$ahaSeg14, which = "val")
  peak_strain_circumferential_15_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainCircumferential$ahaSeg15, which = "val")
  peak_strain_circumferential_16_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainCircumferential$ahaSeg16, which = "val")
  #basal_peak_strain_longitudinal_fup <- attr(patient_df$, which = "val")
  #mid_peak_strain_longitudinal_fup <- attr(patient_df$, which = "val")
  #apical_peak_strain_longitudinal_fup <- attr(patient_df$, which = "val")
  #global_peak_strain_longitudinal_fup <- attr(patient_df$, which = "val")
  peak_strain_longitudinal_1_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainLongitudinal$ahaSeg1, which = "val")
  peak_strain_longitudinal_2_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainLongitudinal$ahaSeg2, which = "val")
  peak_strain_longitudinal_3_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainLongitudinal$ahaSeg3, which = "val")
  peak_strain_longitudinal_4_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainLongitudinal$ahaSeg4, which = "val")
  peak_strain_longitudinal_5_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainLongitudinal$ahaSeg5, which = "val")
  peak_strain_longitudinal_6_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainLongitudinal$ahaSeg6, which = "val")
  peak_strain_longitudinal_7_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainLongitudinal$ahaSeg7, which = "val")
  peak_strain_longitudinal_8_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainLongitudinal$ahaSeg8, which = "val")
  peak_strain_longitudinal_9_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainLongitudinal$ahaSeg9, which = "val")
  peak_strain_longitudinal_10_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainLongitudinal$ahaSeg10, which = "val")
  peak_strain_longitudinal_11_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainLongitudinal$ahaSeg11, which = "val")
  peak_strain_longitudinal_12_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainLongitudinal$ahaSeg12, which = "val")
  peak_strain_longitudinal_13_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainLongitudinal$ahaSeg13, which = "val")
  peak_strain_longitudinal_14_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainLongitudinal$ahaSeg14, which = "val")
  peak_strain_longitudinal_15_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainLongitudinal$ahaSeg15, which = "val")
  peak_strain_longitudinal_16_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakStrainLongitudinal$ahaSeg16, which = "val")
  #basal_time_to_peak_radial_fup <- attr(patient_df$, which = "val")
  #mid_time_to_peak_radial_fup <- attr(patient_df$, which = "val")
  #apical_time_to_peak_radial_fup <- attr(patient_df$, which = "val")
  #global_time_to_peak_radial_fup <- attr(patient_df$, which = "val")
  time_to_peak_radial_1_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainRadial$ahaSeg1, which = "val")
  time_to_peak_radial_2_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainRadial$ahaSeg2, which = "val")
  time_to_peak_radial_3_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainRadial$ahaSeg3, which = "val")
  time_to_peak_radial_4_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainRadial$ahaSeg4, which = "val")
  time_to_peak_radial_5_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainRadial$ahaSeg5, which = "val")
  time_to_peak_radial_6_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainRadial$ahaSeg6, which = "val")
  time_to_peak_radial_7_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainRadial$ahaSeg7, which = "val")
  time_to_peak_radial_8_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainRadial$ahaSeg8, which = "val")
  time_to_peak_radial_9_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainRadial$ahaSeg9, which = "val")
  time_to_peak_radial_10_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainRadial$ahaSeg10, which = "val")
  time_to_peak_radial_11_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainRadial$ahaSeg11, which = "val")
  time_to_peak_radial_12_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainRadial$ahaSeg12, which = "val")
  time_to_peak_radial_13_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainRadial$ahaSeg13, which = "val")
  time_to_peak_radial_14_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainRadial$ahaSeg14, which = "val")
  time_to_peak_radial_15_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainRadial$ahaSeg15, which = "val")
  time_to_peak_radial_16_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainRadial$ahaSeg16, which = "val")
  #basal_time_to_peak_circumferential_fup <- attr(patient_df$, which = "val")
  #mid_time_to_peak_circumferential_fup <- attr(patient_df$, which = "val")
  #apical_time_to_peak_circumferential_fup <- attr(patient_df$, which = "val")
  #global_time_to_peak_circumferential_fup <- attr(patient_df$, which = "val")
  time_to_peak_circumferential_1_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainCircumferential$ahaSeg1, which = "val")
  time_to_peak_circumferential_2_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainCircumferential$ahaSeg2, which = "val")
  time_to_peak_circumferential_3_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainCircumferential$ahaSeg3, which = "val")
  time_to_peak_circumferential_4_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainCircumferential$ahaSeg4, which = "val")
  time_to_peak_circumferential_5_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainCircumferential$ahaSeg5, which = "val")
  time_to_peak_circumferential_6_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainCircumferential$ahaSeg6, which = "val")
  time_to_peak_circumferential_7_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainCircumferential$ahaSeg7, which = "val")
  time_to_peak_circumferential_8_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainCircumferential$ahaSeg8, which = "val")
  time_to_peak_circumferential_9_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainCircumferential$ahaSeg9, which = "val")
  time_to_peak_circumferential_10_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainCircumferential$ahaSeg10, which = "val")
  time_to_peak_circumferential_11_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainCircumferential$ahaSeg11, which = "val")
  time_to_peak_circumferential_12_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainCircumferential$ahaSeg12, which = "val")
  time_to_peak_circumferential_13_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainCircumferential$ahaSeg13, which = "val")
  time_to_peak_circumferential_14_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainCircumferential$ahaSeg14, which = "val")
  time_to_peak_circumferential_15_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainCircumferential$ahaSeg15, which = "val")
  time_to_peak_circumferential_16_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainCircumferential$ahaSeg16, which = "val")
  #basal_time_to_peak_longitudinal_fup <- attr(patient_df$, which = "val")
  #mid_time_to_peak_longitudinal_fup <- attr(patient_df$, which = "val")
  #apical_time_to_peak_longitudinal_fup <- attr(patient_df$, which = "val")
  #global_time_to_peak_longitudinal_fup <- attr(patient_df$, which = "val")
  time_to_peak_longitudinal_1_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainLongitudinal$ahaSeg1, which = "val")
  time_to_peak_longitudinal_2_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainLongitudinal$ahaSeg2, which = "val")
  time_to_peak_longitudinal_3_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainLongitudinal$ahaSeg3, which = "val")
  time_to_peak_longitudinal_4_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainLongitudinal$ahaSeg4, which = "val")
  time_to_peak_longitudinal_5_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainLongitudinal$ahaSeg5, which = "val")
  time_to_peak_longitudinal_6_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainLongitudinal$ahaSeg6, which = "val")
  time_to_peak_longitudinal_7_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainLongitudinal$ahaSeg7, which = "val")
  time_to_peak_longitudinal_8_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainLongitudinal$ahaSeg8, which = "val")
  time_to_peak_longitudinal_9_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainLongitudinal$ahaSeg9, which = "val")
  time_to_peak_longitudinal_10_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainLongitudinal$ahaSeg10, which = "val")
  time_to_peak_longitudinal_11_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainLongitudinal$ahaSeg11, which = "val")
  time_to_peak_longitudinal_12_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainLongitudinal$ahaSeg12, which = "val")
  time_to_peak_longitudinal_13_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainLongitudinal$ahaSeg13, which = "val")
  time_to_peak_longitudinal_14_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainLongitudinal$ahaSeg14, which = "val")
  time_to_peak_longitudinal_15_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainLongitudinal$ahaSeg15, which = "val")
  time_to_peak_longitudinal_16_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$TimeToPeakStrainLongitudinal$ahaSeg16, which = "val")
  #basal_peak_systolic_strain_rate_radial_fup <- attr(, which = "val")
  #mid_peak_systolic_strain_rate_radial_fup <- attr(patient_df$, which = "val")
  #apical_peak_systolic_strain_rate_radial_fup <- attr(patient_df$, which = "val")
  #global_peak_systolic_strain_rate_radial_fup <- attr(patient_df$, which = "val")
  peak_systolic_strain_rate_radial_1_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateRadial$ahaSeg1, which = "val")
  peak_systolic_strain_rate_radial_2_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateRadial$ahaSeg2, which = "val")
  peak_systolic_strain_rate_radial_3_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateRadial$ahaSeg3, which = "val")
  peak_systolic_strain_rate_radial_4_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateRadial$ahaSeg4, which = "val")
  peak_systolic_strain_rate_radial_5_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateRadial$ahaSeg5, which = "val")
  peak_systolic_strain_rate_radial_6_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateRadial$ahaSeg6, which = "val")
  peak_systolic_strain_rate_radial_7_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateRadial$ahaSeg7, which = "val")
  peak_systolic_strain_rate_radial_8_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateRadial$ahaSeg8, which = "val")
  peak_systolic_strain_rate_radial_9_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateRadial$ahaSeg9, which = "val")
  peak_systolic_strain_rate_radial_10_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateRadial$ahaSeg10, which = "val")
  peak_systolic_strain_rate_radial_11_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateRadial$ahaSeg11, which = "val")
  peak_systolic_strain_rate_radial_12_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateRadial$ahaSeg12, which = "val")
  peak_systolic_strain_rate_radial_13_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateRadial$ahaSeg13, which = "val")
  peak_systolic_strain_rate_radial_14_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateRadial$ahaSeg14, which = "val")
  peak_systolic_strain_rate_radial_15_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateRadial$ahaSeg15, which = "val")
  peak_systolic_strain_rate_radial_16_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateRadial$ahaSeg16, which = "val")
  #basal_peak_systolic_strain_rate_circumferential_fup <- attr(patient_df$, which = "val")
  #mid_peak_systolic_strain_rate_circumferential_fup <- attr(patient_df$, which = "val")
  #apical_peak_systolic_strain_rate_circumferential_fup <- attr(patient_df$, which = "val")
  #global_peak_systolic_strain_rate_circumferential_fup <- attr(patient_df$, which = "val")
  peak_systolic_strain_rate_circumferential_1_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateCircumferential$ahaSeg1, which = "val")
  peak_systolic_strain_rate_circumferential_2_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateCircumferential$ahaSeg2, which = "val")
  peak_systolic_strain_rate_circumferential_3_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateCircumferential$ahaSeg3, which = "val")
  peak_systolic_strain_rate_circumferential_4_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateCircumferential$ahaSeg4, which = "val")
  peak_systolic_strain_rate_circumferential_5_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateCircumferential$ahaSeg5, which = "val")
  peak_systolic_strain_rate_circumferential_6_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateCircumferential$ahaSeg6, which = "val")
  peak_systolic_strain_rate_circumferential_7_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateCircumferential$ahaSeg7, which = "val")
  peak_systolic_strain_rate_circumferential_8_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateCircumferential$ahaSeg8, which = "val")
  peak_systolic_strain_rate_circumferential_9_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateCircumferential$ahaSeg9, which = "val")
  peak_systolic_strain_rate_circumferential_10_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateCircumferential$ahaSeg10, which = "val")
  peak_systolic_strain_rate_circumferential_11_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateCircumferential$ahaSeg11, which = "val")
  peak_systolic_strain_rate_circumferential_12_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateCircumferential$ahaSeg12, which = "val")
  peak_systolic_strain_rate_circumferential_13_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateCircumferential$ahaSeg13, which = "val")
  peak_systolic_strain_rate_circumferential_14_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateCircumferential$ahaSeg14, which = "val")
  peak_systolic_strain_rate_circumferential_15_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateCircumferential$ahaSeg15, which = "val")
  peak_systolic_strain_rate_circumferential_16_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateCircumferential$ahaSeg16, which = "val")
  #basal_peak_systolic_strain_rate_longitudinal_fup <- attr(patient_df$, which = "val")
  #mid_peak_systolic_strain_rate_longitudinal_fup <- attr(patient_df$, which = "val")
  #apical_peak_systolic_strain_rate_longitudinal_fup <- attr(patient_df$, which = "val")
  #global_peak_systolic_strain_rate_longitudinal_fup <- attr(patient_df$, which = "val")
  peak_systolic_strain_rate_longitudinal_1_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateLongitudinal$ahaSeg1, which = "val")
  peak_systolic_strain_rate_longitudinal_2_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateLongitudinal$ahaSeg2, which = "val")
  peak_systolic_strain_rate_longitudinal_3_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateLongitudinal$ahaSeg3, which = "val")
  peak_systolic_strain_rate_longitudinal_4_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateLongitudinal$ahaSeg4, which = "val")
  peak_systolic_strain_rate_longitudinal_5_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateLongitudinal$ahaSeg5, which = "val")
  peak_systolic_strain_rate_longitudinal_6_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateLongitudinal$ahaSeg6, which = "val")
  peak_systolic_strain_rate_longitudinal_7_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateLongitudinal$ahaSeg7, which = "val")
  peak_systolic_strain_rate_longitudinal_8_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateLongitudinal$ahaSeg8, which = "val")
  peak_systolic_strain_rate_longitudinal_9_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateLongitudinal$ahaSeg9, which = "val")
  peak_systolic_strain_rate_longitudinal_10_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateLongitudinal$ahaSeg10, which = "val")
  peak_systolic_strain_rate_longitudinal_11_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateLongitudinal$ahaSeg11, which = "val")
  peak_systolic_strain_rate_longitudinal_12_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateLongitudinal$ahaSeg12, which = "val")
  peak_systolic_strain_rate_longitudinal_13_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateLongitudinal$ahaSeg13, which = "val")
  peak_systolic_strain_rate_longitudinal_14_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateLongitudinal$ahaSeg14, which = "val")
  peak_systolic_strain_rate_longitudinal_15_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateLongitudinal$ahaSeg15, which = "val")
  peak_systolic_strain_rate_longitudinal_16_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicStrainRateLongitudinal$ahaSeg16, which = "val")
  #basal_peak_systolic_strain_rate_radial_fup <- attr(patient_df$, which = "val")
  #mid_peak_systolic_strain_rate_radial_fup <- attr(patient_df$, which = "val")
  #apical_peak_systolic_strain_rate_radial_fup <- attr(patient_df$, which = "val")
  #global_peak_systolic_strain_rate_radial_fup <- attr(patient_df$, which = "val")
  peak_systolic_strain_rate_radial_1_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateRadial$ahaSeg1, which = "val")
  peak_systolic_strain_rate_radial_2_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateRadial$ahaSeg2, which = "val")
  peak_systolic_strain_rate_radial_3_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateRadial$ahaSeg3, which = "val")
  peak_systolic_strain_rate_radial_4_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateRadial$ahaSeg4, which = "val")
  peak_systolic_strain_rate_radial_5_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateRadial$ahaSeg5, which = "val")
  peak_systolic_strain_rate_radial_6_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateRadial$ahaSeg6, which = "val")
  peak_systolic_strain_rate_radial_7_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateRadial$ahaSeg7, which = "val")
  peak_systolic_strain_rate_radial_8_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateRadial$ahaSeg8, which = "val")
  peak_systolic_strain_rate_radial_9_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateRadial$ahaSeg9, which = "val")
  peak_systolic_strain_rate_radial_10_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateRadial$ahaSeg10, which = "val")
  peak_systolic_strain_rate_radial_11_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateRadial$ahaSeg11, which = "val")
  peak_systolic_strain_rate_radial_12_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateRadial$ahaSeg12, which = "val")
  peak_systolic_strain_rate_radial_13_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateRadial$ahaSeg13, which = "val")
  peak_systolic_strain_rate_radial_14_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateRadial$ahaSeg14, which = "val")
  peak_systolic_strain_rate_radial_15_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateRadial$ahaSeg15, which = "val")
  peak_systolic_strain_rate_radial_16_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateRadial$ahaSeg16, which = "val")
  #basal_peak_systolic_strain_rate_circumferential_fup <- attr(patient_df$, which = "val")
  #mid_peak_systolic_strain_rate_circumferential_fup <- attr(patient_df$, which = "val")
  #apical_peak_systolic_strain_rate_circumferential_fup <- attr(patient_df$, which = "val")
  #global_peak_systolic_strain_rate_circumferential_fup <- attr(patient_df$, which = "val")
  peak_systolic_strain_rate_circumferential_1_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateCircumferential$ahaSeg1, which = "val")
  peak_systolic_strain_rate_circumferential_2_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateCircumferential$ahaSeg2, which = "val")
  peak_systolic_strain_rate_circumferential_3_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateCircumferential$ahaSeg3, which = "val")
  peak_systolic_strain_rate_circumferential_4_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateCircumferential$ahaSeg4, which = "val")
  peak_systolic_strain_rate_circumferential_5_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateCircumferential$ahaSeg5, which = "val")
  peak_systolic_strain_rate_circumferential_6_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateCircumferential$ahaSeg6, which = "val")
  peak_systolic_strain_rate_circumferential_7_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateCircumferential$ahaSeg7, which = "val")
  peak_systolic_strain_rate_circumferential_8_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateCircumferential$ahaSeg8, which = "val")
  peak_systolic_strain_rate_circumferential_9_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateCircumferential$ahaSeg9, which = "val")
  peak_systolic_strain_rate_circumferential_10_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateCircumferential$ahaSeg10, which = "val")
  peak_systolic_strain_rate_circumferential_11_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateCircumferential$ahaSeg11, which = "val")
  peak_systolic_strain_rate_circumferential_12_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateCircumferential$ahaSeg12, which = "val")
  peak_systolic_strain_rate_circumferential_13_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateCircumferential$ahaSeg13, which = "val")
  peak_systolic_strain_rate_circumferential_14_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateCircumferential$ahaSeg14, which = "val")
  peak_systolic_strain_rate_circumferential_15_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateCircumferential$ahaSeg15, which = "val")
  peak_systolic_strain_rate_circumferential_16_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateCircumferential$ahaSeg16, which = "val")
  #basal_peak_systolic_strain_rate_longitudinal_fup <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_3DGlobalResults$Basal, which = "PeakDiastolicStrainRateLongitudinal")
  #mid_peak_systolic_strain_rate_longitudinal_fup <- attr(patient_df$, which = "val")
  #apical_peak_systolic_strain_rate_longitudinal_fup <- attr(patient_df$, which = "val")
  #global_peak_systolic_strain_rate_longitudinal_fup <- attr(patient_df$, which = "val")
  peak_systolic_strain_rate_longitudinal_1_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateLongitudinal$ahaSeg1, which = "val")
  peak_systolic_strain_rate_longitudinal_2_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateLongitudinal$ahaSeg2, which = "val")
  peak_systolic_strain_rate_longitudinal_3_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateLongitudinal$ahaSeg3, which = "val")
  peak_systolic_strain_rate_longitudinal_4_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateLongitudinal$ahaSeg4, which = "val")
  peak_systolic_strain_rate_longitudinal_5_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateLongitudinal$ahaSeg5, which = "val")
  peak_systolic_strain_rate_longitudinal_6_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateLongitudinal$ahaSeg6, which = "val")
  peak_systolic_strain_rate_longitudinal_7_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateLongitudinal$ahaSeg7, which = "val")
  peak_systolic_strain_rate_longitudinal_8_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateLongitudinal$ahaSeg8, which = "val")
  peak_systolic_strain_rate_longitudinal_9_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateLongitudinal$ahaSeg9, which = "val")
  peak_systolic_strain_rate_longitudinal_10_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateLongitudinal$ahaSeg10, which = "val")
  peak_systolic_strain_rate_longitudinal_11_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateLongitudinal$ahaSeg11, which = "val")
  peak_systolic_strain_rate_longitudinal_12_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateLongitudinal$ahaSeg12, which = "val")
  peak_systolic_strain_rate_longitudinal_13_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateLongitudinal$ahaSeg13, which = "val")
  peak_systolic_strain_rate_longitudinal_14_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateLongitudinal$ahaSeg14, which = "val")
  peak_systolic_strain_rate_longitudinal_15_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateLongitudinal$ahaSeg15, which = "val")
  peak_systolic_strain_rate_longitudinal_16_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicStrainRateLongitudinal$ahaSeg16, which = "val")
  #basal_peak_displacement_radial_fup <- attr(patient_df$, which = "val")
  #mid_peak_displacement_radial_fup <- attr(patient_df$, which = "val")
  #apical_peak_displacement_radial_fup <- attr(patient_df$, which = "val")
  #global_peak_displacement_radial_fup <- attr(patient_df$, which = "val")
  peak_displacement_radial_1_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementRadial$ahaSeg1, which = "val")
  peak_displacement_radial_2_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementRadial$ahaSeg2, which = "val")
  peak_displacement_radial_3_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementRadial$ahaSeg3, which = "val")
  peak_displacement_radial_4_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementRadial$ahaSeg4, which = "val")
  peak_displacement_radial_5_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementRadial$ahaSeg5, which = "val")
  peak_displacement_radial_6_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementRadial$ahaSeg6, which = "val")
  peak_displacement_radial_7_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementRadial$ahaSeg7, which = "val")
  peak_displacement_radial_8_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementRadial$ahaSeg8, which = "val")
  peak_displacement_radial_9_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementRadial$ahaSeg9, which = "val")
  peak_displacement_radial_10_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementRadial$ahaSeg10, which = "val")
  peak_displacement_radial_11_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementRadial$ahaSeg11, which = "val")
  peak_displacement_radial_12_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementRadial$ahaSeg12, which = "val")
  peak_displacement_radial_13_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementRadial$ahaSeg13, which = "val")
  peak_displacement_radial_14_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementRadial$ahaSeg14, which = "val")
  peak_displacement_radial_15_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementRadial$ahaSeg15, which = "val")
  peak_displacement_radial_16_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementRadial$ahaSeg16, which = "val")
  #basal_peak_displacement_circumferential_fup <- attr(patient_df$, which = "val")
  #mid_peak_displacement_circumferential_fup <- attr(patient_df$, which = "val")
  #apical_peak_displacement_circumferential_fup <- attr(patient_df$, which = "val")
  #global_peak_displacement_circumferential_fup <- attr(patient_df$, which = "val")
  peak_displacement_circumferential_1_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementCircumferential$ahaSeg1, which = "val")
  peak_displacement_circumferential_2_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementCircumferential$ahaSeg2, which = "val")
  peak_displacement_circumferential_3_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementCircumferential$ahaSeg3, which = "val")
  peak_displacement_circumferential_4_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementCircumferential$ahaSeg4, which = "val")
  peak_displacement_circumferential_5_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementCircumferential$ahaSeg5, which = "val")
  peak_displacement_circumferential_6_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementCircumferential$ahaSeg6, which = "val")
  peak_displacement_circumferential_7_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementCircumferential$ahaSeg7, which = "val")
  peak_displacement_circumferential_8_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementCircumferential$ahaSeg8, which = "val")
  peak_displacement_circumferential_9_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementCircumferential$ahaSeg9, which = "val")
  peak_displacement_circumferential_10_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementCircumferential$ahaSeg10, which = "val")
  peak_displacement_circumferential_11_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementCircumferential$ahaSeg11, which = "val")
  peak_displacement_circumferential_12_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementCircumferential$ahaSeg12, which = "val")
  peak_displacement_circumferential_13_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementCircumferential$ahaSeg13, which = "val")
  peak_displacement_circumferential_14_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementCircumferential$ahaSeg14, which = "val")
  peak_displacement_circumferential_15_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementCircumferential$ahaSeg15, which = "val")
  peak_displacement_circumferential_16_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementCircumferential$ahaSeg16, which = "val")
  #basal_peak_displacement_longitudinal_fup <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_3DGlobalResults$Basal, which = "PeakDisplacementLongitudinal")
  #mid_peak_displacement_longitudinal_fup <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_3DGlobalResults$Mid, which = "PeakDisplacementLongitudinal")
  #apical_peak_displacement_longitudinal_fup <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_3DGlobalResults$Apical, which = "PeakDisplacementLongitudinal")
  #global_peak_displacement_longitudinal_fup <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_3DGlobalResults$Global, which = "PeakDisplacementLongitudinal")
  peak_displacement_longitudinal_1_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementLongitudinal$ahaSeg1, which = "val")
  peak_displacement_longitudinal_2_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementLongitudinal$ahaSeg2, which = "val")
  peak_displacement_longitudinal_3_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementLongitudinal$ahaSeg3, which = "val")
  peak_displacement_longitudinal_4_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementLongitudinal$ahaSeg4, which = "val")
  peak_displacement_longitudinal_5_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementLongitudinal$ahaSeg5, which = "val")
  peak_displacement_longitudinal_6_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementLongitudinal$ahaSeg6, which = "val")
  peak_displacement_longitudinal_7_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementLongitudinal$ahaSeg7, which = "val")
  peak_displacement_longitudinal_8_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementLongitudinal$ahaSeg8, which = "val")
  peak_displacement_longitudinal_9_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementLongitudinal$ahaSeg9, which = "val")
  peak_displacement_longitudinal_10_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementLongitudinal$ahaSeg10, which = "val")
  peak_displacement_longitudinal_11_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementLongitudinal$ahaSeg11, which = "val")
  peak_displacement_longitudinal_12_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementLongitudinal$ahaSeg12, which = "val")
  peak_displacement_longitudinal_13_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementLongitudinal$ahaSeg13, which = "val")
  peak_displacement_longitudinal_14_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementLongitudinal$ahaSeg14, which = "val")
  peak_displacement_longitudinal_15_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementLongitudinal$ahaSeg15, which = "val")
  peak_displacement_longitudinal_16_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDisplacementLongitudinal$ahaSeg16, which = "val")
  #basal_peak_systolic_velocity_radial_fup <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_2DGlobalResults$Basal, which = "PeakSystolicVelocityRadial")
  #mid_peak_systolic_velocity_radial_fup <- attr(patient_df$, which = "val")
  #apical_peak_systolic_velocity_radial_fup <- attr(patient_df$, which = "val")
  #global_peak_systolic_velocity_radial_fup <- attr(patient_df$, which = "val")
  peak_systolic_velocity_radial_1_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityRadial$ahaSeg1, which = "val")
  peak_systolic_velocity_radial_2_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityRadial$ahaSeg2, which = "val")
  peak_systolic_velocity_radial_3_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityRadial$ahaSeg3, which = "val")
  peak_systolic_velocity_radial_4_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityRadial$ahaSeg4, which = "val")
  peak_systolic_velocity_radial_5_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityRadial$ahaSeg5, which = "val")
  peak_systolic_velocity_radial_6_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityRadial$ahaSeg6, which = "val")
  peak_systolic_velocity_radial_7_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityRadial$ahaSeg7, which = "val")
  peak_systolic_velocity_radial_8_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityRadial$ahaSeg8, which = "val")
  peak_systolic_velocity_radial_9_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityRadial$ahaSeg9, which = "val")
  peak_systolic_velocity_radial_10_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityRadial$ahaSeg10, which = "val")
  peak_systolic_velocity_radial_11_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityRadial$ahaSeg11, which = "val")
  peak_systolic_velocity_radial_12_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityRadial$ahaSeg12, which = "val")
  peak_systolic_velocity_radial_13_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityRadial$ahaSeg13, which = "val")
  peak_systolic_velocity_radial_14_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityRadial$ahaSeg14, which = "val")
  peak_systolic_velocity_radial_15_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityRadial$ahaSeg15, which = "val")
  peak_systolic_velocity_radial_16_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityRadial$ahaSeg16, which = "val")
  #basal_peak_systolic_velocity_circumferential_fup <- attr(patient_df$, which = "val")
  #mid_peak_systolic_velocity_circumferential_fup <- attr(patient_df$, which = "val")
  #apical_peak_systolic_velocity_circumferential_fup <- attr(patient_df$, which = "val")
  #global_peak_systolic_velocity_circumferential_fup <- attr(patient_df$, which = "val")
  peak_systolic_velocity_circumferential_1_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityCircumferential$ahaSeg1, which = "val")
  peak_systolic_velocity_circumferential_2_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityCircumferential$ahaSeg2, which = "val")
  peak_systolic_velocity_circumferential_3_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityCircumferential$ahaSeg3, which = "val")
  peak_systolic_velocity_circumferential_4_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityCircumferential$ahaSeg4, which = "val")
  peak_systolic_velocity_circumferential_5_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityCircumferential$ahaSeg5, which = "val")
  peak_systolic_velocity_circumferential_6_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityCircumferential$ahaSeg6, which = "val")
  peak_systolic_velocity_circumferential_7_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityCircumferential$ahaSeg7, which = "val")
  peak_systolic_velocity_circumferential_8_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityCircumferential$ahaSeg8, which = "val")
  peak_systolic_velocity_circumferential_9_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityCircumferential$ahaSeg9, which = "val")
  peak_systolic_velocity_circumferential_10_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityCircumferential$ahaSeg10, which = "val")
  peak_systolic_velocity_circumferential_11_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityCircumferential$ahaSeg11, which = "val")
  peak_systolic_velocity_circumferential_12_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityCircumferential$ahaSeg12, which = "val")
  peak_systolic_velocity_circumferential_13_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityCircumferential$ahaSeg13, which = "val")
  peak_systolic_velocity_circumferential_14_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityCircumferential$ahaSeg14, which = "val")
  peak_systolic_velocity_circumferential_15_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityCircumferential$ahaSeg15, which = "val")
  peak_systolic_velocity_circumferential_16_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityCircumferential$ahaSeg16, which = "val")
  #basal_peak_systolic_velocity_longitudinal_fup <- attr(patient_df$, which = "val")
  #mid_peak_systolic_velocity_longitudinal_fup <- attr(patient_df$, which = "val")
  #apical_peak_systolic_velocity_longitudinal_fup <- attr(patient_df$, which = "val")
  #global_peak_systolic_velocity_longitudinal_fup <- attr(patient_df$, which = "val")
  peak_systolic_velocity_longitudinal_1_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityLongitudinal$ahaSeg1, which = "val")
  peak_systolic_velocity_longitudinal_2_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityLongitudinal$ahaSeg2, which = "val")
  peak_systolic_velocity_longitudinal_3_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityLongitudinal$ahaSeg3, which = "val")
  peak_systolic_velocity_longitudinal_4_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityLongitudinal$ahaSeg4, which = "val")
  peak_systolic_velocity_longitudinal_5_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityLongitudinal$ahaSeg5, which = "val")
  peak_systolic_velocity_longitudinal_6_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityLongitudinal$ahaSeg6, which = "val")
  peak_systolic_velocity_longitudinal_7_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityLongitudinal$ahaSeg7, which = "val")
  peak_systolic_velocity_longitudinal_8_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityLongitudinal$ahaSeg8, which = "val")
  peak_systolic_velocity_longitudinal_9_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityLongitudinal$ahaSeg9, which = "val")
  peak_systolic_velocity_longitudinal_10_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityLongitudinal$ahaSeg10, which = "val")
  peak_systolic_velocity_longitudinal_11_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityLongitudinal$ahaSeg11, which = "val")
  peak_systolic_velocity_longitudinal_12_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityLongitudinal$ahaSeg12, which = "val")
  peak_systolic_velocity_longitudinal_13_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityLongitudinal$ahaSeg13, which = "val")
  peak_systolic_velocity_longitudinal_14_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityLongitudinal$ahaSeg14, which = "val")
  peak_systolic_velocity_longitudinal_15_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityLongitudinal$ahaSeg15, which = "val")
  peak_systolic_velocity_longitudinal_16_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakSystolicVelocityLongitudinal$ahaSeg16, which = "val")
  #basal_peak_systolic_velocity_radial_fup <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_3DGlobalResults$$LeftVentricle_3DGlobalResults$Basal, which = "PeakDiastolicVelocityRadial")
  #mid_peak_systolic_velocity_radial_fup <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_3DGlobalResults$Mid, which = "PeakDiastolicVelocityRadial")
  #apical_peak_systolic_velocity_radial_fup <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_3DGlobalResults$Apical, which = "PeakDiastolicVelocityRadial")
  #global_peak_systolic_velocity_radial_fup <- attr(patient_df$Report$GlobalMeasurementReport$LeftVentricle_3DGlobalResults$Global, which = "PeakDiastolicVelocityRadial")
  peak_systolic_velocity_radial_1_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityRadial$ahaSeg1, which = "val")
  peak_systolic_velocity_radial_2_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityRadial$ahaSeg2, which = "val")
  peak_systolic_velocity_radial_3_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityRadial$ahaSeg3, which = "val")
  peak_systolic_velocity_radial_4_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityRadial$ahaSeg4, which = "val")
  peak_systolic_velocity_radial_5_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityRadial$ahaSeg5, which = "val")
  peak_systolic_velocity_radial_6_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityRadial$ahaSeg6, which = "val")
  peak_systolic_velocity_radial_7_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityRadial$ahaSeg7, which = "val")
  peak_systolic_velocity_radial_8_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityRadial$ahaSeg8, which = "val")
  peak_systolic_velocity_radial_9_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityRadial$ahaSeg9, which = "val")
  peak_systolic_velocity_radial_10_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityRadial$ahaSeg10, which = "val")
  peak_systolic_velocity_radial_11_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityRadial$ahaSeg11, which = "val")
  peak_systolic_velocity_radial_12_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityRadial$ahaSeg12, which = "val")
  peak_systolic_velocity_radial_13_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityRadial$ahaSeg13, which = "val")
  peak_systolic_velocity_radial_14_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityRadial$ahaSeg14, which = "val")
  peak_systolic_velocity_radial_15_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityRadial$ahaSeg15, which = "val")
  peak_systolic_velocity_radial_16_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityRadial$ahaSeg16, which = "val")
  #basal_peak_systolic_velocity_circumferential_fup <- attr(patient_df$, which = "val")
  #mid_peak_systolic_velocity_circumferential_fup <- attr(patient_df$, which = "val")
  #apical_peak_systolic_velocity_circumferential_fup <- attr(patient_df$, which = "val")
  #global_peak_systolic_velocity_circumferential_fup <- attr(patient_df$, which = "val")
  peak_systolic_velocity_circumferential_1_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityCircumferential$ahaSeg1, which = "val")
  peak_systolic_velocity_circumferential_2_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityCircumferential$ahaSeg2, which = "val")
  peak_systolic_velocity_circumferential_3_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityCircumferential$ahaSeg3, which = "val")
  peak_systolic_velocity_circumferential_4_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityCircumferential$ahaSeg4, which = "val")
  peak_systolic_velocity_circumferential_5_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityCircumferential$ahaSeg5, which = "val")
  peak_systolic_velocity_circumferential_6_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityCircumferential$ahaSeg6, which = "val")
  peak_systolic_velocity_circumferential_7_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityCircumferential$ahaSeg7, which = "val")
  peak_systolic_velocity_circumferential_8_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityCircumferential$ahaSeg8, which = "val")
  peak_systolic_velocity_circumferential_9_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityCircumferential$ahaSeg9, which = "val")
  peak_systolic_velocity_circumferential_10_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityCircumferential$ahaSeg10, which = "val")
  peak_systolic_velocity_circumferential_11_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityCircumferential$ahaSeg11, which = "val")
  peak_systolic_velocity_circumferential_12_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityCircumferential$ahaSeg12, which = "val")
  peak_systolic_velocity_circumferential_13_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityCircumferential$ahaSeg13, which = "val")
  peak_systolic_velocity_circumferential_14_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityCircumferential$ahaSeg14, which = "val")
  peak_systolic_velocity_circumferential_15_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityCircumferential$ahaSeg15, which = "val")
  peak_systolic_velocity_circumferential_16_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityCircumferential$ahaSeg16, which = "val")
  #basal_peak_systolic_velocity_longitudinal_fup <- attr(patient_df$, which = "val")
  #mid_peak_systolic_velocity_longitudinal_fup <- attr(patient_df$, which = "val")
  #apical_peak_systolic_velocity_longitudinal_fup <- attr(patient_df$, which = "val")
  #global_peak_systolic_velocity_longitudinal_fup <- attr(patient_df$, which = "val")
  peak_systolic_velocity_longitudinal_1_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityLongitudinal$ahaSeg1, which = "val")
  peak_systolic_velocity_longitudinal_2_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityLongitudinal$ahaSeg2, which = "val")
  peak_systolic_velocity_longitudinal_3_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityLongitudinal$ahaSeg3, which = "val")
  peak_systolic_velocity_longitudinal_4_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityLongitudinal$ahaSeg4, which = "val")
  peak_systolic_velocity_longitudinal_5_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityLongitudinal$ahaSeg5, which = "val")
  peak_systolic_velocity_longitudinal_6_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityLongitudinal$ahaSeg6, which = "val")
  peak_systolic_velocity_longitudinal_7_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityLongitudinal$ahaSeg7, which = "val")
  peak_systolic_velocity_longitudinal_8_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityLongitudinal$ahaSeg8, which = "val")
  peak_systolic_velocity_longitudinal_9_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityLongitudinal$ahaSeg9, which = "val")
  peak_systolic_velocity_longitudinal_10_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityLongitudinal$ahaSeg10, which = "val")
  peak_systolic_velocity_longitudinal_11_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityLongitudinal$ahaSeg11, which = "val")
  peak_systolic_velocity_longitudinal_12_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityLongitudinal$ahaSeg12, which = "val")
  peak_systolic_velocity_longitudinal_13_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityLongitudinal$ahaSeg13, which = "val")
  peak_systolic_velocity_longitudinal_14_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityLongitudinal$ahaSeg14, which = "val")
  peak_systolic_velocity_longitudinal_15_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityLongitudinal$ahaSeg15, which = "val")
  peak_systolic_velocity_longitudinal_16_fup <- attr(patient_df$Report$AllMeasurementsReport$LeftVentricle$ahaPolarmap3D$PeakDiastolicVelocityLongitudinal$ahaSeg16, which = "val")
  
  procedure_name_fup <- replace(procedure_name_fup, is.null(procedure_name_fup), NA)
  record_id <- replace(record_id, is.null(record_id), NA)
  date_of_birth <- replace(date_of_birth, is.null(date_of_birth), NA)
  gender <- replace(gender, is.null(gender), NA)
  height <- replace(height, is.null(height), NA)
  weight <- replace(weight, is.null(weight), NA)
  date_cmr_fup <- replace(date_cmr_fup, is.null(date_cmr_fup), NA)
  hr_cmr_fup <- replace(hr_cmr_fup, is.null(hr_cmr_fup), NA)
  lvedv_cmr_fup <- replace(lvedv_cmr_fup, is.null(lvedv_cmr_fup), NA)
  lvesv_cmr_fup <- replace(lvesv_cmr_fup, is.null(lvesv_cmr_fup), NA)
  lvsv_cmr_fup <- replace(lvsv_cmr_fup, is.null(lvsv_cmr_fup), NA)
  lvef_cmr_fup <- replace(lvef_cmr_fup, is.null(lvef_cmr_fup), NA)
  lv_mass_cmr_fup <- replace(lv_mass_cmr_fup, is.null(lv_mass_cmr_fup), NA)
  rvedv_cmr_fup <- replace(rvedv_cmr_fup, is.null(rvedv_cmr_fup), NA)
  rvesv_cmr_fup <- replace(rvesv_cmr_fup, is.null(rvesv_cmr_fup), NA)
  rvsv_cmr_fup <- replace(rvsv_cmr_fup, is.null(rvsv_cmr_fup), NA)
  rvef_cmr_fup <- replace(rvef_cmr_fup, is.null(rvef_cmr_fup), NA)
  #mapseinf_cmr_fup <- replace(#mapseinf_cmr_fup, is.null(#mapseinf_cmr_fup), NA)
  #mapseant_cmr_fup <- replace(#mapseant_cmr_fup, is.null(#mapseant_cmr_fup), NA)
  mapselat_cmr_fup <- replace(mapselat_cmr_fup, is.null(mapselat_cmr_fup), NA)
  #mapsesep_cmr	_fup <- replace(#mapsesep_cmr	_fup, is.null(#mapsesep_cmr_fup), NA)
  tapse_cmr_fup <- replace(tapse_cmr_fup, is.null(tapse_cmr_fup), NA)
  min_la_vol_cmr_fup <- replace(min_la_vol_cmr_fup, is.null(min_la_vol_cmr_fup), NA)
  max_la_vol_cmr_fup <- replace(max_la_vol_cmr_fup, is.null(max_la_vol_cmr_fup), NA)
  la_ef_cmr_fup <- replace(la_ef_cmr_fup, is.null(la_ef_cmr_fup), NA)
  average_la_long_axis_strain_cmr_fup <- replace(average_la_long_axis_strain_cmr_fup, is.null(average_la_long_axis_strain_cmr_fup), NA)
  average_la_long_axis_difference_cmr_fup <- replace(average_la_long_axis_difference_cmr_fup, is.null(average_la_long_axis_difference_cmr_fup), NA)
  #  sax_gcs_cmr_fup <- replace(sax_gcs_cmr_fup, is.null(sax_gcs_cmr_fup), NA)
  ##  sax_grs_cmr_fup <- replace(sax_grs_cmr_fup, is.null(sax_grs_cmr_fup), NA)
  #  lax_gls_cmr_fup <- replace(lax_gls_cmr_fup, is.null(lax_gls_cmr_fup), NA)
  #  lax_grs_cmr_fup <- replace(lax_grs_cmr_fup, is.null(lax_grs_cmr_fup), NA)
  #  total_forward_volume_ao_cmr_fup <- replace(total_forward_volume_ao_cmr_fup, is.null(total_forward_volume_ao_cmr_fup), NA)
  #  total_backward_volume_ao_cmr_fup <- replace(total_backward_volume_ao_cmr_fup, is.null(total_backward_volume_ao_cmr_fup), NA)
  #  total_volume_ao_cmr_fup <- replace(total_volume_ao_cmr_fup, is.null(total_volume_ao_cmr_fup), NA)
  #  regurgitation_fraction_ao_cmr_fup <- replace(regurgitation_fraction_ao_cmr_fup, is.null(regurgitation_fraction_ao_cmr_fup), NA)
  #  vol_min_ao_cmr_fup <- replace(vol_min_ao_cmr_fup, is.null(vol_min_ao_cmr_fup), NA)
  #  max_pressure_gradient_ao_cmr_fup <- replace(max_pressure_gradient_ao_cmr_fup, is.null(max_pressure_gradient_ao_cmr_fup), NA)
  #  mean_pressure_gradient_ao_cmr_fup <- replace(mean_pressure_gradient_ao_cmr_fup, is.null(mean_pressure_gradient_ao_cmr_fup), NA)
  #  maximum_velocity_ao_cmr_fup <- replace(maximum_velocity_ao_cmr_fup, is.null(maximum_velocity_ao_cmr_fup), NA)
  #  total_forward_volume_pa_cmr_fup <- replace(total_forward_volume_pa_cmr_fup, is.null(total_forward_volume_pa_cmr_fup), NA)
  #  total_backward_volume_pa_cmr_fup <- replace(total_backward_volume_pa_cmr_fup, is.null(total_backward_volume_pa_cmr_fup), NA)
  #  total_volume_pa_cmr_fup <- replace(total_volume_pa_cmr_fup, is.null(total_volume_pa_cmr_fup), NA)
  #  regurgitation_fraction_pa_cmr_fup <- replace(regurgitation_fraction_pa_cmr_fup, is.null(regurgitation_fraction_pa_cmr_fup), NA)
  #  vol_min_pa_cmr_fup <- replace(vol_min_pa_cmr_fup, is.null(vol_min_pa_cmr_fup), NA)
  #  max_pressure_gradient_pa_cmr_fup <- replace(max_pressure_gradient_pa_cmr_fup, is.null(max_pressure_gradient_pa_cmr_fup), NA)
  #  mean_pressure_gradient_pa_cmr_fup <- replace(mean_pressure_gradient_pa_cmr_fup, is.null(mean_pressure_gradient_pa_cmr_fup), NA)
  #  maximum_velocity_pa_cmr_fup <- replace(maximum_velocity_pa_cmr_fup, is.null(maximum_velocity_pa_cmr_fup), NA)
  #  qp_qs_cmr_fup <- replace(qp_qs_cmr_fup, is.null(qp_qs_cmr_fup), NA)
  peak_strain_radial_1_fup <- replace(peak_strain_radial_1_fup, is.null(peak_strain_radial_1_fup), NA)
  peak_strain_radial_2_fup <- replace(peak_strain_radial_2_fup, is.null(peak_strain_radial_2_fup), NA)
  peak_strain_radial_3_fup <- replace(peak_strain_radial_3_fup, is.null(peak_strain_radial_3_fup), NA)
  peak_strain_radial_4_fup <- replace(peak_strain_radial_4_fup, is.null(peak_strain_radial_4_fup), NA)
  peak_strain_radial_5_fup <- replace(peak_strain_radial_5_fup, is.null(peak_strain_radial_5_fup), NA)
  peak_strain_radial_6_fup <- replace(peak_strain_radial_6_fup, is.null(peak_strain_radial_6_fup), NA)
  peak_strain_radial_7_fup <- replace(peak_strain_radial_7_fup, is.null(peak_strain_radial_7_fup), NA)
  peak_strain_radial_8_fup <- replace(peak_strain_radial_8_fup, is.null(peak_strain_radial_8_fup), NA)
  peak_strain_radial_9_fup <- replace(peak_strain_radial_9_fup, is.null(peak_strain_radial_9_fup), NA)
  peak_strain_radial_10_fup <- replace(peak_strain_radial_10_fup, is.null(peak_strain_radial_10_fup), NA)
  peak_strain_radial_11_fup <- replace(peak_strain_radial_11_fup, is.null(peak_strain_radial_11_fup), NA)
  peak_strain_radial_12_fup <- replace(peak_strain_radial_12_fup, is.null(peak_strain_radial_12_fup), NA)
  peak_strain_radial_13_fup <- replace(peak_strain_radial_13_fup, is.null(peak_strain_radial_13_fup), NA)
  peak_strain_radial_14_fup <- replace(peak_strain_radial_14_fup, is.null(peak_strain_radial_14_fup), NA)
  peak_strain_radial_15_fup <- replace(peak_strain_radial_15_fup, is.null(peak_strain_radial_15_fup), NA)
  peak_strain_radial_16_fup <- replace(peak_strain_radial_16_fup, is.null(peak_strain_radial_16_fup), NA)
  peak_strain_circumferential_1_fup <- replace(peak_strain_circumferential_1_fup, is.null(peak_strain_circumferential_1_fup), NA)
  peak_strain_circumferential_2_fup <- replace(peak_strain_circumferential_2_fup, is.null(peak_strain_circumferential_2_fup), NA)
  peak_strain_circumferential_3_fup <- replace(peak_strain_circumferential_3_fup, is.null(peak_strain_circumferential_3_fup), NA)
  peak_strain_circumferential_4_fup <- replace(peak_strain_circumferential_4_fup, is.null(peak_strain_circumferential_4_fup), NA)
  peak_strain_circumferential_5_fup <- replace(peak_strain_circumferential_5_fup, is.null(peak_strain_circumferential_5_fup), NA)
  peak_strain_circumferential_6_fup <- replace(peak_strain_circumferential_6_fup, is.null(peak_strain_circumferential_6_fup), NA)
  peak_strain_circumferential_7_fup <- replace(peak_strain_circumferential_7_fup, is.null(peak_strain_circumferential_7_fup), NA)
  peak_strain_circumferential_8_fup <- replace(peak_strain_circumferential_8_fup, is.null(peak_strain_circumferential_8_fup), NA)
  peak_strain_circumferential_9_fup <- replace(peak_strain_circumferential_9_fup, is.null(peak_strain_circumferential_9_fup), NA)
  peak_strain_circumferential_10_fup <- replace(peak_strain_circumferential_10_fup, is.null(peak_strain_circumferential_10_fup), NA)
  peak_strain_circumferential_11_fup <- replace(peak_strain_circumferential_11_fup, is.null(peak_strain_circumferential_11_fup), NA)
  peak_strain_circumferential_12_fup <- replace(peak_strain_circumferential_12_fup, is.null(peak_strain_circumferential_12_fup), NA)
  peak_strain_circumferential_13_fup <- replace(peak_strain_circumferential_13_fup, is.null(peak_strain_circumferential_13_fup), NA)
  peak_strain_circumferential_14_fup <- replace(peak_strain_circumferential_14_fup, is.null(peak_strain_circumferential_14_fup), NA)
  peak_strain_circumferential_15_fup <- replace(peak_strain_circumferential_15_fup, is.null(peak_strain_circumferential_15_fup), NA)
  peak_strain_circumferential_16_fup <- replace(peak_strain_circumferential_16_fup, is.null(peak_strain_circumferential_16_fup), NA)
  peak_strain_longitudinal_1_fup <- replace(peak_strain_longitudinal_1_fup, is.null(peak_strain_longitudinal_1_fup), NA)
  peak_strain_longitudinal_2_fup <- replace(peak_strain_longitudinal_2_fup, is.null(peak_strain_longitudinal_2_fup), NA)
  peak_strain_longitudinal_3_fup <- replace(peak_strain_longitudinal_3_fup, is.null(peak_strain_longitudinal_3_fup), NA)
  peak_strain_longitudinal_4_fup <- replace(peak_strain_longitudinal_4_fup, is.null(peak_strain_longitudinal_4_fup), NA)
  peak_strain_longitudinal_5_fup <- replace(peak_strain_longitudinal_5_fup, is.null(peak_strain_longitudinal_5_fup), NA)
  peak_strain_longitudinal_6_fup <- replace(peak_strain_longitudinal_6_fup, is.null(peak_strain_longitudinal_6_fup), NA)
  peak_strain_longitudinal_7_fup <- replace(peak_strain_longitudinal_7_fup, is.null(peak_strain_longitudinal_7_fup), NA)
  peak_strain_longitudinal_8_fup <- replace(peak_strain_longitudinal_8_fup, is.null(peak_strain_longitudinal_8_fup), NA)
  peak_strain_longitudinal_9_fup <- replace(peak_strain_longitudinal_9_fup, is.null(peak_strain_longitudinal_9_fup), NA)
  peak_strain_longitudinal_10_fup <- replace(peak_strain_longitudinal_10_fup, is.null(peak_strain_longitudinal_10_fup), NA)
  peak_strain_longitudinal_11_fup <- replace(peak_strain_longitudinal_11_fup, is.null(peak_strain_longitudinal_11_fup), NA)
  peak_strain_longitudinal_12_fup <- replace(peak_strain_longitudinal_12_fup, is.null(peak_strain_longitudinal_12_fup), NA)
  peak_strain_longitudinal_13_fup <- replace(peak_strain_longitudinal_13_fup, is.null(peak_strain_longitudinal_13_fup), NA)
  peak_strain_longitudinal_14_fup <- replace(peak_strain_longitudinal_14_fup, is.null(peak_strain_longitudinal_14_fup), NA)
  peak_strain_longitudinal_15_fup <- replace(peak_strain_longitudinal_15_fup, is.null(peak_strain_longitudinal_15_fup), NA)
  peak_strain_longitudinal_16_fup <- replace(peak_strain_longitudinal_16_fup, is.null(peak_strain_longitudinal_16_fup), NA)
  time_to_peak_radial_1_fup <- replace(time_to_peak_radial_1_fup, is.null(time_to_peak_radial_1_fup), NA)
  time_to_peak_radial_2_fup <- replace(time_to_peak_radial_2_fup, is.null(time_to_peak_radial_2_fup), NA)
  time_to_peak_radial_3_fup <- replace(time_to_peak_radial_3_fup, is.null(time_to_peak_radial_3_fup), NA)
  time_to_peak_radial_4_fup <- replace(time_to_peak_radial_4_fup, is.null(time_to_peak_radial_4_fup), NA)
  time_to_peak_radial_5_fup <- replace(time_to_peak_radial_5_fup, is.null(time_to_peak_radial_5_fup), NA)
  time_to_peak_radial_6_fup <- replace(time_to_peak_radial_6_fup, is.null(time_to_peak_radial_6_fup), NA)
  time_to_peak_radial_7_fup <- replace(time_to_peak_radial_7_fup, is.null(time_to_peak_radial_7_fup), NA)
  time_to_peak_radial_8_fup <- replace(time_to_peak_radial_8_fup, is.null(time_to_peak_radial_8_fup), NA)
  time_to_peak_radial_9_fup <- replace(time_to_peak_radial_9_fup, is.null(time_to_peak_radial_9_fup), NA)
  time_to_peak_radial_10_fup <- replace(time_to_peak_radial_10_fup, is.null(time_to_peak_radial_10_fup), NA)
  time_to_peak_radial_11_fup <- replace(time_to_peak_radial_11_fup, is.null(time_to_peak_radial_11_fup), NA)
  time_to_peak_radial_12_fup <- replace(time_to_peak_radial_12_fup, is.null(time_to_peak_radial_12_fup), NA)
  time_to_peak_radial_13_fup <- replace(time_to_peak_radial_13_fup, is.null(time_to_peak_radial_13_fup), NA)
  time_to_peak_radial_14_fup <- replace(time_to_peak_radial_14_fup, is.null(time_to_peak_radial_14_fup), NA)
  time_to_peak_radial_15_fup <- replace(time_to_peak_radial_15_fup, is.null(time_to_peak_radial_15_fup), NA)
  time_to_peak_radial_16_fup <- replace(time_to_peak_radial_16_fup, is.null(time_to_peak_radial_16_fup), NA)
  time_to_peak_circumferential_1_fup <- replace(time_to_peak_circumferential_1_fup, is.null(time_to_peak_circumferential_1_fup), NA)
  time_to_peak_circumferential_2_fup <- replace(time_to_peak_circumferential_2_fup, is.null(time_to_peak_circumferential_2_fup), NA)
  time_to_peak_circumferential_3_fup <- replace(time_to_peak_circumferential_3_fup, is.null(time_to_peak_circumferential_3_fup), NA)
  time_to_peak_circumferential_4_fup <- replace(time_to_peak_circumferential_4_fup, is.null(time_to_peak_circumferential_4_fup), NA)
  time_to_peak_circumferential_5_fup <- replace(time_to_peak_circumferential_5_fup, is.null(time_to_peak_circumferential_5_fup), NA)
  time_to_peak_circumferential_6_fup <- replace(time_to_peak_circumferential_6_fup, is.null(time_to_peak_circumferential_6_fup), NA)
  time_to_peak_circumferential_7_fup <- replace(time_to_peak_circumferential_7_fup, is.null(time_to_peak_circumferential_7_fup), NA)
  time_to_peak_circumferential_8_fup <- replace(time_to_peak_circumferential_8_fup, is.null(time_to_peak_circumferential_8_fup), NA)
  time_to_peak_circumferential_9_fup <- replace(time_to_peak_circumferential_9_fup, is.null(time_to_peak_circumferential_9_fup), NA)
  time_to_peak_circumferential_10_fup <- replace(time_to_peak_circumferential_10_fup, is.null(time_to_peak_circumferential_10_fup), NA)
  time_to_peak_circumferential_11_fup <- replace(time_to_peak_circumferential_11_fup, is.null(time_to_peak_circumferential_11_fup), NA)
  time_to_peak_circumferential_12_fup <- replace(time_to_peak_circumferential_12_fup, is.null(time_to_peak_circumferential_12_fup), NA)
  time_to_peak_circumferential_13_fup <- replace(time_to_peak_circumferential_13_fup, is.null(time_to_peak_circumferential_13_fup), NA)
  time_to_peak_circumferential_14_fup <- replace(time_to_peak_circumferential_14_fup, is.null(time_to_peak_circumferential_14_fup), NA)
  time_to_peak_circumferential_15_fup <- replace(time_to_peak_circumferential_15_fup, is.null(time_to_peak_circumferential_15_fup), NA)
  time_to_peak_circumferential_16_fup <- replace(time_to_peak_circumferential_16_fup, is.null(time_to_peak_circumferential_16_fup), NA)
  time_to_peak_longitudinal_1_fup <- replace(time_to_peak_longitudinal_1_fup, is.null(time_to_peak_longitudinal_1_fup), NA)
  time_to_peak_longitudinal_2_fup <- replace(time_to_peak_longitudinal_2_fup, is.null(time_to_peak_longitudinal_2_fup), NA)
  time_to_peak_longitudinal_3_fup <- replace(time_to_peak_longitudinal_3_fup, is.null(time_to_peak_longitudinal_3_fup), NA)
  time_to_peak_longitudinal_4_fup <- replace(time_to_peak_longitudinal_4_fup, is.null(time_to_peak_longitudinal_4_fup), NA)
  time_to_peak_longitudinal_5_fup <- replace(time_to_peak_longitudinal_5_fup, is.null(time_to_peak_longitudinal_5_fup), NA)
  time_to_peak_longitudinal_6_fup <- replace(time_to_peak_longitudinal_6_fup, is.null(time_to_peak_longitudinal_6_fup), NA)
  time_to_peak_longitudinal_7_fup <- replace(time_to_peak_longitudinal_7_fup, is.null(time_to_peak_longitudinal_7_fup), NA)
  time_to_peak_longitudinal_8_fup <- replace(time_to_peak_longitudinal_8_fup, is.null(time_to_peak_longitudinal_8_fup), NA)
  time_to_peak_longitudinal_9_fup <- replace(time_to_peak_longitudinal_9_fup, is.null(time_to_peak_longitudinal_9_fup), NA)
  time_to_peak_longitudinal_10_fup <- replace(time_to_peak_longitudinal_10_fup, is.null(time_to_peak_longitudinal_10_fup), NA)
  time_to_peak_longitudinal_11_fup <- replace(time_to_peak_longitudinal_11_fup, is.null(time_to_peak_longitudinal_11_fup), NA)
  time_to_peak_longitudinal_12_fup <- replace(time_to_peak_longitudinal_12_fup, is.null(time_to_peak_longitudinal_12_fup), NA)
  time_to_peak_longitudinal_13_fup <- replace(time_to_peak_longitudinal_13_fup, is.null(time_to_peak_longitudinal_13_fup), NA)
  time_to_peak_longitudinal_14_fup <- replace(time_to_peak_longitudinal_14_fup, is.null(time_to_peak_longitudinal_14_fup), NA)
  time_to_peak_longitudinal_15_fup <- replace(time_to_peak_longitudinal_15_fup, is.null(time_to_peak_longitudinal_15_fup), NA)
  time_to_peak_longitudinal_16_fup <- replace(time_to_peak_longitudinal_16_fup, is.null(time_to_peak_longitudinal_16_fup), NA)
  peak_systolic_strain_rate_radial_1_fup <- replace(peak_systolic_strain_rate_radial_1_fup, is.null(peak_systolic_strain_rate_radial_1_fup), NA)
  peak_systolic_strain_rate_radial_2_fup <- replace(peak_systolic_strain_rate_radial_2_fup, is.null(peak_systolic_strain_rate_radial_2_fup), NA)
  peak_systolic_strain_rate_radial_3_fup <- replace(peak_systolic_strain_rate_radial_3_fup, is.null(peak_systolic_strain_rate_radial_3_fup), NA)
  peak_systolic_strain_rate_radial_4_fup <- replace(peak_systolic_strain_rate_radial_4_fup, is.null(peak_systolic_strain_rate_radial_4_fup), NA)
  peak_systolic_strain_rate_radial_5_fup <- replace(peak_systolic_strain_rate_radial_5_fup, is.null(peak_systolic_strain_rate_radial_5_fup), NA)
  peak_systolic_strain_rate_radial_6_fup <- replace(peak_systolic_strain_rate_radial_6_fup, is.null(peak_systolic_strain_rate_radial_6_fup), NA)
  peak_systolic_strain_rate_radial_7_fup <- replace(peak_systolic_strain_rate_radial_7_fup, is.null(peak_systolic_strain_rate_radial_7_fup), NA)
  peak_systolic_strain_rate_radial_8_fup <- replace(peak_systolic_strain_rate_radial_8_fup, is.null(peak_systolic_strain_rate_radial_8_fup), NA)
  peak_systolic_strain_rate_radial_9_fup <- replace(peak_systolic_strain_rate_radial_9_fup, is.null(peak_systolic_strain_rate_radial_9_fup), NA)
  peak_systolic_strain_rate_radial_10_fup <- replace(peak_systolic_strain_rate_radial_10_fup, is.null(peak_systolic_strain_rate_radial_10_fup), NA)
  peak_systolic_strain_rate_radial_11_fup <- replace(peak_systolic_strain_rate_radial_11_fup, is.null(peak_systolic_strain_rate_radial_11_fup), NA)
  peak_systolic_strain_rate_radial_12_fup <- replace(peak_systolic_strain_rate_radial_12_fup, is.null(peak_systolic_strain_rate_radial_12_fup), NA)
  peak_systolic_strain_rate_radial_13_fup <- replace(peak_systolic_strain_rate_radial_13_fup, is.null(peak_systolic_strain_rate_radial_13_fup), NA)
  peak_systolic_strain_rate_radial_14_fup <- replace(peak_systolic_strain_rate_radial_14_fup, is.null(peak_systolic_strain_rate_radial_14_fup), NA)
  peak_systolic_strain_rate_radial_15_fup <- replace(peak_systolic_strain_rate_radial_15_fup, is.null(peak_systolic_strain_rate_radial_15_fup), NA)
  peak_systolic_strain_rate_radial_16_fup <- replace(peak_systolic_strain_rate_radial_16_fup, is.null(peak_systolic_strain_rate_radial_16_fup), NA)
  peak_systolic_strain_rate_circumferential_1_fup <- replace(peak_systolic_strain_rate_circumferential_1_fup, is.null(peak_systolic_strain_rate_circumferential_1_fup), NA)
  peak_systolic_strain_rate_circumferential_2_fup <- replace(peak_systolic_strain_rate_circumferential_2_fup, is.null(peak_systolic_strain_rate_circumferential_2_fup), NA)
  peak_systolic_strain_rate_circumferential_3_fup <- replace(peak_systolic_strain_rate_circumferential_3_fup, is.null(peak_systolic_strain_rate_circumferential_3_fup), NA)
  peak_systolic_strain_rate_circumferential_4_fup <- replace(peak_systolic_strain_rate_circumferential_4_fup, is.null(peak_systolic_strain_rate_circumferential_4_fup), NA)
  peak_systolic_strain_rate_circumferential_5_fup <- replace(peak_systolic_strain_rate_circumferential_5_fup, is.null(peak_systolic_strain_rate_circumferential_5_fup), NA)
  peak_systolic_strain_rate_circumferential_6_fup <- replace(peak_systolic_strain_rate_circumferential_6_fup, is.null(peak_systolic_strain_rate_circumferential_6_fup), NA)
  peak_systolic_strain_rate_circumferential_7_fup <- replace(peak_systolic_strain_rate_circumferential_7_fup, is.null(peak_systolic_strain_rate_circumferential_7_fup), NA)
  peak_systolic_strain_rate_circumferential_8_fup <- replace(peak_systolic_strain_rate_circumferential_8_fup, is.null(peak_systolic_strain_rate_circumferential_8_fup), NA)
  peak_systolic_strain_rate_circumferential_9_fup <- replace(peak_systolic_strain_rate_circumferential_9_fup, is.null(peak_systolic_strain_rate_circumferential_9_fup), NA)
  peak_systolic_strain_rate_circumferential_10_fup <- replace(peak_systolic_strain_rate_circumferential_10_fup, is.null(peak_systolic_strain_rate_circumferential_10_fup), NA)
  peak_systolic_strain_rate_circumferential_11_fup <- replace(peak_systolic_strain_rate_circumferential_11_fup, is.null(peak_systolic_strain_rate_circumferential_11_fup), NA)
  peak_systolic_strain_rate_circumferential_12_fup <- replace(peak_systolic_strain_rate_circumferential_12_fup, is.null(peak_systolic_strain_rate_circumferential_12_fup), NA)
  peak_systolic_strain_rate_circumferential_13_fup <- replace(peak_systolic_strain_rate_circumferential_13_fup, is.null(peak_systolic_strain_rate_circumferential_13_fup), NA)
  peak_systolic_strain_rate_circumferential_14_fup <- replace(peak_systolic_strain_rate_circumferential_14_fup, is.null(peak_systolic_strain_rate_circumferential_14_fup), NA)
  peak_systolic_strain_rate_circumferential_15_fup <- replace(peak_systolic_strain_rate_circumferential_15_fup, is.null(peak_systolic_strain_rate_circumferential_15_fup), NA)
  peak_systolic_strain_rate_circumferential_16_fup <- replace(peak_systolic_strain_rate_circumferential_16_fup, is.null(peak_systolic_strain_rate_circumferential_16_fup), NA)
  peak_systolic_strain_rate_longitudinal_1_fup <- replace(peak_systolic_strain_rate_longitudinal_1_fup, is.null(peak_systolic_strain_rate_longitudinal_1_fup), NA)
  peak_systolic_strain_rate_longitudinal_2_fup <- replace(peak_systolic_strain_rate_longitudinal_2_fup, is.null(peak_systolic_strain_rate_longitudinal_2_fup), NA)
  peak_systolic_strain_rate_longitudinal_3_fup <- replace(peak_systolic_strain_rate_longitudinal_3_fup, is.null(peak_systolic_strain_rate_longitudinal_3_fup), NA)
  peak_systolic_strain_rate_longitudinal_4_fup <- replace(peak_systolic_strain_rate_longitudinal_4_fup, is.null(peak_systolic_strain_rate_longitudinal_4_fup), NA)
  peak_systolic_strain_rate_longitudinal_5_fup <- replace(peak_systolic_strain_rate_longitudinal_5_fup, is.null(peak_systolic_strain_rate_longitudinal_5_fup), NA)
  peak_systolic_strain_rate_longitudinal_6_fup <- replace(peak_systolic_strain_rate_longitudinal_6_fup, is.null(peak_systolic_strain_rate_longitudinal_6_fup), NA)
  peak_systolic_strain_rate_longitudinal_7_fup <- replace(peak_systolic_strain_rate_longitudinal_7_fup, is.null(peak_systolic_strain_rate_longitudinal_7_fup), NA)
  peak_systolic_strain_rate_longitudinal_8_fup <- replace(peak_systolic_strain_rate_longitudinal_8_fup, is.null(peak_systolic_strain_rate_longitudinal_8_fup), NA)
  peak_systolic_strain_rate_longitudinal_9_fup <- replace(peak_systolic_strain_rate_longitudinal_9_fup, is.null(peak_systolic_strain_rate_longitudinal_9_fup), NA)
  peak_systolic_strain_rate_longitudinal_10_fup <- replace(peak_systolic_strain_rate_longitudinal_10_fup, is.null(peak_systolic_strain_rate_longitudinal_10_fup), NA)
  peak_systolic_strain_rate_longitudinal_11_fup <- replace(peak_systolic_strain_rate_longitudinal_11_fup, is.null(peak_systolic_strain_rate_longitudinal_11_fup), NA)
  peak_systolic_strain_rate_longitudinal_12_fup <- replace(peak_systolic_strain_rate_longitudinal_12_fup, is.null(peak_systolic_strain_rate_longitudinal_12_fup), NA)
  peak_systolic_strain_rate_longitudinal_13_fup <- replace(peak_systolic_strain_rate_longitudinal_13_fup, is.null(peak_systolic_strain_rate_longitudinal_13_fup), NA)
  peak_systolic_strain_rate_longitudinal_14_fup <- replace(peak_systolic_strain_rate_longitudinal_14_fup, is.null(peak_systolic_strain_rate_longitudinal_14_fup), NA)
  peak_systolic_strain_rate_longitudinal_15_fup <- replace(peak_systolic_strain_rate_longitudinal_15_fup, is.null(peak_systolic_strain_rate_longitudinal_15_fup), NA)
  peak_systolic_strain_rate_longitudinal_16_fup <- replace(peak_systolic_strain_rate_longitudinal_16_fup, is.null(peak_systolic_strain_rate_longitudinal_16_fup), NA)
  peak_systolic_strain_rate_radial_1_fup <- replace(peak_systolic_strain_rate_radial_1_fup, is.null(peak_systolic_strain_rate_radial_1_fup), NA)
  peak_systolic_strain_rate_radial_2_fup <- replace(peak_systolic_strain_rate_radial_2_fup, is.null(peak_systolic_strain_rate_radial_2_fup), NA)
  peak_systolic_strain_rate_radial_3_fup <- replace(peak_systolic_strain_rate_radial_3_fup, is.null(peak_systolic_strain_rate_radial_3_fup), NA)
  peak_systolic_strain_rate_radial_4_fup <- replace(peak_systolic_strain_rate_radial_4_fup, is.null(peak_systolic_strain_rate_radial_4_fup), NA)
  peak_systolic_strain_rate_radial_5_fup <- replace(peak_systolic_strain_rate_radial_5_fup, is.null(peak_systolic_strain_rate_radial_5_fup), NA)
  peak_systolic_strain_rate_radial_6_fup <- replace(peak_systolic_strain_rate_radial_6_fup, is.null(peak_systolic_strain_rate_radial_6_fup), NA)
  peak_systolic_strain_rate_radial_7_fup <- replace(peak_systolic_strain_rate_radial_7_fup, is.null(peak_systolic_strain_rate_radial_7_fup), NA)
  peak_systolic_strain_rate_radial_8_fup <- replace(peak_systolic_strain_rate_radial_8_fup, is.null(peak_systolic_strain_rate_radial_8_fup), NA)
  peak_systolic_strain_rate_radial_9_fup <- replace(peak_systolic_strain_rate_radial_9_fup, is.null(peak_systolic_strain_rate_radial_9_fup), NA)
  peak_systolic_strain_rate_radial_10_fup <- replace(peak_systolic_strain_rate_radial_10_fup, is.null(peak_systolic_strain_rate_radial_10_fup), NA)
  peak_systolic_strain_rate_radial_11_fup <- replace(peak_systolic_strain_rate_radial_11_fup, is.null(peak_systolic_strain_rate_radial_11_fup), NA)
  peak_systolic_strain_rate_radial_12_fup <- replace(peak_systolic_strain_rate_radial_12_fup, is.null(peak_systolic_strain_rate_radial_12_fup), NA)
  peak_systolic_strain_rate_radial_13_fup <- replace(peak_systolic_strain_rate_radial_13_fup, is.null(peak_systolic_strain_rate_radial_13_fup), NA)
  peak_systolic_strain_rate_radial_14_fup <- replace(peak_systolic_strain_rate_radial_14_fup, is.null(peak_systolic_strain_rate_radial_14_fup), NA)
  peak_systolic_strain_rate_radial_15_fup <- replace(peak_systolic_strain_rate_radial_15_fup, is.null(peak_systolic_strain_rate_radial_15_fup), NA)
  peak_systolic_strain_rate_radial_16_fup <- replace(peak_systolic_strain_rate_radial_16_fup, is.null(peak_systolic_strain_rate_radial_16_fup), NA)
  peak_systolic_strain_rate_circumferential_1_fup <- replace(peak_systolic_strain_rate_circumferential_1_fup, is.null(peak_systolic_strain_rate_circumferential_1_fup), NA)
  peak_systolic_strain_rate_circumferential_2_fup <- replace(peak_systolic_strain_rate_circumferential_2_fup, is.null(peak_systolic_strain_rate_circumferential_2_fup), NA)
  peak_systolic_strain_rate_circumferential_3_fup <- replace(peak_systolic_strain_rate_circumferential_3_fup, is.null(peak_systolic_strain_rate_circumferential_3_fup), NA)
  peak_systolic_strain_rate_circumferential_4_fup <- replace(peak_systolic_strain_rate_circumferential_4_fup, is.null(peak_systolic_strain_rate_circumferential_4_fup), NA)
  peak_systolic_strain_rate_circumferential_5_fup <- replace(peak_systolic_strain_rate_circumferential_5_fup, is.null(peak_systolic_strain_rate_circumferential_5_fup), NA)
  peak_systolic_strain_rate_circumferential_6_fup <- replace(peak_systolic_strain_rate_circumferential_6_fup, is.null(peak_systolic_strain_rate_circumferential_6_fup), NA)
  peak_systolic_strain_rate_circumferential_7_fup <- replace(peak_systolic_strain_rate_circumferential_7_fup, is.null(peak_systolic_strain_rate_circumferential_7_fup), NA)
  peak_systolic_strain_rate_circumferential_8_fup <- replace(peak_systolic_strain_rate_circumferential_8_fup, is.null(peak_systolic_strain_rate_circumferential_8_fup), NA)
  peak_systolic_strain_rate_circumferential_9_fup <- replace(peak_systolic_strain_rate_circumferential_9_fup, is.null(peak_systolic_strain_rate_circumferential_9_fup), NA)
  peak_systolic_strain_rate_circumferential_10_fup <- replace(peak_systolic_strain_rate_circumferential_10_fup, is.null(peak_systolic_strain_rate_circumferential_10_fup), NA)
  peak_systolic_strain_rate_circumferential_11_fup <- replace(peak_systolic_strain_rate_circumferential_11_fup, is.null(peak_systolic_strain_rate_circumferential_11_fup), NA)
  peak_systolic_strain_rate_circumferential_12_fup <- replace(peak_systolic_strain_rate_circumferential_12_fup, is.null(peak_systolic_strain_rate_circumferential_12_fup), NA)
  peak_systolic_strain_rate_circumferential_13_fup <- replace(peak_systolic_strain_rate_circumferential_13_fup, is.null(peak_systolic_strain_rate_circumferential_13_fup), NA)
  peak_systolic_strain_rate_circumferential_14_fup <- replace(peak_systolic_strain_rate_circumferential_14_fup, is.null(peak_systolic_strain_rate_circumferential_14_fup), NA)
  peak_systolic_strain_rate_circumferential_15_fup <- replace(peak_systolic_strain_rate_circumferential_15_fup, is.null(peak_systolic_strain_rate_circumferential_15_fup), NA)
  peak_systolic_strain_rate_circumferential_16_fup <- replace(peak_systolic_strain_rate_circumferential_16_fup, is.null(peak_systolic_strain_rate_circumferential_16_fup), NA)
  peak_systolic_strain_rate_longitudinal_1_fup <- replace(peak_systolic_strain_rate_longitudinal_1_fup, is.null(peak_systolic_strain_rate_longitudinal_1_fup), NA)
  peak_systolic_strain_rate_longitudinal_2_fup <- replace(peak_systolic_strain_rate_longitudinal_2_fup, is.null(peak_systolic_strain_rate_longitudinal_2_fup), NA)
  peak_systolic_strain_rate_longitudinal_3_fup <- replace(peak_systolic_strain_rate_longitudinal_3_fup, is.null(peak_systolic_strain_rate_longitudinal_3_fup), NA)
  peak_systolic_strain_rate_longitudinal_4_fup <- replace(peak_systolic_strain_rate_longitudinal_4_fup, is.null(peak_systolic_strain_rate_longitudinal_4_fup), NA)
  peak_systolic_strain_rate_longitudinal_5_fup <- replace(peak_systolic_strain_rate_longitudinal_5_fup, is.null(peak_systolic_strain_rate_longitudinal_5_fup), NA)
  peak_systolic_strain_rate_longitudinal_6_fup <- replace(peak_systolic_strain_rate_longitudinal_6_fup, is.null(peak_systolic_strain_rate_longitudinal_6_fup), NA)
  peak_systolic_strain_rate_longitudinal_7_fup <- replace(peak_systolic_strain_rate_longitudinal_7_fup, is.null(peak_systolic_strain_rate_longitudinal_7_fup), NA)
  peak_systolic_strain_rate_longitudinal_8_fup <- replace(peak_systolic_strain_rate_longitudinal_8_fup, is.null(peak_systolic_strain_rate_longitudinal_8_fup), NA)
  peak_systolic_strain_rate_longitudinal_9_fup <- replace(peak_systolic_strain_rate_longitudinal_9_fup, is.null(peak_systolic_strain_rate_longitudinal_9_fup), NA)
  peak_systolic_strain_rate_longitudinal_10_fup <- replace(peak_systolic_strain_rate_longitudinal_10_fup, is.null(peak_systolic_strain_rate_longitudinal_10_fup), NA)
  peak_systolic_strain_rate_longitudinal_11_fup <- replace(peak_systolic_strain_rate_longitudinal_11_fup, is.null(peak_systolic_strain_rate_longitudinal_11_fup), NA)
  peak_systolic_strain_rate_longitudinal_12_fup <- replace(peak_systolic_strain_rate_longitudinal_12_fup, is.null(peak_systolic_strain_rate_longitudinal_12_fup), NA)
  peak_systolic_strain_rate_longitudinal_13_fup <- replace(peak_systolic_strain_rate_longitudinal_13_fup, is.null(peak_systolic_strain_rate_longitudinal_13_fup), NA)
  peak_systolic_strain_rate_longitudinal_14_fup <- replace(peak_systolic_strain_rate_longitudinal_14_fup, is.null(peak_systolic_strain_rate_longitudinal_14_fup), NA)
  peak_systolic_strain_rate_longitudinal_15_fup <- replace(peak_systolic_strain_rate_longitudinal_15_fup, is.null(peak_systolic_strain_rate_longitudinal_15_fup), NA)
  peak_systolic_strain_rate_longitudinal_16_fup <- replace(peak_systolic_strain_rate_longitudinal_16_fup, is.null(peak_systolic_strain_rate_longitudinal_16_fup), NA)
  peak_displacement_radial_1_fup <- replace(peak_displacement_radial_1_fup, is.null(peak_displacement_radial_1_fup), NA)
  peak_displacement_radial_2_fup <- replace(peak_displacement_radial_2_fup, is.null(peak_displacement_radial_2_fup), NA)
  peak_displacement_radial_3_fup <- replace(peak_displacement_radial_3_fup, is.null(peak_displacement_radial_3_fup), NA)
  peak_displacement_radial_4_fup <- replace(peak_displacement_radial_4_fup, is.null(peak_displacement_radial_4_fup), NA)
  peak_displacement_radial_5_fup <- replace(peak_displacement_radial_5_fup, is.null(peak_displacement_radial_5_fup), NA)
  peak_displacement_radial_6_fup <- replace(peak_displacement_radial_6_fup, is.null(peak_displacement_radial_6_fup), NA)
  peak_displacement_radial_7_fup <- replace(peak_displacement_radial_7_fup, is.null(peak_displacement_radial_7_fup), NA)
  peak_displacement_radial_8_fup <- replace(peak_displacement_radial_8_fup, is.null(peak_displacement_radial_8_fup), NA)
  peak_displacement_radial_9_fup <- replace(peak_displacement_radial_9_fup, is.null(peak_displacement_radial_9_fup), NA)
  peak_displacement_radial_10_fup <- replace(peak_displacement_radial_10_fup, is.null(peak_displacement_radial_10_fup), NA)
  peak_displacement_radial_11_fup <- replace(peak_displacement_radial_11_fup, is.null(peak_displacement_radial_11_fup), NA)
  peak_displacement_radial_12_fup <- replace(peak_displacement_radial_12_fup, is.null(peak_displacement_radial_12_fup), NA)
  peak_displacement_radial_13_fup <- replace(peak_displacement_radial_13_fup, is.null(peak_displacement_radial_13_fup), NA)
  peak_displacement_radial_14_fup <- replace(peak_displacement_radial_14_fup, is.null(peak_displacement_radial_14_fup), NA)
  peak_displacement_radial_15_fup <- replace(peak_displacement_radial_15_fup, is.null(peak_displacement_radial_15_fup), NA)
  peak_displacement_radial_16_fup <- replace(peak_displacement_radial_16_fup, is.null(peak_displacement_radial_16_fup), NA)
  peak_displacement_circumferential_1_fup <- replace(peak_displacement_circumferential_1_fup, is.null(peak_displacement_circumferential_1_fup), NA)
  peak_displacement_circumferential_2_fup <- replace(peak_displacement_circumferential_2_fup, is.null(peak_displacement_circumferential_2_fup), NA)
  peak_displacement_circumferential_3_fup <- replace(peak_displacement_circumferential_3_fup, is.null(peak_displacement_circumferential_3_fup), NA)
  peak_displacement_circumferential_4_fup <- replace(peak_displacement_circumferential_4_fup, is.null(peak_displacement_circumferential_4_fup), NA)
  peak_displacement_circumferential_5_fup <- replace(peak_displacement_circumferential_5_fup, is.null(peak_displacement_circumferential_5_fup), NA)
  peak_displacement_circumferential_6_fup <- replace(peak_displacement_circumferential_6_fup, is.null(peak_displacement_circumferential_6_fup), NA)
  peak_displacement_circumferential_7_fup <- replace(peak_displacement_circumferential_7_fup, is.null(peak_displacement_circumferential_7_fup), NA)
  peak_displacement_circumferential_8_fup <- replace(peak_displacement_circumferential_8_fup, is.null(peak_displacement_circumferential_8_fup), NA)
  peak_displacement_circumferential_9_fup <- replace(peak_displacement_circumferential_9_fup, is.null(peak_displacement_circumferential_9_fup), NA)
  peak_displacement_circumferential_10_fup <- replace(peak_displacement_circumferential_10_fup, is.null(peak_displacement_circumferential_10_fup), NA)
  peak_displacement_circumferential_11_fup <- replace(peak_displacement_circumferential_11_fup, is.null(peak_displacement_circumferential_11_fup), NA)
  peak_displacement_circumferential_12_fup <- replace(peak_displacement_circumferential_12_fup, is.null(peak_displacement_circumferential_12_fup), NA)
  peak_displacement_circumferential_13_fup <- replace(peak_displacement_circumferential_13_fup, is.null(peak_displacement_circumferential_13_fup), NA)
  peak_displacement_circumferential_14_fup <- replace(peak_displacement_circumferential_14_fup, is.null(peak_displacement_circumferential_14_fup), NA)
  peak_displacement_circumferential_15_fup <- replace(peak_displacement_circumferential_15_fup, is.null(peak_displacement_circumferential_15_fup), NA)
  peak_displacement_circumferential_16_fup <- replace(peak_displacement_circumferential_16_fup, is.null(peak_displacement_circumferential_16_fup), NA)
  peak_displacement_longitudinal_1_fup <- replace(peak_displacement_longitudinal_1_fup, is.null(peak_displacement_longitudinal_1_fup), NA)
  peak_displacement_longitudinal_2_fup <- replace(peak_displacement_longitudinal_2_fup, is.null(peak_displacement_longitudinal_2_fup), NA)
  peak_displacement_longitudinal_3_fup <- replace(peak_displacement_longitudinal_3_fup, is.null(peak_displacement_longitudinal_3_fup), NA)
  peak_displacement_longitudinal_4_fup <- replace(peak_displacement_longitudinal_4_fup, is.null(peak_displacement_longitudinal_4_fup), NA)
  peak_displacement_longitudinal_5_fup <- replace(peak_displacement_longitudinal_5_fup, is.null(peak_displacement_longitudinal_5_fup), NA)
  peak_displacement_longitudinal_6_fup <- replace(peak_displacement_longitudinal_6_fup, is.null(peak_displacement_longitudinal_6_fup), NA)
  peak_displacement_longitudinal_7_fup <- replace(peak_displacement_longitudinal_7_fup, is.null(peak_displacement_longitudinal_7_fup), NA)
  peak_displacement_longitudinal_8_fup <- replace(peak_displacement_longitudinal_8_fup, is.null(peak_displacement_longitudinal_8_fup), NA)
  peak_displacement_longitudinal_9_fup <- replace(peak_displacement_longitudinal_9_fup, is.null(peak_displacement_longitudinal_9_fup), NA)
  peak_displacement_longitudinal_10_fup <- replace(peak_displacement_longitudinal_10_fup, is.null(peak_displacement_longitudinal_10_fup), NA)
  peak_displacement_longitudinal_11_fup <- replace(peak_displacement_longitudinal_11_fup, is.null(peak_displacement_longitudinal_11_fup), NA)
  peak_displacement_longitudinal_12_fup <- replace(peak_displacement_longitudinal_12_fup, is.null(peak_displacement_longitudinal_12_fup), NA)
  peak_displacement_longitudinal_13_fup <- replace(peak_displacement_longitudinal_13_fup, is.null(peak_displacement_longitudinal_13_fup), NA)
  peak_displacement_longitudinal_14_fup <- replace(peak_displacement_longitudinal_14_fup, is.null(peak_displacement_longitudinal_14_fup), NA)
  peak_displacement_longitudinal_15_fup <- replace(peak_displacement_longitudinal_15_fup, is.null(peak_displacement_longitudinal_15_fup), NA)
  peak_displacement_longitudinal_16_fup <- replace(peak_displacement_longitudinal_16_fup, is.null(peak_displacement_longitudinal_16_fup), NA)
  peak_systolic_velocity_radial_1_fup <- replace(peak_systolic_velocity_radial_1_fup, is.null(peak_systolic_velocity_radial_1_fup), NA)
  peak_systolic_velocity_radial_2_fup <- replace(peak_systolic_velocity_radial_2_fup, is.null(peak_systolic_velocity_radial_2_fup), NA)
  peak_systolic_velocity_radial_3_fup <- replace(peak_systolic_velocity_radial_3_fup, is.null(peak_systolic_velocity_radial_3_fup), NA)
  peak_systolic_velocity_radial_4_fup <- replace(peak_systolic_velocity_radial_4_fup, is.null(peak_systolic_velocity_radial_4_fup), NA)
  peak_systolic_velocity_radial_5_fup <- replace(peak_systolic_velocity_radial_5_fup, is.null(peak_systolic_velocity_radial_5_fup), NA)
  peak_systolic_velocity_radial_6_fup <- replace(peak_systolic_velocity_radial_6_fup, is.null(peak_systolic_velocity_radial_6_fup), NA)
  peak_systolic_velocity_radial_7_fup <- replace(peak_systolic_velocity_radial_7_fup, is.null(peak_systolic_velocity_radial_7_fup), NA)
  peak_systolic_velocity_radial_8_fup <- replace(peak_systolic_velocity_radial_8_fup, is.null(peak_systolic_velocity_radial_8_fup), NA)
  peak_systolic_velocity_radial_9_fup <- replace(peak_systolic_velocity_radial_9_fup, is.null(peak_systolic_velocity_radial_9_fup), NA)
  peak_systolic_velocity_radial_10_fup <- replace(peak_systolic_velocity_radial_10_fup, is.null(peak_systolic_velocity_radial_10_fup), NA)
  peak_systolic_velocity_radial_11_fup <- replace(peak_systolic_velocity_radial_11_fup, is.null(peak_systolic_velocity_radial_11_fup), NA)
  peak_systolic_velocity_radial_12_fup <- replace(peak_systolic_velocity_radial_12_fup, is.null(peak_systolic_velocity_radial_12_fup), NA)
  peak_systolic_velocity_radial_13_fup <- replace(peak_systolic_velocity_radial_13_fup, is.null(peak_systolic_velocity_radial_13_fup), NA)
  peak_systolic_velocity_radial_14_fup <- replace(peak_systolic_velocity_radial_14_fup, is.null(peak_systolic_velocity_radial_14_fup), NA)
  peak_systolic_velocity_radial_15_fup <- replace(peak_systolic_velocity_radial_15_fup, is.null(peak_systolic_velocity_radial_15_fup), NA)
  peak_systolic_velocity_radial_16_fup <- replace(peak_systolic_velocity_radial_16_fup, is.null(peak_systolic_velocity_radial_16_fup), NA)
  peak_systolic_velocity_circumferential_1_fup <- replace(peak_systolic_velocity_circumferential_1_fup, is.null(peak_systolic_velocity_circumferential_1_fup), NA)
  peak_systolic_velocity_circumferential_2_fup <- replace(peak_systolic_velocity_circumferential_2_fup, is.null(peak_systolic_velocity_circumferential_2_fup), NA)
  peak_systolic_velocity_circumferential_3_fup <- replace(peak_systolic_velocity_circumferential_3_fup, is.null(peak_systolic_velocity_circumferential_3_fup), NA)
  peak_systolic_velocity_circumferential_4_fup <- replace(peak_systolic_velocity_circumferential_4_fup, is.null(peak_systolic_velocity_circumferential_4_fup), NA)
  peak_systolic_velocity_circumferential_5_fup <- replace(peak_systolic_velocity_circumferential_5_fup, is.null(peak_systolic_velocity_circumferential_5_fup), NA)
  peak_systolic_velocity_circumferential_6_fup <- replace(peak_systolic_velocity_circumferential_6_fup, is.null(peak_systolic_velocity_circumferential_6_fup), NA)
  peak_systolic_velocity_circumferential_7_fup <- replace(peak_systolic_velocity_circumferential_7_fup, is.null(peak_systolic_velocity_circumferential_7_fup), NA)
  peak_systolic_velocity_circumferential_8_fup <- replace(peak_systolic_velocity_circumferential_8_fup, is.null(peak_systolic_velocity_circumferential_8_fup), NA)
  peak_systolic_velocity_circumferential_9_fup <- replace(peak_systolic_velocity_circumferential_9_fup, is.null(peak_systolic_velocity_circumferential_9_fup), NA)
  peak_systolic_velocity_circumferential_10_fup <- replace(peak_systolic_velocity_circumferential_10_fup, is.null(peak_systolic_velocity_circumferential_10_fup), NA)
  peak_systolic_velocity_circumferential_11_fup <- replace(peak_systolic_velocity_circumferential_11_fup, is.null(peak_systolic_velocity_circumferential_11_fup), NA)
  peak_systolic_velocity_circumferential_12_fup <- replace(peak_systolic_velocity_circumferential_12_fup, is.null(peak_systolic_velocity_circumferential_12_fup), NA)
  peak_systolic_velocity_circumferential_13_fup <- replace(peak_systolic_velocity_circumferential_13_fup, is.null(peak_systolic_velocity_circumferential_13_fup), NA)
  peak_systolic_velocity_circumferential_14_fup <- replace(peak_systolic_velocity_circumferential_14_fup, is.null(peak_systolic_velocity_circumferential_14_fup), NA)
  peak_systolic_velocity_circumferential_15_fup <- replace(peak_systolic_velocity_circumferential_15_fup, is.null(peak_systolic_velocity_circumferential_15_fup), NA)
  peak_systolic_velocity_circumferential_16_fup <- replace(peak_systolic_velocity_circumferential_16_fup, is.null(peak_systolic_velocity_circumferential_16_fup), NA)
  peak_systolic_velocity_longitudinal_1_fup <- replace(peak_systolic_velocity_longitudinal_1_fup, is.null(peak_systolic_velocity_longitudinal_1_fup), NA)
  peak_systolic_velocity_longitudinal_2_fup <- replace(peak_systolic_velocity_longitudinal_2_fup, is.null(peak_systolic_velocity_longitudinal_2_fup), NA)
  peak_systolic_velocity_longitudinal_3_fup <- replace(peak_systolic_velocity_longitudinal_3_fup, is.null(peak_systolic_velocity_longitudinal_3_fup), NA)
  peak_systolic_velocity_longitudinal_4_fup <- replace(peak_systolic_velocity_longitudinal_4_fup, is.null(peak_systolic_velocity_longitudinal_4_fup), NA)
  peak_systolic_velocity_longitudinal_5_fup <- replace(peak_systolic_velocity_longitudinal_5_fup, is.null(peak_systolic_velocity_longitudinal_5_fup), NA)
  peak_systolic_velocity_longitudinal_6_fup <- replace(peak_systolic_velocity_longitudinal_6_fup, is.null(peak_systolic_velocity_longitudinal_6_fup), NA)
  peak_systolic_velocity_longitudinal_7_fup <- replace(peak_systolic_velocity_longitudinal_7_fup, is.null(peak_systolic_velocity_longitudinal_7_fup), NA)
  peak_systolic_velocity_longitudinal_8_fup <- replace(peak_systolic_velocity_longitudinal_8_fup, is.null(peak_systolic_velocity_longitudinal_8_fup), NA)
  peak_systolic_velocity_longitudinal_9_fup <- replace(peak_systolic_velocity_longitudinal_9_fup, is.null(peak_systolic_velocity_longitudinal_9_fup), NA)
  peak_systolic_velocity_longitudinal_10_fup <- replace(peak_systolic_velocity_longitudinal_10_fup, is.null(peak_systolic_velocity_longitudinal_10_fup), NA)
  peak_systolic_velocity_longitudinal_11_fup <- replace(peak_systolic_velocity_longitudinal_11_fup, is.null(peak_systolic_velocity_longitudinal_11_fup), NA)
  peak_systolic_velocity_longitudinal_12_fup <- replace(peak_systolic_velocity_longitudinal_12_fup, is.null(peak_systolic_velocity_longitudinal_12_fup), NA)
  peak_systolic_velocity_longitudinal_13_fup <- replace(peak_systolic_velocity_longitudinal_13_fup, is.null(peak_systolic_velocity_longitudinal_13_fup), NA)
  peak_systolic_velocity_longitudinal_14_fup <- replace(peak_systolic_velocity_longitudinal_14_fup, is.null(peak_systolic_velocity_longitudinal_14_fup), NA)
  peak_systolic_velocity_longitudinal_15_fup <- replace(peak_systolic_velocity_longitudinal_15_fup, is.null(peak_systolic_velocity_longitudinal_15_fup), NA)
  peak_systolic_velocity_longitudinal_16_fup <- replace(peak_systolic_velocity_longitudinal_16_fup, is.null(peak_systolic_velocity_longitudinal_16_fup), NA)
  peak_systolic_velocity_radial_1_fup <- replace(peak_systolic_velocity_radial_1_fup, is.null(peak_systolic_velocity_radial_1_fup), NA)
  peak_systolic_velocity_radial_2_fup <- replace(peak_systolic_velocity_radial_2_fup, is.null(peak_systolic_velocity_radial_2_fup), NA)
  peak_systolic_velocity_radial_3_fup <- replace(peak_systolic_velocity_radial_3_fup, is.null(peak_systolic_velocity_radial_3_fup), NA)
  peak_systolic_velocity_radial_4_fup <- replace(peak_systolic_velocity_radial_4_fup, is.null(peak_systolic_velocity_radial_4_fup), NA)
  peak_systolic_velocity_radial_5_fup <- replace(peak_systolic_velocity_radial_5_fup, is.null(peak_systolic_velocity_radial_5_fup), NA)
  peak_systolic_velocity_radial_6_fup <- replace(peak_systolic_velocity_radial_6_fup, is.null(peak_systolic_velocity_radial_6_fup), NA)
  peak_systolic_velocity_radial_7_fup <- replace(peak_systolic_velocity_radial_7_fup, is.null(peak_systolic_velocity_radial_7_fup), NA)
  peak_systolic_velocity_radial_8_fup <- replace(peak_systolic_velocity_radial_8_fup, is.null(peak_systolic_velocity_radial_8_fup), NA)
  peak_systolic_velocity_radial_9_fup <- replace(peak_systolic_velocity_radial_9_fup, is.null(peak_systolic_velocity_radial_9_fup), NA)
  peak_systolic_velocity_radial_10_fup <- replace(peak_systolic_velocity_radial_10_fup, is.null(peak_systolic_velocity_radial_10_fup), NA)
  peak_systolic_velocity_radial_11_fup <- replace(peak_systolic_velocity_radial_11_fup, is.null(peak_systolic_velocity_radial_11_fup), NA)
  peak_systolic_velocity_radial_12_fup <- replace(peak_systolic_velocity_radial_12_fup, is.null(peak_systolic_velocity_radial_12_fup), NA)
  peak_systolic_velocity_radial_13_fup <- replace(peak_systolic_velocity_radial_13_fup, is.null(peak_systolic_velocity_radial_13_fup), NA)
  peak_systolic_velocity_radial_14_fup <- replace(peak_systolic_velocity_radial_14_fup, is.null(peak_systolic_velocity_radial_14_fup), NA)
  peak_systolic_velocity_radial_15_fup <- replace(peak_systolic_velocity_radial_15_fup, is.null(peak_systolic_velocity_radial_15_fup), NA)
  peak_systolic_velocity_radial_16_fup <- replace(peak_systolic_velocity_radial_16_fup, is.null(peak_systolic_velocity_radial_16_fup), NA)
  peak_systolic_velocity_circumferential_1_fup <- replace(peak_systolic_velocity_circumferential_1_fup, is.null(peak_systolic_velocity_circumferential_1_fup), NA)
  peak_systolic_velocity_circumferential_2_fup <- replace(peak_systolic_velocity_circumferential_2_fup, is.null(peak_systolic_velocity_circumferential_2_fup), NA)
  peak_systolic_velocity_circumferential_3_fup <- replace(peak_systolic_velocity_circumferential_3_fup, is.null(peak_systolic_velocity_circumferential_3_fup), NA)
  peak_systolic_velocity_circumferential_4_fup <- replace(peak_systolic_velocity_circumferential_4_fup, is.null(peak_systolic_velocity_circumferential_4_fup), NA)
  peak_systolic_velocity_circumferential_5_fup <- replace(peak_systolic_velocity_circumferential_5_fup, is.null(peak_systolic_velocity_circumferential_5_fup), NA)
  peak_systolic_velocity_circumferential_6_fup <- replace(peak_systolic_velocity_circumferential_6_fup, is.null(peak_systolic_velocity_circumferential_6_fup), NA)
  peak_systolic_velocity_circumferential_7_fup <- replace(peak_systolic_velocity_circumferential_7_fup, is.null(peak_systolic_velocity_circumferential_7_fup), NA)
  peak_systolic_velocity_circumferential_8_fup <- replace(peak_systolic_velocity_circumferential_8_fup, is.null(peak_systolic_velocity_circumferential_8_fup), NA)
  peak_systolic_velocity_circumferential_9_fup <- replace(peak_systolic_velocity_circumferential_9_fup, is.null(peak_systolic_velocity_circumferential_9_fup), NA)
  peak_systolic_velocity_circumferential_10_fup <- replace(peak_systolic_velocity_circumferential_10_fup, is.null(peak_systolic_velocity_circumferential_10_fup), NA)
  peak_systolic_velocity_circumferential_11_fup <- replace(peak_systolic_velocity_circumferential_11_fup, is.null(peak_systolic_velocity_circumferential_11_fup), NA)
  peak_systolic_velocity_circumferential_12_fup <- replace(peak_systolic_velocity_circumferential_12_fup, is.null(peak_systolic_velocity_circumferential_12_fup), NA)
  peak_systolic_velocity_circumferential_13_fup <- replace(peak_systolic_velocity_circumferential_13_fup, is.null(peak_systolic_velocity_circumferential_13_fup), NA)
  peak_systolic_velocity_circumferential_14_fup <- replace(peak_systolic_velocity_circumferential_14_fup, is.null(peak_systolic_velocity_circumferential_14_fup), NA)
  peak_systolic_velocity_circumferential_15_fup <- replace(peak_systolic_velocity_circumferential_15_fup, is.null(peak_systolic_velocity_circumferential_15_fup), NA)
  peak_systolic_velocity_circumferential_16_fup <- replace(peak_systolic_velocity_circumferential_16_fup, is.null(peak_systolic_velocity_circumferential_16_fup), NA)
  peak_systolic_velocity_longitudinal_1_fup <- replace(peak_systolic_velocity_longitudinal_1_fup, is.null(peak_systolic_velocity_longitudinal_1_fup), NA)
  peak_systolic_velocity_longitudinal_2_fup <- replace(peak_systolic_velocity_longitudinal_2_fup, is.null(peak_systolic_velocity_longitudinal_2_fup), NA)
  peak_systolic_velocity_longitudinal_3_fup <- replace(peak_systolic_velocity_longitudinal_3_fup, is.null(peak_systolic_velocity_longitudinal_3_fup), NA)
  peak_systolic_velocity_longitudinal_4_fup <- replace(peak_systolic_velocity_longitudinal_4_fup, is.null(peak_systolic_velocity_longitudinal_4_fup), NA)
  peak_systolic_velocity_longitudinal_5_fup <- replace(peak_systolic_velocity_longitudinal_5_fup, is.null(peak_systolic_velocity_longitudinal_5_fup), NA)
  peak_systolic_velocity_longitudinal_6_fup <- replace(peak_systolic_velocity_longitudinal_6_fup, is.null(peak_systolic_velocity_longitudinal_6_fup), NA)
  peak_systolic_velocity_longitudinal_7_fup <- replace(peak_systolic_velocity_longitudinal_7_fup, is.null(peak_systolic_velocity_longitudinal_7_fup), NA)
  peak_systolic_velocity_longitudinal_8_fup <- replace(peak_systolic_velocity_longitudinal_8_fup, is.null(peak_systolic_velocity_longitudinal_8_fup), NA)
  peak_systolic_velocity_longitudinal_9_fup <- replace(peak_systolic_velocity_longitudinal_9_fup, is.null(peak_systolic_velocity_longitudinal_9_fup), NA)
  peak_systolic_velocity_longitudinal_10_fup <- replace(peak_systolic_velocity_longitudinal_10_fup, is.null(peak_systolic_velocity_longitudinal_10_fup), NA)
  peak_systolic_velocity_longitudinal_11_fup <- replace(peak_systolic_velocity_longitudinal_11_fup, is.null(peak_systolic_velocity_longitudinal_11_fup), NA)
  peak_systolic_velocity_longitudinal_12_fup <- replace(peak_systolic_velocity_longitudinal_12_fup, is.null(peak_systolic_velocity_longitudinal_12_fup), NA)
  peak_systolic_velocity_longitudinal_13_fup <- replace(peak_systolic_velocity_longitudinal_13_fup, is.null(peak_systolic_velocity_longitudinal_13_fup), NA)
  peak_systolic_velocity_longitudinal_14_fup <- replace(peak_systolic_velocity_longitudinal_14_fup, is.null(peak_systolic_velocity_longitudinal_14_fup), NA)
  peak_systolic_velocity_longitudinal_15_fup <- replace(peak_systolic_velocity_longitudinal_15_fup, is.null(peak_systolic_velocity_longitudinal_15_fup), NA)
  peak_systolic_velocity_longitudinal_16_fup <- replace(peak_systolic_velocity_longitudinal_16_fup, is.null(peak_systolic_velocity_longitudinal_16_fup), NA)
  
  cmr_fup <- data.frame(procedure_name_fup,
                        record_id,
                        nhs_number,
                        date_of_birth,
                        gender,
                        height,
                        weight,
                        date_cmr_fup,
                        hr_cmr_fup,
                        lvedv_cmr_fup,
                        lvesv_cmr_fup,
                        lvsv_cmr_fup,
                        lvef_cmr_fup,
                        lv_mass_cmr_fup,
                        rvedv_cmr_fup,
                        rvesv_cmr_fup,
                        rvsv_cmr_fup,
                        rvef_cmr_fup,
                        #mapseinf_cmr_fup,
                        #mapseant_cmr_fup,
                        mapselat_cmr_fup,	
                        #mapsesep_cmr_fup,	
                        tapse_cmr_fup,
                        min_la_vol_cmr_fup,
                        max_la_vol_cmr_fup,
                        la_ef_cmr_fup,
                        # average_lv_long_axis_strain_cmr_fup, average_lv_long_axis_difference_cmr_fup,average_la_long_axis_strain_cmr_fup,average_la_long_axis_difference_cmr_fup,lv_long_axis_strain_2ch_cmr_fup,lv_long_axis_difference_2ch_cmr_fup,la_long_axis_strain_2ch_cmr_fup,la_long_axis_difference_2ch_cmr_fup,la_av_junction_strain_2ch_cmr_fup,la_av_junction_difference_2ch_cmr_fup,lv_la_strain_4ch_cmr_fup,la_la_strain_4ch_cmr_fup,lv_la_difference_4ch_cmr_fup,la_la_difference_4ch_cmr_fup,ra_la_strain_4ch_cmr_fup,ra_la_difference_4ch_cmr_fup,la_av_junction_strain_4ch_cmr_fup,la_av_junction_difference_4ch_cmr_fup,
                        #   sax_gcs_cmr_fup,sax_grs_cmr_fup,lax_gls_cmr_fup,lax_grs_cmr_fup,
                        ##   total_forward_volume_ao_cmr_fup,
                        #  total_backward_volume_ao_cmr_fup,
                        #  total_volume_ao_cmr_fup,
                        #  regurgitation_fraction_ao_cmr_fup,
                        #  vol_min_ao_cmr_fup,
                        #  max_pressure_gradient_ao_cmr_fup,
                        #  mean_pressure_gradient_ao_cmr_fup,
                        #  maximum_velocity_ao_cmr_fup,
                        #  # mr_cmr_fup, mr_fraction_cmr_fup, mr_vol_cmr_fup,
                        #  total_forward_volume_pa_cmr_fup,
                        #  total_backward_volume_pa_cmr_fup,
                        #  total_volume_pa_cmr_fup,
                        #  regurgitation_fraction_pa_cmr_fup,
                        #  vol_min_pa_cmr_fup,
                        #  max_pressure_gradient_pa_cmr_fup,
                        #  mean_pressure_gradient_pa_cmr_fup,
                        #   maximum_velocity_pa_cmr_fup,
                        # tr_cmr_fup, tr_fraction_cmr_fup, tr_vol_cmr_fup,
                        #  qp_qs_cmr_fup, 
                        peak_strain_radial_1_fup,
                        peak_strain_radial_2_fup,
                        peak_strain_radial_3_fup,
                        peak_strain_radial_4_fup,
                        peak_strain_radial_5_fup,
                        peak_strain_radial_6_fup,
                        peak_strain_radial_7_fup,
                        peak_strain_radial_8_fup,
                        peak_strain_radial_9_fup,
                        peak_strain_radial_10_fup,
                        peak_strain_radial_11_fup,
                        peak_strain_radial_12_fup,
                        peak_strain_radial_13_fup,
                        peak_strain_radial_14_fup,
                        peak_strain_radial_15_fup,
                        peak_strain_radial_16_fup,
                        peak_strain_circumferential_1_fup,
                        peak_strain_circumferential_2_fup,
                        peak_strain_circumferential_3_fup,
                        peak_strain_circumferential_4_fup,
                        peak_strain_circumferential_5_fup,
                        peak_strain_circumferential_6_fup,
                        peak_strain_circumferential_7_fup,
                        peak_strain_circumferential_8_fup,
                        peak_strain_circumferential_9_fup,
                        peak_strain_circumferential_10_fup,
                        peak_strain_circumferential_11_fup,
                        peak_strain_circumferential_12_fup,
                        peak_strain_circumferential_13_fup,
                        peak_strain_circumferential_14_fup,
                        peak_strain_circumferential_15_fup,
                        peak_strain_circumferential_16_fup,
                        peak_strain_longitudinal_1_fup,
                        peak_strain_longitudinal_2_fup,
                        peak_strain_longitudinal_3_fup,
                        peak_strain_longitudinal_4_fup,
                        peak_strain_longitudinal_5_fup,
                        peak_strain_longitudinal_6_fup,
                        peak_strain_longitudinal_7_fup,
                        peak_strain_longitudinal_8_fup,
                        peak_strain_longitudinal_9_fup,
                        peak_strain_longitudinal_10_fup,
                        peak_strain_longitudinal_11_fup,
                        peak_strain_longitudinal_12_fup,
                        peak_strain_longitudinal_13_fup,
                        peak_strain_longitudinal_14_fup,
                        peak_strain_longitudinal_15_fup,
                        peak_strain_longitudinal_16_fup,
                        time_to_peak_radial_1_fup,
                        time_to_peak_radial_2_fup,
                        time_to_peak_radial_3_fup,
                        time_to_peak_radial_4_fup,
                        time_to_peak_radial_5_fup,
                        time_to_peak_radial_6_fup,
                        time_to_peak_radial_7_fup,
                        time_to_peak_radial_8_fup,
                        time_to_peak_radial_9_fup,
                        time_to_peak_radial_10_fup,
                        time_to_peak_radial_11_fup,
                        time_to_peak_radial_12_fup,
                        time_to_peak_radial_13_fup,
                        time_to_peak_radial_14_fup,
                        time_to_peak_radial_15_fup,
                        time_to_peak_radial_16_fup,
                        time_to_peak_circumferential_1_fup,
                        time_to_peak_circumferential_2_fup,
                        time_to_peak_circumferential_3_fup,
                        time_to_peak_circumferential_4_fup,
                        time_to_peak_circumferential_5_fup,
                        time_to_peak_circumferential_6_fup,
                        time_to_peak_circumferential_7_fup,
                        time_to_peak_circumferential_8_fup,
                        time_to_peak_circumferential_9_fup,
                        time_to_peak_circumferential_10_fup,
                        time_to_peak_circumferential_11_fup,
                        time_to_peak_circumferential_12_fup,
                        time_to_peak_circumferential_13_fup,
                        time_to_peak_circumferential_14_fup,
                        time_to_peak_circumferential_15_fup,
                        time_to_peak_circumferential_16_fup,
                        time_to_peak_longitudinal_1_fup,
                        time_to_peak_longitudinal_2_fup,
                        time_to_peak_longitudinal_3_fup,
                        time_to_peak_longitudinal_4_fup,
                        time_to_peak_longitudinal_5_fup,
                        time_to_peak_longitudinal_6_fup,
                        time_to_peak_longitudinal_7_fup,
                        time_to_peak_longitudinal_8_fup,
                        time_to_peak_longitudinal_9_fup,
                        time_to_peak_longitudinal_10_fup,
                        time_to_peak_longitudinal_11_fup,
                        time_to_peak_longitudinal_12_fup,
                        time_to_peak_longitudinal_13_fup,
                        time_to_peak_longitudinal_14_fup,
                        time_to_peak_longitudinal_15_fup,
                        time_to_peak_longitudinal_16_fup,
                        peak_systolic_strain_rate_radial_1_fup,
                        peak_systolic_strain_rate_radial_2_fup,
                        peak_systolic_strain_rate_radial_3_fup,
                        peak_systolic_strain_rate_radial_4_fup,
                        peak_systolic_strain_rate_radial_5_fup,
                        peak_systolic_strain_rate_radial_6_fup,
                        peak_systolic_strain_rate_radial_7_fup,
                        peak_systolic_strain_rate_radial_8_fup,
                        peak_systolic_strain_rate_radial_9_fup,
                        peak_systolic_strain_rate_radial_10_fup,
                        peak_systolic_strain_rate_radial_11_fup,
                        peak_systolic_strain_rate_radial_12_fup,
                        peak_systolic_strain_rate_radial_13_fup,
                        peak_systolic_strain_rate_radial_14_fup,
                        peak_systolic_strain_rate_radial_15_fup,
                        peak_systolic_strain_rate_radial_16_fup,
                        peak_systolic_strain_rate_circumferential_1_fup,
                        peak_systolic_strain_rate_circumferential_2_fup,
                        peak_systolic_strain_rate_circumferential_3_fup,
                        peak_systolic_strain_rate_circumferential_4_fup,
                        peak_systolic_strain_rate_circumferential_5_fup,
                        peak_systolic_strain_rate_circumferential_6_fup,
                        peak_systolic_strain_rate_circumferential_7_fup,
                        peak_systolic_strain_rate_circumferential_8_fup,
                        peak_systolic_strain_rate_circumferential_9_fup,
                        peak_systolic_strain_rate_circumferential_10_fup,
                        peak_systolic_strain_rate_circumferential_11_fup,
                        peak_systolic_strain_rate_circumferential_12_fup,
                        peak_systolic_strain_rate_circumferential_13_fup,
                        peak_systolic_strain_rate_circumferential_14_fup,
                        peak_systolic_strain_rate_circumferential_15_fup,
                        peak_systolic_strain_rate_circumferential_16_fup,
                        peak_systolic_strain_rate_longitudinal_1_fup,
                        peak_systolic_strain_rate_longitudinal_2_fup,
                        peak_systolic_strain_rate_longitudinal_3_fup,
                        peak_systolic_strain_rate_longitudinal_4_fup,
                        peak_systolic_strain_rate_longitudinal_5_fup,
                        peak_systolic_strain_rate_longitudinal_6_fup,
                        peak_systolic_strain_rate_longitudinal_7_fup,
                        peak_systolic_strain_rate_longitudinal_8_fup,
                        peak_systolic_strain_rate_longitudinal_9_fup,
                        peak_systolic_strain_rate_longitudinal_10_fup,
                        peak_systolic_strain_rate_longitudinal_11_fup,
                        peak_systolic_strain_rate_longitudinal_12_fup,
                        peak_systolic_strain_rate_longitudinal_13_fup,
                        peak_systolic_strain_rate_longitudinal_14_fup,
                        peak_systolic_strain_rate_longitudinal_15_fup,
                        peak_systolic_strain_rate_longitudinal_16_fup,
                        peak_systolic_strain_rate_radial_1_fup,
                        peak_systolic_strain_rate_radial_2_fup,
                        peak_systolic_strain_rate_radial_3_fup,
                        peak_systolic_strain_rate_radial_4_fup,
                        peak_systolic_strain_rate_radial_5_fup,
                        peak_systolic_strain_rate_radial_6_fup,
                        peak_systolic_strain_rate_radial_7_fup,
                        peak_systolic_strain_rate_radial_8_fup,
                        peak_systolic_strain_rate_radial_9_fup,
                        peak_systolic_strain_rate_radial_10_fup,
                        peak_systolic_strain_rate_radial_11_fup,
                        peak_systolic_strain_rate_radial_12_fup,
                        peak_systolic_strain_rate_radial_13_fup,
                        peak_systolic_strain_rate_radial_14_fup,
                        peak_systolic_strain_rate_radial_15_fup,
                        peak_systolic_strain_rate_radial_16_fup,
                        peak_systolic_strain_rate_circumferential_1_fup,
                        peak_systolic_strain_rate_circumferential_2_fup,
                        peak_systolic_strain_rate_circumferential_3_fup,
                        peak_systolic_strain_rate_circumferential_4_fup,
                        peak_systolic_strain_rate_circumferential_5_fup,
                        peak_systolic_strain_rate_circumferential_6_fup,
                        peak_systolic_strain_rate_circumferential_7_fup,
                        peak_systolic_strain_rate_circumferential_8_fup,
                        peak_systolic_strain_rate_circumferential_9_fup,
                        peak_systolic_strain_rate_circumferential_10_fup,
                        peak_systolic_strain_rate_circumferential_11_fup,
                        peak_systolic_strain_rate_circumferential_12_fup,
                        peak_systolic_strain_rate_circumferential_13_fup,
                        peak_systolic_strain_rate_circumferential_14_fup,
                        peak_systolic_strain_rate_circumferential_15_fup,
                        peak_systolic_strain_rate_circumferential_16_fup,
                        peak_systolic_strain_rate_longitudinal_1_fup,
                        peak_systolic_strain_rate_longitudinal_2_fup,
                        peak_systolic_strain_rate_longitudinal_3_fup,
                        peak_systolic_strain_rate_longitudinal_4_fup,
                        peak_systolic_strain_rate_longitudinal_5_fup,
                        peak_systolic_strain_rate_longitudinal_6_fup,
                        peak_systolic_strain_rate_longitudinal_7_fup,
                        peak_systolic_strain_rate_longitudinal_8_fup,
                        peak_systolic_strain_rate_longitudinal_9_fup,
                        peak_systolic_strain_rate_longitudinal_10_fup,
                        peak_systolic_strain_rate_longitudinal_11_fup,
                        peak_systolic_strain_rate_longitudinal_12_fup,
                        peak_systolic_strain_rate_longitudinal_13_fup,
                        peak_systolic_strain_rate_longitudinal_14_fup,
                        peak_systolic_strain_rate_longitudinal_15_fup,
                        peak_systolic_strain_rate_longitudinal_16_fup,
                        peak_displacement_radial_1_fup,
                        peak_displacement_radial_2_fup,
                        peak_displacement_radial_3_fup,
                        peak_displacement_radial_4_fup,
                        peak_displacement_radial_5_fup,
                        peak_displacement_radial_6_fup,
                        peak_displacement_radial_7_fup,
                        peak_displacement_radial_8_fup,
                        peak_displacement_radial_9_fup,
                        peak_displacement_radial_10_fup,
                        peak_displacement_radial_11_fup,
                        peak_displacement_radial_12_fup,
                        peak_displacement_radial_13_fup,
                        peak_displacement_radial_14_fup,
                        peak_displacement_radial_15_fup,
                        peak_displacement_radial_16_fup,
                        peak_displacement_circumferential_1_fup,
                        peak_displacement_circumferential_2_fup,
                        peak_displacement_circumferential_3_fup,
                        peak_displacement_circumferential_4_fup,
                        peak_displacement_circumferential_5_fup,
                        peak_displacement_circumferential_6_fup,
                        peak_displacement_circumferential_7_fup,
                        peak_displacement_circumferential_8_fup,
                        peak_displacement_circumferential_9_fup,
                        peak_displacement_circumferential_10_fup,
                        peak_displacement_circumferential_11_fup,
                        peak_displacement_circumferential_12_fup,
                        peak_displacement_circumferential_13_fup,
                        peak_displacement_circumferential_14_fup,
                        peak_displacement_circumferential_15_fup,
                        peak_displacement_circumferential_16_fup,
                        peak_displacement_longitudinal_1_fup,
                        peak_displacement_longitudinal_2_fup,
                        peak_displacement_longitudinal_3_fup,
                        peak_displacement_longitudinal_4_fup,
                        peak_displacement_longitudinal_5_fup,
                        peak_displacement_longitudinal_6_fup,
                        peak_displacement_longitudinal_7_fup,
                        peak_displacement_longitudinal_8_fup,
                        peak_displacement_longitudinal_9_fup,
                        peak_displacement_longitudinal_10_fup,
                        peak_displacement_longitudinal_11_fup,
                        peak_displacement_longitudinal_12_fup,
                        peak_displacement_longitudinal_13_fup,
                        peak_displacement_longitudinal_14_fup,
                        peak_displacement_longitudinal_15_fup,
                        peak_displacement_longitudinal_16_fup,
                        peak_systolic_velocity_radial_1_fup,
                        peak_systolic_velocity_radial_2_fup,
                        peak_systolic_velocity_radial_3_fup,
                        peak_systolic_velocity_radial_4_fup,
                        peak_systolic_velocity_radial_5_fup,
                        peak_systolic_velocity_radial_6_fup,
                        peak_systolic_velocity_radial_7_fup,
                        peak_systolic_velocity_radial_8_fup,
                        peak_systolic_velocity_radial_9_fup,
                        peak_systolic_velocity_radial_10_fup,
                        peak_systolic_velocity_radial_11_fup,
                        peak_systolic_velocity_radial_12_fup,
                        peak_systolic_velocity_radial_13_fup,
                        peak_systolic_velocity_radial_14_fup,
                        peak_systolic_velocity_radial_15_fup,
                        peak_systolic_velocity_radial_16_fup,
                        peak_systolic_velocity_circumferential_1_fup,
                        peak_systolic_velocity_circumferential_2_fup,
                        peak_systolic_velocity_circumferential_3_fup,
                        peak_systolic_velocity_circumferential_4_fup,
                        peak_systolic_velocity_circumferential_5_fup,
                        peak_systolic_velocity_circumferential_6_fup,
                        peak_systolic_velocity_circumferential_7_fup,
                        peak_systolic_velocity_circumferential_8_fup,
                        peak_systolic_velocity_circumferential_9_fup,
                        peak_systolic_velocity_circumferential_10_fup,
                        peak_systolic_velocity_circumferential_11_fup,
                        peak_systolic_velocity_circumferential_12_fup,
                        peak_systolic_velocity_circumferential_13_fup,
                        peak_systolic_velocity_circumferential_14_fup,
                        peak_systolic_velocity_circumferential_15_fup,
                        peak_systolic_velocity_circumferential_16_fup,
                        peak_systolic_velocity_longitudinal_1_fup,
                        peak_systolic_velocity_longitudinal_2_fup,
                        peak_systolic_velocity_longitudinal_3_fup,
                        peak_systolic_velocity_longitudinal_4_fup,
                        peak_systolic_velocity_longitudinal_5_fup,
                        peak_systolic_velocity_longitudinal_6_fup,
                        peak_systolic_velocity_longitudinal_7_fup,
                        peak_systolic_velocity_longitudinal_8_fup,
                        peak_systolic_velocity_longitudinal_9_fup,
                        peak_systolic_velocity_longitudinal_10_fup,
                        peak_systolic_velocity_longitudinal_11_fup,
                        peak_systolic_velocity_longitudinal_12_fup,
                        peak_systolic_velocity_longitudinal_13_fup,
                        peak_systolic_velocity_longitudinal_14_fup,
                        peak_systolic_velocity_longitudinal_15_fup,
                        peak_systolic_velocity_longitudinal_16_fup,
                        peak_systolic_velocity_radial_1_fup,
                        peak_systolic_velocity_radial_2_fup,
                        peak_systolic_velocity_radial_3_fup,
                        peak_systolic_velocity_radial_4_fup,
                        peak_systolic_velocity_radial_5_fup,
                        peak_systolic_velocity_radial_6_fup,
                        peak_systolic_velocity_radial_7_fup,
                        peak_systolic_velocity_radial_8_fup,
                        peak_systolic_velocity_radial_9_fup,
                        peak_systolic_velocity_radial_10_fup,
                        peak_systolic_velocity_radial_11_fup,
                        peak_systolic_velocity_radial_12_fup,
                        peak_systolic_velocity_radial_13_fup,
                        peak_systolic_velocity_radial_14_fup,
                        peak_systolic_velocity_radial_15_fup,
                        peak_systolic_velocity_radial_16_fup,
                        peak_systolic_velocity_circumferential_1_fup,
                        peak_systolic_velocity_circumferential_2_fup,
                        peak_systolic_velocity_circumferential_3_fup,
                        peak_systolic_velocity_circumferential_4_fup,
                        peak_systolic_velocity_circumferential_5_fup,
                        peak_systolic_velocity_circumferential_6_fup,
                        peak_systolic_velocity_circumferential_7_fup,
                        peak_systolic_velocity_circumferential_8_fup,
                        peak_systolic_velocity_circumferential_9_fup,
                        peak_systolic_velocity_circumferential_10_fup,
                        peak_systolic_velocity_circumferential_11_fup,
                        peak_systolic_velocity_circumferential_12_fup,
                        peak_systolic_velocity_circumferential_13_fup,
                        peak_systolic_velocity_circumferential_14_fup,
                        peak_systolic_velocity_circumferential_15_fup,
                        peak_systolic_velocity_circumferential_16_fup,
                        peak_systolic_velocity_longitudinal_1_fup,
                        peak_systolic_velocity_longitudinal_2_fup,
                        peak_systolic_velocity_longitudinal_3_fup,
                        peak_systolic_velocity_longitudinal_4_fup,
                        peak_systolic_velocity_longitudinal_5_fup,
                        peak_systolic_velocity_longitudinal_6_fup,
                        peak_systolic_velocity_longitudinal_7_fup,
                        peak_systolic_velocity_longitudinal_8_fup,
                        peak_systolic_velocity_longitudinal_9_fup,
                        peak_systolic_velocity_longitudinal_10_fup,
                        peak_systolic_velocity_longitudinal_11_fup,
                        peak_systolic_velocity_longitudinal_12_fup,
                        peak_systolic_velocity_longitudinal_13_fup,
                        peak_systolic_velocity_longitudinal_14_fup,
                        peak_systolic_velocity_longitudinal_15_fup,
                        peak_systolic_velocity_longitudinal_16_fup
  )
  if(cmr_fup$gender=="M") cmr_fup$gender <- "1" else cmr_fup$gender <- "2"
  
  source("var_handler_fup.R", local = script_env)
  # Check for missing columns in toredcap
  #missing_columns <- setdiff(names(cmr_fup), names(toredcap))
  
  # Add missing columns to toredcap with NA values (adjust data type as needed)
  #for (col_name in missing_columns) {toredcap[[col_name]] <- ""}
  
  toredcap <- toredcap %>% 
    rows_insert(cmr_fup, by = "record_id", copy = TRUE #, conflict = "ignore"
                )
  
}

toredcap$record_id <- toredcap$record_id
toredcap$record_id <- NULL

# Save output_data to a file or database
source("var_handler.r", local = script_env)
#toredcap[toredcap == "-inf"] <- NA

#write_csv(toredcap, "toredcap_nanull.csv", na = "")

common_vars <- intersect(names(toredcap), names(cmr_fup))
cmrdata <- toredcap[, common_vars]

#toredcap <<- toredcap