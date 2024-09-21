library(Hmisc)

label(cmrdata$record_id)="Record ID"
label(cmrdata$hospital_id)="Patient ID (hospital)"
label(cmrdata$date_of_birth)="Date of Birth"
label(cmrdata$age)="Age"
label(cmrdata$gender)="Gender"
label(cmrdata$height)="Height (cm)"
label(cmrdata$weight)="Weight (Kg)"
label(cmrdata$bmi)="BMI"
label(cmrdata$bsa)="BSA"
label(cmrdata$patient_data_complete)="Complete?"
label(cmrdata$patient_ethnicity)="Patient ethnicity"
label(cmrdata$phenotype)="Phenotype at baseline"
label(cmrdata$syncope)="History of syncope"
label(cmrdata$pvc)="History of PVC"
label(cmrdata$frequent_pvc)="History of frequent PVCs"
label(cmrdata$va)="History of Life-threatening VAs"
label(cmrdata$atrial_fibrillation)="Atrial fibrillation"
label(cmrdata$atrial_flutter)="Atrial flutter"
label(cmrdata$atrial_arrh)="Other atrial arrhythmia"
label(cmrdata$pm)="PM"
label(cmrdata$crt)="CRT"
label(cmrdata$icd)="ICD"
label(cmrdata$baseline_complete)="Complete?"
label(cmrdata$proband_id)="Proband ID"
label(cmrdata$proband)="Is this patient the Proband?"
label(cmrdata$firstdegree)="Is this patient a First degree relative?"
label(cmrdata$first_degree_type)="First degree type"
label(cmrdata$gene)="Gene"
label(cmrdata$variant_type)="Variant type"
label(cmrdata$other_genes)="Mutations in other genes"
label(cmrdata$other_variant_type)="Variant type"
label(cmrdata$genetics_complete)="Complete?"
label(cmrdata$t_wave_inversion___1)="T wave inversion (choice=None)"
label(cmrdata$t_wave_inversion___2)="T wave inversion (choice=V1-V3 without RBBB)"
label(cmrdata$t_wave_inversion___3)="T wave inversion (choice=V4-V6)"
label(cmrdata$rbbb)="RBBB"
label(cmrdata$epsilon_wave)="Epsilon wave"
label(cmrdata$qrs_prolongation)="QRS prolongation"
label(cmrdata$baseline_ecg_complete)="Complete?"
label(cmrdata$cmr_involvement)="CMR involvement"
label(cmrdata$procedure_name)="Procedure Name"
label(cmrdata$date_cmr)="Date of baseline CMR exam"
label(cmrdata$date_cmr_2)="Date of CMR 2"
label(cmrdata$date_cmr_3)="Date of CMR 3"
label(cmrdata$date_cmr_4)="Date of CMR 4"
label(cmrdata$date_cmr_5)="Date of CMR 5"
label(cmrdata$date_cmr_6)="Date of CMR 6"
label(cmrdata$date_cmr_7)="Date of CMR 7"
label(cmrdata$akinesia_cmr)="Akinesia"
label(cmrdata$akinesia_seg_cmr___1)="Akinesia Segments (choice=basal anterior)"
label(cmrdata$akinesia_seg_cmr___2)="Akinesia Segments (choice=basal anteroseptal)"
label(cmrdata$akinesia_seg_cmr___3)="Akinesia Segments (choice=basal inferoseptal)"
label(cmrdata$akinesia_seg_cmr___4)="Akinesia Segments (choice=basal inferior)"
label(cmrdata$akinesia_seg_cmr___5)="Akinesia Segments (choice=basal inferolateral)"
label(cmrdata$akinesia_seg_cmr___6)="Akinesia Segments (choice=basal anterolateral)"
label(cmrdata$akinesia_seg_cmr___7)="Akinesia Segments (choice=mid anterior)"
label(cmrdata$akinesia_seg_cmr___8)="Akinesia Segments (choice=mid anteroseptal)"
label(cmrdata$akinesia_seg_cmr___9)="Akinesia Segments (choice=mid inferoseptal)"
label(cmrdata$akinesia_seg_cmr___10)="Akinesia Segments (choice=mid inferior)"
label(cmrdata$akinesia_seg_cmr___11)="Akinesia Segments (choice=mid inferolateral)"
label(cmrdata$akinesia_seg_cmr___12)="Akinesia Segments (choice=mid anterolateral)"
label(cmrdata$akinesia_seg_cmr___13)="Akinesia Segments (choice=apical anterior)"
label(cmrdata$akinesia_seg_cmr___14)="Akinesia Segments (choice=apical septal)"
label(cmrdata$akinesia_seg_cmr___15)="Akinesia Segments (choice=apical inferior)"
label(cmrdata$akinesia_seg_cmr___16)="Akinesia Segments (choice=apical lateral)"
label(cmrdata$akinesia_seg_cmr___17)="Akinesia Segments (choice=apex)"
label(cmrdata$hypokinesia_cmr)="Hypokinesia"
label(cmrdata$hypokinesia_seg_cmr___1)="Hypokinesia Segments (choice=basal anterior)"
label(cmrdata$hypokinesia_seg_cmr___2)="Hypokinesia Segments (choice=basal anteroseptal)"
label(cmrdata$hypokinesia_seg_cmr___3)="Hypokinesia Segments (choice=basal inferoseptal)"
label(cmrdata$hypokinesia_seg_cmr___4)="Hypokinesia Segments (choice=basal inferior)"
label(cmrdata$hypokinesia_seg_cmr___5)="Hypokinesia Segments (choice=basal inferolateral)"
label(cmrdata$hypokinesia_seg_cmr___6)="Hypokinesia Segments (choice=basal anterolateral)"
label(cmrdata$hypokinesia_seg_cmr___7)="Hypokinesia Segments (choice=mid anterior)"
label(cmrdata$hypokinesia_seg_cmr___8)="Hypokinesia Segments (choice=mid anteroseptal)"
label(cmrdata$hypokinesia_seg_cmr___9)="Hypokinesia Segments (choice=mid inferoseptal)"
label(cmrdata$hypokinesia_seg_cmr___10)="Hypokinesia Segments (choice=mid inferior)"
label(cmrdata$hypokinesia_seg_cmr___11)="Hypokinesia Segments (choice=mid inferolateral)"
label(cmrdata$hypokinesia_seg_cmr___12)="Hypokinesia Segments (choice=mid anterolateral)"
label(cmrdata$hypokinesia_seg_cmr___13)="Hypokinesia Segments (choice=apical anterior)"
label(cmrdata$hypokinesia_seg_cmr___14)="Hypokinesia Segments (choice=apical septal)"
label(cmrdata$hypokinesia_seg_cmr___15)="Hypokinesia Segments (choice=apical inferior)"
label(cmrdata$hypokinesia_seg_cmr___16)="Hypokinesia Segments (choice=apical lateral)"
label(cmrdata$hypokinesia_seg_cmr___17)="Hypokinesia Segments (choice=apex)"
label(cmrdata$dyskinesia_cmr)="Dyskinesia"
label(cmrdata$dyskinesia_seg_cmr___1)="Dyskinesia Segments (choice=basal anterior)"
label(cmrdata$dyskinesia_seg_cmr___2)="Dyskinesia Segments (choice=basal anteroseptal)"
label(cmrdata$dyskinesia_seg_cmr___3)="Dyskinesia Segments (choice=basal inferoseptal)"
label(cmrdata$dyskinesia_seg_cmr___4)="Dyskinesia Segments (choice=basal inferior)"
label(cmrdata$dyskinesia_seg_cmr___5)="Dyskinesia Segments (choice=basal inferolateral)"
label(cmrdata$dyskinesia_seg_cmr___6)="Dyskinesia Segments (choice=basal anterolateral)"
label(cmrdata$dyskinesia_seg_cmr___7)="Dyskinesia Segments (choice=mid anterior)"
label(cmrdata$dyskinesia_seg_cmr___8)="Dyskinesia Segments (choice=mid anteroseptal)"
label(cmrdata$dyskinesia_seg_cmr___9)="Dyskinesia Segments (choice=mid inferoseptal)"
label(cmrdata$dyskinesia_seg_cmr___10)="Dyskinesia Segments (choice=mid inferior)"
label(cmrdata$dyskinesia_seg_cmr___11)="Dyskinesia Segments (choice=mid inferolateral)"
label(cmrdata$dyskinesia_seg_cmr___12)="Dyskinesia Segments (choice=mid anterolateral)"
label(cmrdata$dyskinesia_seg_cmr___13)="Dyskinesia Segments (choice=apical anterior)"
label(cmrdata$dyskinesia_seg_cmr___14)="Dyskinesia Segments (choice=apical septal)"
label(cmrdata$dyskinesia_seg_cmr___15)="Dyskinesia Segments (choice=apical inferior)"
label(cmrdata$dyskinesia_seg_cmr___16)="Dyskinesia Segments (choice=apical lateral)"
label(cmrdata$dyskinesia_seg_cmr___17)="Dyskinesia Segments (choice=apex)"
label(cmrdata$aneurysm_cmr)="Aneurysm"
label(cmrdata$aneurysm_seg_cmr___1)="Aneurysm Segments (choice=basal anterior)"
label(cmrdata$aneurysm_seg_cmr___2)="Aneurysm Segments (choice=basal anteroseptal)"
label(cmrdata$aneurysm_seg_cmr___3)="Aneurysm Segments (choice=basal inferoseptal)"
label(cmrdata$aneurysm_seg_cmr___4)="Aneurysm Segments (choice=basal inferior)"
label(cmrdata$aneurysm_seg_cmr___5)="Aneurysm Segments (choice=basal inferolateral)"
label(cmrdata$aneurysm_seg_cmr___6)="Aneurysm Segments (choice=basal anterolateral)"
label(cmrdata$aneurysm_seg_cmr___7)="Aneurysm Segments (choice=mid anterior)"
label(cmrdata$aneurysm_seg_cmr___8)="Aneurysm Segments (choice=mid anteroseptal)"
label(cmrdata$aneurysm_seg_cmr___9)="Aneurysm Segments (choice=mid inferoseptal)"
label(cmrdata$aneurysm_seg_cmr___10)="Aneurysm Segments (choice=mid inferior)"
label(cmrdata$aneurysm_seg_cmr___11)="Aneurysm Segments (choice=mid inferolateral)"
label(cmrdata$aneurysm_seg_cmr___12)="Aneurysm Segments (choice=mid anterolateral)"
label(cmrdata$aneurysm_seg_cmr___13)="Aneurysm Segments (choice=apical anterior)"
label(cmrdata$aneurysm_seg_cmr___14)="Aneurysm Segments (choice=apical septal)"
label(cmrdata$aneurysm_seg_cmr___15)="Aneurysm Segments (choice=apical inferior)"
label(cmrdata$aneurysm_seg_cmr___16)="Aneurysm Segments (choice=apical lateral)"
label(cmrdata$aneurysm_seg_cmr___17)="Aneurysm Segments (choice=apex)"
label(cmrdata$wmsi_cmr)="WMSi"
label(cmrdata$thrombus_cmr)="LV thrombus "
label(cmrdata$thrombus_dim_cmr)="Thrombus max dimensions"
label(cmrdata$thrombus_text_cmr)="Thrombus free text"
label(cmrdata$aneurysm_rv_cmr)="RV Aneurysm/Microaneurysms"
label(cmrdata$rvwma_cmr)="RV regional wall motion abnormalities "
label(cmrdata$rvwma1___2)="1 basal anterior free wall (choice=hypokinetic)"
label(cmrdata$rvwma1___3)="1 basal anterior free wall (choice=akinetic)"
label(cmrdata$rvwma1___4)="1 basal anterior free wall (choice=dyskinetic)"
label(cmrdata$rvwma2___2)="2 basal lateral free wall (choice=hypokinetic)"
label(cmrdata$rvwma2___3)="2 basal lateral free wall (choice=akinetic)"
label(cmrdata$rvwma2___4)="2 basal lateral free wall (choice=dyskinetic)"
label(cmrdata$rvwma3___2)="3 basal inferior wall (choice=hypokinetic)"
label(cmrdata$rvwma3___3)="3 basal inferior wall (choice=akinetic)"
label(cmrdata$rvwma3___4)="3 basal inferior wall (choice=dyskinetic)"
label(cmrdata$rvwma4___2)="4 mid anterior free wall (choice=hypokinetic)"
label(cmrdata$rvwma4___3)="4 mid anterior free wall (choice=akinetic)"
label(cmrdata$rvwma4___4)="4 mid anterior free wall (choice=dyskinetic)"
label(cmrdata$rvwma5___2)="5 mid lateral free wall (choice=hypokinetic)"
label(cmrdata$rvwma5___3)="5 mid lateral free wall (choice=akinetic)"
label(cmrdata$rvwma5___4)="5 mid lateral free wall (choice=dyskinetic)"
label(cmrdata$rvwma6___2)="6 mid inferior wall (choice=hypokinetic)"
label(cmrdata$rvwma6___3)="6 mid inferior wall (choice=akinetic)"
label(cmrdata$rvwma6___4)="6 mid inferior wall (choice=dyskinetic)"
label(cmrdata$rvwma7___2)="7 apex (choice=hypokinetic)"
label(cmrdata$rvwma7___3)="7 apex (choice=akinetic)"
label(cmrdata$rvwma7___4)="7 apex (choice=dyskinetic)"
label(cmrdata$rvwma8___2)="8 RVOT (choice=hypokinetic)"
label(cmrdata$rvwma8___3)="8 RVOT (choice=akinetic)"
label(cmrdata$rvwma8___4)="8 RVOT (choice=dyskinetic)"
label(cmrdata$fatinf_cmr)="LV Fat infiltration presence "
label(cmrdata$fat_visualized_in___1)="Fat visualized in: (choice=HASTE)"
label(cmrdata$fat_visualized_in___2)="Fat visualized in: (choice=Cine)"
label(cmrdata$fat_visualized_in___3)="Fat visualized in: (choice=LGE)"
label(cmrdata$fat_visualized_in___4)="Fat visualized in: (choice=Fatsat)"
label(cmrdata$fat1___1)=" basal anterior (choice=Sub-endo)"
label(cmrdata$fat1___2)=" basal anterior (choice=Mid-wall)"
label(cmrdata$fat1___3)=" basal anterior (choice=Sub-epi)"
label(cmrdata$fat1___4)=" basal anterior (choice=Transmural)"
label(cmrdata$fat1___5)=" basal anterior (choice=Mild enhancent)"
label(cmrdata$fat2___1)=" basal anteroseptal (choice=Sub-endo)"
label(cmrdata$fat2___2)=" basal anteroseptal (choice=Mid-wall)"
label(cmrdata$fat2___3)=" basal anteroseptal (choice=Sub-epi)"
label(cmrdata$fat2___4)=" basal anteroseptal (choice=Transmural)"
label(cmrdata$fat2___5)=" basal anteroseptal (choice=Mild enhancent)"
label(cmrdata$fat3___1)=" basal inferoseptal (choice=Sub-endo)"
label(cmrdata$fat3___2)=" basal inferoseptal (choice=Mid-wall)"
label(cmrdata$fat3___3)=" basal inferoseptal (choice=Sub-epi)"
label(cmrdata$fat3___4)=" basal inferoseptal (choice=Transmural)"
label(cmrdata$fat3___5)=" basal inferoseptal (choice=Mild enhancent)"
label(cmrdata$fat4___1)=" basal inferior (choice=Sub-endo)"
label(cmrdata$fat4___2)=" basal inferior (choice=Mid-wall)"
label(cmrdata$fat4___3)=" basal inferior (choice=Sub-epi)"
label(cmrdata$fat4___4)=" basal inferior (choice=Transmural)"
label(cmrdata$fat4___5)=" basal inferior (choice=Mild enhancent)"
label(cmrdata$fat5___1)=" basal inferolateral (choice=Sub-endo)"
label(cmrdata$fat5___2)=" basal inferolateral (choice=Mid-wall)"
label(cmrdata$fat5___3)=" basal inferolateral (choice=Sub-epi)"
label(cmrdata$fat5___4)=" basal inferolateral (choice=Transmural)"
label(cmrdata$fat5___5)=" basal inferolateral (choice=Mild enhancent)"
label(cmrdata$fat6___1)=" basal anterolateral (choice=Sub-endo)"
label(cmrdata$fat6___2)=" basal anterolateral (choice=Mid-wall)"
label(cmrdata$fat6___3)=" basal anterolateral (choice=Sub-epi)"
label(cmrdata$fat6___4)=" basal anterolateral (choice=Transmural)"
label(cmrdata$fat6___5)=" basal anterolateral (choice=Mild enhancent)"
label(cmrdata$fat7___1)=" mid anterior (choice=Sub-endo)"
label(cmrdata$fat7___2)=" mid anterior (choice=Mid-wall)"
label(cmrdata$fat7___3)=" mid anterior (choice=Sub-epi)"
label(cmrdata$fat7___4)=" mid anterior (choice=Transmural)"
label(cmrdata$fat7___5)=" mid anterior (choice=Mild enhancent)"
label(cmrdata$fat8___1)=" mid anteroseptal (choice=Sub-endo)"
label(cmrdata$fat8___2)=" mid anteroseptal (choice=Mid-wall)"
label(cmrdata$fat8___3)=" mid anteroseptal (choice=Sub-epi)"
label(cmrdata$fat8___4)=" mid anteroseptal (choice=Transmural)"
label(cmrdata$fat8___5)=" mid anteroseptal (choice=Mild enhancent)"
label(cmrdata$fat9___1)=" mid inferoseptal (choice=Sub-endo)"
label(cmrdata$fat9___2)=" mid inferoseptal (choice=Mid-wall)"
label(cmrdata$fat9___3)=" mid inferoseptal (choice=Sub-epi)"
label(cmrdata$fat9___4)=" mid inferoseptal (choice=Transmural)"
label(cmrdata$fat9___5)=" mid inferoseptal (choice=Mild enhancent)"
label(cmrdata$fat10___1)=" mid inferior (choice=Sub-endo)"
label(cmrdata$fat10___2)=" mid inferior (choice=Mid-wall)"
label(cmrdata$fat10___3)=" mid inferior (choice=Sub-epi)"
label(cmrdata$fat10___4)=" mid inferior (choice=Transmural)"
label(cmrdata$fat10___5)=" mid inferior (choice=Mild enhancent)"
label(cmrdata$fat11___1)=" mid inferolateral (choice=Sub-endo)"
label(cmrdata$fat11___2)=" mid inferolateral (choice=Mid-wall)"
label(cmrdata$fat11___3)=" mid inferolateral (choice=Sub-epi)"
label(cmrdata$fat11___4)=" mid inferolateral (choice=Transmural)"
label(cmrdata$fat11___5)=" mid inferolateral (choice=Mild enhancent)"
label(cmrdata$fat12___1)=" mid anterolateral (choice=Sub-endo)"
label(cmrdata$fat12___2)=" mid anterolateral (choice=Mid-wall)"
label(cmrdata$fat12___3)=" mid anterolateral (choice=Sub-epi)"
label(cmrdata$fat12___4)=" mid anterolateral (choice=Transmural)"
label(cmrdata$fat12___5)=" mid anterolateral (choice=Mild enhancent)"
label(cmrdata$fat13___1)=" apical anterior (choice=Sub-endo)"
label(cmrdata$fat13___2)=" apical anterior (choice=Mid-wall)"
label(cmrdata$fat13___3)=" apical anterior (choice=Sub-epi)"
label(cmrdata$fat13___4)=" apical anterior (choice=Transmural)"
label(cmrdata$fat13___5)=" apical anterior (choice=Mild enhancent)"
label(cmrdata$fat14___1)=" apical septal (choice=Sub-endo)"
label(cmrdata$fat14___2)=" apical septal (choice=Mid-wall)"
label(cmrdata$fat14___3)=" apical septal (choice=Sub-epi)"
label(cmrdata$fat14___4)=" apical septal (choice=Transmural)"
label(cmrdata$fat14___5)=" apical septal (choice=Mild enhancent)"
label(cmrdata$fat15___1)=" apical inferior (choice=Sub-endo)"
label(cmrdata$fat15___2)=" apical inferior (choice=Mid-wall)"
label(cmrdata$fat15___3)=" apical inferior (choice=Sub-epi)"
label(cmrdata$fat15___4)=" apical inferior (choice=Transmural)"
label(cmrdata$fat15___5)=" apical inferior (choice=Mild enhancent)"
label(cmrdata$fat16___1)=" apical lateral (choice=Sub-endo)"
label(cmrdata$fat16___2)=" apical lateral (choice=Mid-wall)"
label(cmrdata$fat16___3)=" apical lateral (choice=Sub-epi)"
label(cmrdata$fat16___4)=" apical lateral (choice=Transmural)"
label(cmrdata$fat16___5)=" apical lateral (choice=Mild enhancent)"
label(cmrdata$fat17___1)=" apex (choice=Sub-endo)"
label(cmrdata$fat17___2)=" apex (choice=Mid-wall)"
label(cmrdata$fat17___3)=" apex (choice=Sub-epi)"
label(cmrdata$fat17___4)=" apex (choice=Transmural)"
label(cmrdata$fat17___5)=" apex (choice=Mild enhancent)"
label(cmrdata$rvfat_cmr)="RV fat"
label(cmrdata$rvfat_location_cmr___1)="RV fat Location (choice=basal anterior)"
label(cmrdata$rvfat_location_cmr___2)="RV fat Location (choice=basal lateral)"
label(cmrdata$rvfat_location_cmr___3)="RV fat Location (choice=basal inferior)"
label(cmrdata$rvfat_location_cmr___4)="RV fat Location (choice=mid anterior)"
label(cmrdata$rvfat_location_cmr___5)="RV fat Location (choice=mid lateral)"
label(cmrdata$rvfat_location_cmr___6)="RV fat Location (choice=mid inferior)"
label(cmrdata$rvfat_location_cmr___7)="RV fat Location (choice=apical)"
label(cmrdata$rvfat_location_cmr___8)="RV fat Location (choice=RVOT)"
label(cmrdata$lge_cmr)="LGE presence "
label(cmrdata$lge_cmr_slices)="LGE presence (n. of slices)"
label(cmrdata$ring_lge_cmr)="Ring-like LGE presence "
label(cmrdata$ring_lge_cmr_segments)="Ring-like LGE presence (n. of segments)"
label(cmrdata$ring_lge_cmr_slices)="Ring-like LGE presence (n. of slices)"
label(cmrdata$lge1___1)=" basal anterior (choice=Sub-endo)"
label(cmrdata$lge1___2)=" basal anterior (choice=Mid-wall)"
label(cmrdata$lge1___3)=" basal anterior (choice=Sub-epi)"
label(cmrdata$lge1___4)=" basal anterior (choice=Transmural)"
label(cmrdata$lge1___5)=" basal anterior (choice=Mild enhancent)"
label(cmrdata$lge2___1)=" basal anteroseptal (choice=Sub-endo)"
label(cmrdata$lge2___2)=" basal anteroseptal (choice=Mid-wall)"
label(cmrdata$lge2___3)=" basal anteroseptal (choice=Sub-epi)"
label(cmrdata$lge2___4)=" basal anteroseptal (choice=Transmural)"
label(cmrdata$lge2___5)=" basal anteroseptal (choice=Mild enhancent)"
label(cmrdata$lge3___1)=" basal inferoseptal (choice=Sub-endo)"
label(cmrdata$lge3___2)=" basal inferoseptal (choice=Mid-wall)"
label(cmrdata$lge3___3)=" basal inferoseptal (choice=Sub-epi)"
label(cmrdata$lge3___4)=" basal inferoseptal (choice=Transmural)"
label(cmrdata$lge3___5)=" basal inferoseptal (choice=Mild enhancent)"
label(cmrdata$lge4___1)=" basal inferior (choice=Sub-endo)"
label(cmrdata$lge4___2)=" basal inferior (choice=Mid-wall)"
label(cmrdata$lge4___3)=" basal inferior (choice=Sub-epi)"
label(cmrdata$lge4___4)=" basal inferior (choice=Transmural)"
label(cmrdata$lge4___5)=" basal inferior (choice=Mild enhancent)"
label(cmrdata$lge5___1)=" basal inferolateral (choice=Sub-endo)"
label(cmrdata$lge5___2)=" basal inferolateral (choice=Mid-wall)"
label(cmrdata$lge5___3)=" basal inferolateral (choice=Sub-epi)"
label(cmrdata$lge5___4)=" basal inferolateral (choice=Transmural)"
label(cmrdata$lge5___5)=" basal inferolateral (choice=Mild enhancent)"
label(cmrdata$lge6___1)=" basal anterolateral (choice=Sub-endo)"
label(cmrdata$lge6___2)=" basal anterolateral (choice=Mid-wall)"
label(cmrdata$lge6___3)=" basal anterolateral (choice=Sub-epi)"
label(cmrdata$lge6___4)=" basal anterolateral (choice=Transmural)"
label(cmrdata$lge6___5)=" basal anterolateral (choice=Mild enhancent)"
label(cmrdata$lge7___1)=" mid anterior (choice=Sub-endo)"
label(cmrdata$lge7___2)=" mid anterior (choice=Mid-wall)"
label(cmrdata$lge7___3)=" mid anterior (choice=Sub-epi)"
label(cmrdata$lge7___4)=" mid anterior (choice=Transmural)"
label(cmrdata$lge7___5)=" mid anterior (choice=Mild enhancent)"
label(cmrdata$lge8___1)=" mid anteroseptal (choice=Sub-endo)"
label(cmrdata$lge8___2)=" mid anteroseptal (choice=Mid-wall)"
label(cmrdata$lge8___3)=" mid anteroseptal (choice=Sub-epi)"
label(cmrdata$lge8___4)=" mid anteroseptal (choice=Transmural)"
label(cmrdata$lge8___5)=" mid anteroseptal (choice=Mild enhancent)"
label(cmrdata$lge9___1)=" mid inferoseptal (choice=Sub-endo)"
label(cmrdata$lge9___2)=" mid inferoseptal (choice=Mid-wall)"
label(cmrdata$lge9___3)=" mid inferoseptal (choice=Sub-epi)"
label(cmrdata$lge9___4)=" mid inferoseptal (choice=Transmural)"
label(cmrdata$lge9___5)=" mid inferoseptal (choice=Mild enhancent)"
label(cmrdata$lge10___1)=" mid inferior (choice=Sub-endo)"
label(cmrdata$lge10___2)=" mid inferior (choice=Mid-wall)"
label(cmrdata$lge10___3)=" mid inferior (choice=Sub-epi)"
label(cmrdata$lge10___4)=" mid inferior (choice=Transmural)"
label(cmrdata$lge10___5)=" mid inferior (choice=Mild enhancent)"
label(cmrdata$lge11___1)=" mid inferolateral (choice=Sub-endo)"
label(cmrdata$lge11___2)=" mid inferolateral (choice=Mid-wall)"
label(cmrdata$lge11___3)=" mid inferolateral (choice=Sub-epi)"
label(cmrdata$lge11___4)=" mid inferolateral (choice=Transmural)"
label(cmrdata$lge11___5)=" mid inferolateral (choice=Mild enhancent)"
label(cmrdata$lge12___1)=" mid anterolateral (choice=Sub-endo)"
label(cmrdata$lge12___2)=" mid anterolateral (choice=Mid-wall)"
label(cmrdata$lge12___3)=" mid anterolateral (choice=Sub-epi)"
label(cmrdata$lge12___4)=" mid anterolateral (choice=Transmural)"
label(cmrdata$lge12___5)=" mid anterolateral (choice=Mild enhancent)"
label(cmrdata$lge13___1)=" apical anterior (choice=Sub-endo)"
label(cmrdata$lge13___2)=" apical anterior (choice=Mid-wall)"
label(cmrdata$lge13___3)=" apical anterior (choice=Sub-epi)"
label(cmrdata$lge13___4)=" apical anterior (choice=Transmural)"
label(cmrdata$lge13___5)=" apical anterior (choice=Mild enhancent)"
label(cmrdata$lge14___1)=" apical septal (choice=Sub-endo)"
label(cmrdata$lge14___2)=" apical septal (choice=Mid-wall)"
label(cmrdata$lge14___3)=" apical septal (choice=Sub-epi)"
label(cmrdata$lge14___4)=" apical septal (choice=Transmural)"
label(cmrdata$lge14___5)=" apical septal (choice=Mild enhancent)"
label(cmrdata$lge15___1)=" apical inferior (choice=Sub-endo)"
label(cmrdata$lge15___2)=" apical inferior (choice=Mid-wall)"
label(cmrdata$lge15___3)=" apical inferior (choice=Sub-epi)"
label(cmrdata$lge15___4)=" apical inferior (choice=Transmural)"
label(cmrdata$lge15___5)=" apical inferior (choice=Mild enhancent)"
label(cmrdata$lge16___1)=" apical lateral (choice=Sub-endo)"
label(cmrdata$lge16___2)=" apical lateral (choice=Mid-wall)"
label(cmrdata$lge16___3)=" apical lateral (choice=Sub-epi)"
label(cmrdata$lge16___4)=" apical lateral (choice=Transmural)"
label(cmrdata$lge16___5)=" apical lateral (choice=Mild enhancent)"
label(cmrdata$lge17___1)=" apex (choice=Sub-endo)"
label(cmrdata$lge17___2)=" apex (choice=Mid-wall)"
label(cmrdata$lge17___3)=" apex (choice=Sub-epi)"
label(cmrdata$lge17___4)=" apex (choice=Transmural)"
label(cmrdata$lge17___5)=" apex (choice=Mild enhancent)"
label(cmrdata$lge_mass_cmr)="LGE (g) "
label(cmrdata$lge_mass_per_cmr)="LGE mass (%)"
label(cmrdata$rvlge_cmr)="RV LGE"
label(cmrdata$rvlge_location_cmr___1)="RV LGE Location (choice=basal anterior)"
label(cmrdata$rvlge_location_cmr___2)="RV LGE Location (choice=basal lateral)"
label(cmrdata$rvlge_location_cmr___3)="RV LGE Location (choice=basal inferior)"
label(cmrdata$rvlge_location_cmr___4)="RV LGE Location (choice=mid anterior)"
label(cmrdata$rvlge_location_cmr___5)="RV LGE Location (choice=mid lateral)"
label(cmrdata$rvlge_location_cmr___6)="RV LGE Location (choice=mid inferior)"
label(cmrdata$rvlge_location_cmr___7)="RV LGE Location (choice=apical)"
label(cmrdata$rvlge_location_cmr___8)="RV LGE Location (choice=RVOT)"
label(cmrdata$t1_executed_cmr)="Was T1 mapping in protocol?"
label(cmrdata$t1_slices_cmr)="T1 Slices acquired"
label(cmrdata$t1_mapping_elevated_cmr)="Presence of elevated T1 mapping foci"
label(cmrdata$t1_mapping_maxvalue_cmr)="Max value ROI at T1 mapping "
label(cmrdata$high_t1_location_cmr___1)="Segments with high native T1 (choice=basal anterior)"
label(cmrdata$high_t1_location_cmr___2)="Segments with high native T1 (choice=basal anteroseptal)"
label(cmrdata$high_t1_location_cmr___3)="Segments with high native T1 (choice=basal inferoseptal)"
label(cmrdata$high_t1_location_cmr___4)="Segments with high native T1 (choice=basal inferior)"
label(cmrdata$high_t1_location_cmr___5)="Segments with high native T1 (choice=basal inferolateral)"
label(cmrdata$high_t1_location_cmr___6)="Segments with high native T1 (choice=basal anterolateral)"
label(cmrdata$high_t1_location_cmr___7)="Segments with high native T1 (choice=mid anterior)"
label(cmrdata$high_t1_location_cmr___8)="Segments with high native T1 (choice=mid anteroseptal)"
label(cmrdata$high_t1_location_cmr___9)="Segments with high native T1 (choice=mid inferoseptal)"
label(cmrdata$high_t1_location_cmr___10)="Segments with high native T1 (choice=mid inferior)"
label(cmrdata$high_t1_location_cmr___11)="Segments with high native T1 (choice=mid inferolateral)"
label(cmrdata$high_t1_location_cmr___12)="Segments with high native T1 (choice=mid anterolateral)"
label(cmrdata$high_t1_location_cmr___13)="Segments with high native T1 (choice=apical anterior)"
label(cmrdata$high_t1_location_cmr___14)="Segments with high native T1 (choice=apical septal)"
label(cmrdata$high_t1_location_cmr___15)="Segments with high native T1 (choice=apical inferior)"
label(cmrdata$high_t1_location_cmr___16)="Segments with high native T1 (choice=apical lateral)"
label(cmrdata$high_t1_location_cmr___17)="Segments with high native T1 (choice=apex)"
label(cmrdata$oedema_executed_cmr)="Was T2 imaging in protocol?"
label(cmrdata$oedema_slices_cmr)="T2 Slices acquired"
label(cmrdata$stir_oedema_ratio_cmr)="STIR T2 Oedema LL Ratio > 2"
label(cmrdata$high_stir_location_cmr___1)="Segments with elevated STIR signal (choice=basal anterior)"
label(cmrdata$high_stir_location_cmr___2)="Segments with elevated STIR signal (choice=basal anteroseptal)"
label(cmrdata$high_stir_location_cmr___3)="Segments with elevated STIR signal (choice=basal inferoseptal)"
label(cmrdata$high_stir_location_cmr___4)="Segments with elevated STIR signal (choice=basal inferior)"
label(cmrdata$high_stir_location_cmr___5)="Segments with elevated STIR signal (choice=basal inferolateral)"
label(cmrdata$high_stir_location_cmr___6)="Segments with elevated STIR signal (choice=basal anterolateral)"
label(cmrdata$high_stir_location_cmr___7)="Segments with elevated STIR signal (choice=mid anterior)"
label(cmrdata$high_stir_location_cmr___8)="Segments with elevated STIR signal (choice=mid anteroseptal)"
label(cmrdata$high_stir_location_cmr___9)="Segments with elevated STIR signal (choice=mid inferoseptal)"
label(cmrdata$high_stir_location_cmr___10)="Segments with elevated STIR signal (choice=mid inferior)"
label(cmrdata$high_stir_location_cmr___11)="Segments with elevated STIR signal (choice=mid inferolateral)"
label(cmrdata$high_stir_location_cmr___12)="Segments with elevated STIR signal (choice=mid anterolateral)"
label(cmrdata$high_stir_location_cmr___13)="Segments with elevated STIR signal (choice=apical anterior)"
label(cmrdata$high_stir_location_cmr___14)="Segments with elevated STIR signal (choice=apical septal)"
label(cmrdata$high_stir_location_cmr___15)="Segments with elevated STIR signal (choice=apical inferior)"
label(cmrdata$high_stir_location_cmr___16)="Segments with elevated STIR signal (choice=apical lateral)"
label(cmrdata$high_stir_location_cmr___17)="Segments with elevated STIR signal (choice=apex)"
label(cmrdata$t2_mapping_elevated_cmr)="Presence of elevated T2 mapping foci"
label(cmrdata$t2_mapping_maxvalue_cmr)="Max value ROI at T2 mapping "
label(cmrdata$high_t2_location_cmr___1)="Segments with high T2 mapping (choice=basal anterior)"
label(cmrdata$high_t2_location_cmr___2)="Segments with high T2 mapping (choice=basal anteroseptal)"
label(cmrdata$high_t2_location_cmr___3)="Segments with high T2 mapping (choice=basal inferoseptal)"
label(cmrdata$high_t2_location_cmr___4)="Segments with high T2 mapping (choice=basal inferior)"
label(cmrdata$high_t2_location_cmr___5)="Segments with high T2 mapping (choice=basal inferolateral)"
label(cmrdata$high_t2_location_cmr___6)="Segments with high T2 mapping (choice=basal anterolateral)"
label(cmrdata$high_t2_location_cmr___7)="Segments with high T2 mapping (choice=mid anterior)"
label(cmrdata$high_t2_location_cmr___8)="Segments with high T2 mapping (choice=mid anteroseptal)"
label(cmrdata$high_t2_location_cmr___9)="Segments with high T2 mapping (choice=mid inferoseptal)"
label(cmrdata$high_t2_location_cmr___10)="Segments with high T2 mapping (choice=mid inferior)"
label(cmrdata$high_t2_location_cmr___11)="Segments with high T2 mapping (choice=mid inferolateral)"
label(cmrdata$high_t2_location_cmr___12)="Segments with high T2 mapping (choice=mid anterolateral)"
label(cmrdata$high_t2_location_cmr___13)="Segments with high T2 mapping (choice=apical anterior)"
label(cmrdata$high_t2_location_cmr___14)="Segments with high T2 mapping (choice=apical septal)"
label(cmrdata$high_t2_location_cmr___15)="Segments with high T2 mapping (choice=apical inferior)"
label(cmrdata$high_t2_location_cmr___16)="Segments with high T2 mapping (choice=apical lateral)"
label(cmrdata$high_t2_location_cmr___17)="Segments with high T2 mapping (choice=apex)"
label(cmrdata$vers_peri_cmr)="pericardial effusion "
label(cmrdata$comments_cmr)="comments       "
label(cmrdata$hr_cmr)="Heart Rate"
label(cmrdata$lvedv_cmr)="LVEDV (ml)"
label(cmrdata$lvesv_cmr)="LVESV (ml)"
label(cmrdata$lvsv_cmr)="LVSV (ml)        "
label(cmrdata$lvef_cmr)="LVEF (%)      "
label(cmrdata$lvco_cmr)="LVCO (l/min)"
label(cmrdata$lvci_cmr)="LVCI (l/min/m2)"
label(cmrdata$lv_mass_cmr)="LV mass (g)"
label(cmrdata$lvedvi_cmr)="LVEDVi (ml/m2)          "
label(cmrdata$lvesvi_cmr)="LVESVi (ml/m2)          "
label(cmrdata$lvsvi_cmr)="LVSVi (ml/m2)"
label(cmrdata$lvmi_cmr)="LV mass index (g/m2)        "
label(cmrdata$rvedv_cmr)="RVEDV (ml)"
label(cmrdata$rvesv_cmr)="RVESV (ml)"
label(cmrdata$rvsv_cmr)="RVSV (ml)        "
label(cmrdata$rvef_cmr)="RVEF (%)      "
label(cmrdata$rvco_cmr)="RVCO (l/min)"
label(cmrdata$rvci_cmr)="RVCI (l/min/m2)"
label(cmrdata$rvedvi_cmr)="RVEDVi (ml/m2)          "
label(cmrdata$rvesvi_cmr)="RVESVi (ml/m2)          "
label(cmrdata$rvsvi_cmr)="RVSVi (ml/m2)"
label(cmrdata$mapseinf_cmr)="MAPSE Inferior"
label(cmrdata$mapseant_cmr)="MAPSE Anterior"
label(cmrdata$mapselat_cmr)="MAPSE Lateral"
label(cmrdata$mapsesep_cmr)="MAPSE Septal"
label(cmrdata$tapse_cmr)="TAPSE"
label(cmrdata$min_la_vol_cmr)="Min LA Volume"
label(cmrdata$max_la_vol_cmr)="Max LA Volume"
label(cmrdata$min_la_vol_index_cmr)="Min LA Vol/BSA"
label(cmrdata$max_la_vol_index_cmr)="Max LA Vol/BSA"
label(cmrdata$la_ef_cmr)="LA EF (%)"
label(cmrdata$cmr_complete)="Complete?"
label(cmrdata$global_peak_strain_radial)="Global Peak Strain Radial"
label(cmrdata$peak_strain_radial_1)="Peak Strain Radial 1"
label(cmrdata$peak_strain_radial_2)="Peak Strain Radial 2"
label(cmrdata$peak_strain_radial_3)="Peak Strain Radial 3"
label(cmrdata$peak_strain_radial_4)="Peak Strain Radial 4"
label(cmrdata$peak_strain_radial_5)="Peak Strain Radial 5"
label(cmrdata$peak_strain_radial_6)="Peak Strain Radial 6"
label(cmrdata$peak_strain_radial_7)="Peak Strain Radial 7"
label(cmrdata$peak_strain_radial_8)="Peak Strain Radial 8"
label(cmrdata$peak_strain_radial_9)="Peak Strain Radial 9"
label(cmrdata$peak_strain_radial_10)="Peak Strain Radial 10"
label(cmrdata$peak_strain_radial_11)="Peak Strain Radial 11"
label(cmrdata$peak_strain_radial_12)="Peak Strain Radial 12"
label(cmrdata$peak_strain_radial_13)="Peak Strain Radial 13"
label(cmrdata$peak_strain_radial_14)="Peak Strain Radial 14"
label(cmrdata$peak_strain_radial_15)="Peak Strain Radial 15"
label(cmrdata$peak_strain_radial_16)="Peak Strain Radial 16"
label(cmrdata$global_peak_strain_circumferential)="Global Peak Strain Circumferential"
label(cmrdata$peak_strain_circumferential_1)="Peak Strain Circumferential 1"
label(cmrdata$peak_strain_circumferential_2)="Peak Strain Circumferential 2"
label(cmrdata$peak_strain_circumferential_3)="Peak Strain Circumferential 3"
label(cmrdata$peak_strain_circumferential_4)="Peak Strain Circumferential 4"
label(cmrdata$peak_strain_circumferential_5)="Peak Strain Circumferential 5"
label(cmrdata$peak_strain_circumferential_6)="Peak Strain Circumferential 6"
label(cmrdata$peak_strain_circumferential_7)="Peak Strain Circumferential 7"
label(cmrdata$peak_strain_circumferential_8)="Peak Strain Circumferential 8"
label(cmrdata$peak_strain_circumferential_9)="Peak Strain Circumferential 9"
label(cmrdata$peak_strain_circumferential_10)="Peak Strain Circumferential 10"
label(cmrdata$peak_strain_circumferential_11)="Peak Strain Circumferential 11"
label(cmrdata$peak_strain_circumferential_12)="Peak Strain Circumferential 12"
label(cmrdata$peak_strain_circumferential_13)="Peak Strain Circumferential 13"
label(cmrdata$peak_strain_circumferential_14)="Peak Strain Circumferential 14"
label(cmrdata$peak_strain_circumferential_15)="Peak Strain Circumferential 15"
label(cmrdata$peak_strain_circumferential_16)="Peak Strain Circumferential 16"
label(cmrdata$global_peak_strain_longitudinal)="Global Peak Strain Longitudinal"
label(cmrdata$peak_strain_longitudinal_1)="Peak Strain Longitudinal 1"
label(cmrdata$peak_strain_longitudinal_2)="Peak Strain Longitudinal 2"
label(cmrdata$peak_strain_longitudinal_3)="Peak Strain Longitudinal 3"
label(cmrdata$peak_strain_longitudinal_4)="Peak Strain Longitudinal 4"
label(cmrdata$peak_strain_longitudinal_5)="Peak Strain Longitudinal 5"
label(cmrdata$peak_strain_longitudinal_6)="Peak Strain Longitudinal 6"
label(cmrdata$peak_strain_longitudinal_7)="Peak Strain Longitudinal 7"
label(cmrdata$peak_strain_longitudinal_8)="Peak Strain Longitudinal 8"
label(cmrdata$peak_strain_longitudinal_9)="Peak Strain Longitudinal 9"
label(cmrdata$peak_strain_longitudinal_10)="Peak Strain Longitudinal 10"
label(cmrdata$peak_strain_longitudinal_11)="Peak Strain Longitudinal 11"
label(cmrdata$peak_strain_longitudinal_12)="Peak Strain Longitudinal 12"
label(cmrdata$peak_strain_longitudinal_13)="Peak Strain Longitudinal 13"
label(cmrdata$peak_strain_longitudinal_14)="Peak Strain Longitudinal 14"
label(cmrdata$peak_strain_longitudinal_15)="Peak Strain Longitudinal 15"
label(cmrdata$peak_strain_longitudinal_16)="Peak Strain Longitudinal 16"
label(cmrdata$global_time_to_peak_radial)="Global Time To Peak Radial"
label(cmrdata$time_to_peak_radial_1)="Time To Peak Radial 1"
label(cmrdata$time_to_peak_radial_2)="Time To Peak Radial 2"
label(cmrdata$time_to_peak_radial_3)="Time To Peak Radial 3"
label(cmrdata$time_to_peak_radial_4)="Time To Peak Radial 4"
label(cmrdata$time_to_peak_radial_5)="Time To Peak Radial 5"
label(cmrdata$time_to_peak_radial_6)="Time To Peak Radial 6"
label(cmrdata$time_to_peak_radial_7)="Time To Peak Radial 7"
label(cmrdata$time_to_peak_radial_8)="Time To Peak Radial 8"
label(cmrdata$time_to_peak_radial_9)="Time To Peak Radial 9"
label(cmrdata$time_to_peak_radial_10)="Time To Peak Radial 10"
label(cmrdata$time_to_peak_radial_11)="Time To Peak Radial 11"
label(cmrdata$time_to_peak_radial_12)="Time To Peak Radial 12"
label(cmrdata$time_to_peak_radial_13)="Time To Peak Radial 13"
label(cmrdata$time_to_peak_radial_14)="Time To Peak Radial 14"
label(cmrdata$time_to_peak_radial_15)="Time To Peak Radial 15"
label(cmrdata$time_to_peak_radial_16)="Time To Peak Radial 16"
label(cmrdata$global_time_to_peak_circumferential)="Global Time To Peak Circumferential"
label(cmrdata$time_to_peak_circumferential_1)="Time To Peak Circumferential 1"
label(cmrdata$time_to_peak_circumferential_2)="Time To Peak Circumferential 2"
label(cmrdata$time_to_peak_circumferential_3)="Time To Peak Circumferential 3"
label(cmrdata$time_to_peak_circumferential_4)="Time To Peak Circumferential 4"
label(cmrdata$time_to_peak_circumferential_5)="Time To Peak Circumferential 5"
label(cmrdata$time_to_peak_circumferential_6)="Time To Peak Circumferential 6"
label(cmrdata$time_to_peak_circumferential_7)="Time To Peak Circumferential 7"
label(cmrdata$time_to_peak_circumferential_8)="Time To Peak Circumferential 8"
label(cmrdata$time_to_peak_circumferential_9)="Time To Peak Circumferential 9"
label(cmrdata$time_to_peak_circumferential_10)="Time To Peak Circumferential 10"
label(cmrdata$time_to_peak_circumferential_11)="Time To Peak Circumferential 11"
label(cmrdata$time_to_peak_circumferential_12)="Time To Peak Circumferential 12"
label(cmrdata$time_to_peak_circumferential_13)="Time To Peak Circumferential 13"
label(cmrdata$time_to_peak_circumferential_14)="Time To Peak Circumferential 14"
label(cmrdata$time_to_peak_circumferential_15)="Time To Peak Circumferential 15"
label(cmrdata$time_to_peak_circumferential_16)="Time To Peak Circumferential 16"
label(cmrdata$global_time_to_peak_longitudinal)="Global Time To Peak Longitudinal"
label(cmrdata$time_to_peak_longitudinal_1)="Time To Peak Longitudinal 1"
label(cmrdata$time_to_peak_longitudinal_2)="Time To Peak Longitudinal 2"
label(cmrdata$time_to_peak_longitudinal_3)="Time To Peak Longitudinal 3"
label(cmrdata$time_to_peak_longitudinal_4)="Time To Peak Longitudinal 4"
label(cmrdata$time_to_peak_longitudinal_5)="Time To Peak Longitudinal 5"
label(cmrdata$time_to_peak_longitudinal_6)="Time To Peak Longitudinal 6"
label(cmrdata$time_to_peak_longitudinal_7)="Time To Peak Longitudinal 7"
label(cmrdata$time_to_peak_longitudinal_8)="Time To Peak Longitudinal 8"
label(cmrdata$time_to_peak_longitudinal_9)="Time To Peak Longitudinal 9"
label(cmrdata$time_to_peak_longitudinal_10)="Time To Peak Longitudinal 10"
label(cmrdata$time_to_peak_longitudinal_11)="Time To Peak Longitudinal 11"
label(cmrdata$time_to_peak_longitudinal_12)="Time To Peak Longitudinal 12"
label(cmrdata$time_to_peak_longitudinal_13)="Time To Peak Longitudinal 13"
label(cmrdata$time_to_peak_longitudinal_14)="Time To Peak Longitudinal 14"
label(cmrdata$time_to_peak_longitudinal_15)="Time To Peak Longitudinal 15"
label(cmrdata$time_to_peak_longitudinal_16)="Time To Peak Longitudinal 16"
label(cmrdata$basal_time_to_peak_longitudinal)="Basal Time To Peak Longitudinal"
label(cmrdata$mid_time_to_peak_longitudinal)="Mid Time To Peak Longitudinal"
label(cmrdata$apical_time_to_peak_longitudinal)="Apical Time To Peak Longitudinal"
label(cmrdata$basal_peak_strain_longitudinal)="Basal Peak Strain Longitudinal"
label(cmrdata$mid_peak_strain_longitudinal)="Mid Peak Strain Longitudinal"
label(cmrdata$apical_peak_strain_longitudinal)="Apical Peak Strain Longitudinal"
label(cmrdata$global_peak_systolic_strain_rate_radial)="Global Peak Systolic Strain Rate Radial"
label(cmrdata$peak_systolic_strain_rate_radial_1)="Peak Systolic Strain Rate Radial 1"
label(cmrdata$peak_systolic_strain_rate_radial_2)="Peak Systolic Strain Rate Radial 2"
label(cmrdata$peak_systolic_strain_rate_radial_3)="Peak Systolic Strain Rate Radial 3"
label(cmrdata$peak_systolic_strain_rate_radial_4)="Peak Systolic Strain Rate Radial 4"
label(cmrdata$peak_systolic_strain_rate_radial_5)="Peak Systolic Strain Rate Radial 5"
label(cmrdata$peak_systolic_strain_rate_radial_6)="Peak Systolic Strain Rate Radial 6"
label(cmrdata$peak_systolic_strain_rate_radial_7)="Peak Systolic Strain Rate Radial 7"
label(cmrdata$peak_systolic_strain_rate_radial_8)="Peak Systolic Strain Rate Radial 8"
label(cmrdata$peak_systolic_strain_rate_radial_9)="Peak Systolic Strain Rate Radial 9"
label(cmrdata$peak_systolic_strain_rate_radial_10)="Peak Systolic Strain Rate Radial 10"
label(cmrdata$peak_systolic_strain_rate_radial_11)="Peak Systolic Strain Rate Radial 11"
label(cmrdata$peak_systolic_strain_rate_radial_12)="Peak Systolic Strain Rate Radial 12"
label(cmrdata$peak_systolic_strain_rate_radial_13)="Peak Systolic Strain Rate Radial 13"
label(cmrdata$peak_systolic_strain_rate_radial_14)="Peak Systolic Strain Rate Radial 14"
label(cmrdata$peak_systolic_strain_rate_radial_15)="Peak Systolic Strain Rate Radial 15"
label(cmrdata$peak_systolic_strain_rate_radial_16)="Peak Systolic Strain Rate Radial 16"
label(cmrdata$global_peak_systolic_strain_rate_circumferential)="Global Peak Systolic Strain Rate Circumferential"
label(cmrdata$peak_systolic_strain_rate_circumferential_1)="Peak Systolic Strain Rate Circumferential 1"
label(cmrdata$peak_systolic_strain_rate_circumferential_2)="Peak Systolic Strain Rate Circumferential 2"
label(cmrdata$peak_systolic_strain_rate_circumferential_3)="Peak Systolic Strain Rate Circumferential 3"
label(cmrdata$peak_systolic_strain_rate_circumferential_4)="Peak Systolic Strain Rate Circumferential 4"
label(cmrdata$peak_systolic_strain_rate_circumferential_5)="Peak Systolic Strain Rate Circumferential 5"
label(cmrdata$peak_systolic_strain_rate_circumferential_6)="Peak Systolic Strain Rate Circumferential 6"
label(cmrdata$peak_systolic_strain_rate_circumferential_7)="Peak Systolic Strain Rate Circumferential 7"
label(cmrdata$peak_systolic_strain_rate_circumferential_8)="Peak Systolic Strain Rate Circumferential 8"
label(cmrdata$peak_systolic_strain_rate_circumferential_9)="Peak Systolic Strain Rate Circumferential 9"
label(cmrdata$peak_systolic_strain_rate_circumferential_10)="Peak Systolic Strain Rate Circumferential 10"
label(cmrdata$peak_systolic_strain_rate_circumferential_11)="Peak Systolic Strain Rate Circumferential 11"
label(cmrdata$peak_systolic_strain_rate_circumferential_12)="Peak Systolic Strain Rate Circumferential 12"
label(cmrdata$peak_systolic_strain_rate_circumferential_13)="Peak Systolic Strain Rate Circumferential 13"
label(cmrdata$peak_systolic_strain_rate_circumferential_14)="Peak Systolic Strain Rate Circumferential 14"
label(cmrdata$peak_systolic_strain_rate_circumferential_15)="Peak Systolic Strain Rate Circumferential 15"
label(cmrdata$peak_systolic_strain_rate_circumferential_16)="Peak Systolic Strain Rate Circumferential 16"
label(cmrdata$global_peak_systolic_strain_rate_longitudinal)="Global Peak Systolic Strain Rate Longitudinal"
label(cmrdata$peak_systolic_strain_rate_longitudinal_1)="Peak Systolic Strain Rate Longitudinal 1"
label(cmrdata$peak_systolic_strain_rate_longitudinal_2)="Peak Systolic Strain Rate Longitudinal 2"
label(cmrdata$peak_systolic_strain_rate_longitudinal_3)="Peak Systolic Strain Rate Longitudinal 3"
label(cmrdata$peak_systolic_strain_rate_longitudinal_4)="Peak Systolic Strain Rate Longitudinal 4"
label(cmrdata$peak_systolic_strain_rate_longitudinal_5)="Peak Systolic Strain Rate Longitudinal 5"
label(cmrdata$peak_systolic_strain_rate_longitudinal_6)="Peak Systolic Strain Rate Longitudinal 6"
label(cmrdata$peak_systolic_strain_rate_longitudinal_7)="Peak Systolic Strain Rate Longitudinal 7"
label(cmrdata$peak_systolic_strain_rate_longitudinal_8)="Peak Systolic Strain Rate Longitudinal 8"
label(cmrdata$peak_systolic_strain_rate_longitudinal_9)="Peak Systolic Strain Rate Longitudinal 9"
label(cmrdata$peak_systolic_strain_rate_longitudinal_10)="Peak Systolic Strain Rate Longitudinal 10"
label(cmrdata$peak_systolic_strain_rate_longitudinal_11)="Peak Systolic Strain Rate Longitudinal 11"
label(cmrdata$peak_systolic_strain_rate_longitudinal_12)="Peak Systolic Strain Rate Longitudinal 12"
label(cmrdata$peak_systolic_strain_rate_longitudinal_13)="Peak Systolic Strain Rate Longitudinal 13"
label(cmrdata$peak_systolic_strain_rate_longitudinal_14)="Peak Systolic Strain Rate Longitudinal 14"
label(cmrdata$peak_systolic_strain_rate_longitudinal_15)="Peak Systolic Strain Rate Longitudinal 15"
label(cmrdata$peak_systolic_strain_rate_longitudinal_16)="Peak Systolic Strain Rate Longitudinal 16"
label(cmrdata$global_peak_systolic_velocity_radial)="Global Peak Systolic Velocity Radial"
label(cmrdata$peak_systolic_velocity_radial_1)="Peak Systolic Velocity Radial 1"
label(cmrdata$peak_systolic_velocity_radial_2)="Peak Systolic Velocity Radial 2"
label(cmrdata$peak_systolic_velocity_radial_3)="Peak Systolic Velocity Radial 3"
label(cmrdata$peak_systolic_velocity_radial_4)="Peak Systolic Velocity Radial 4"
label(cmrdata$peak_systolic_velocity_radial_5)="Peak Systolic Velocity Radial 5"
label(cmrdata$peak_systolic_velocity_radial_6)="Peak Systolic Velocity Radial 6"
label(cmrdata$peak_systolic_velocity_radial_7)="Peak Systolic Velocity Radial 7"
label(cmrdata$peak_systolic_velocity_radial_8)="Peak Systolic Velocity Radial 8"
label(cmrdata$peak_systolic_velocity_radial_9)="Peak Systolic Velocity Radial 9"
label(cmrdata$peak_systolic_velocity_radial_10)="Peak Systolic Velocity Radial 10"
label(cmrdata$peak_systolic_velocity_radial_11)="Peak Systolic Velocity Radial 11"
label(cmrdata$peak_systolic_velocity_radial_12)="Peak Systolic Velocity Radial 12"
label(cmrdata$peak_systolic_velocity_radial_13)="Peak Systolic Velocity Radial 13"
label(cmrdata$peak_systolic_velocity_radial_14)="Peak Systolic Velocity Radial 14"
label(cmrdata$peak_systolic_velocity_radial_15)="Peak Systolic Velocity Radial 15"
label(cmrdata$peak_systolic_velocity_radial_16)="Peak Systolic Velocity Radial 16"
label(cmrdata$global_peak_systolic_velocity_circumferential)="Global Peak Systolic Velocity Circumferential"
label(cmrdata$peak_systolic_velocity_circumferential_1)="Peak Systolic Velocity Circumferential 1"
label(cmrdata$peak_systolic_velocity_circumferential_2)="Peak Systolic Velocity Circumferential 2"
label(cmrdata$peak_systolic_velocity_circumferential_3)="Peak Systolic Velocity Circumferential 3"
label(cmrdata$peak_systolic_velocity_circumferential_4)="Peak Systolic Velocity Circumferential 4"
label(cmrdata$peak_systolic_velocity_circumferential_5)="Peak Systolic Velocity Circumferential 5"
label(cmrdata$peak_systolic_velocity_circumferential_6)="Peak Systolic Velocity Circumferential 6"
label(cmrdata$peak_systolic_velocity_circumferential_7)="Peak Systolic Velocity Circumferential 7"
label(cmrdata$peak_systolic_velocity_circumferential_8)="Peak Systolic Velocity Circumferential 8"
label(cmrdata$peak_systolic_velocity_circumferential_9)="Peak Systolic Velocity Circumferential 9"
label(cmrdata$peak_systolic_velocity_circumferential_10)="Peak Systolic Velocity Circumferential 10"
label(cmrdata$peak_systolic_velocity_circumferential_11)="Peak Systolic Velocity Circumferential 11"
label(cmrdata$peak_systolic_velocity_circumferential_12)="Peak Systolic Velocity Circumferential 12"
label(cmrdata$peak_systolic_velocity_circumferential_13)="Peak Systolic Velocity Circumferential 13"
label(cmrdata$peak_systolic_velocity_circumferential_14)="Peak Systolic Velocity Circumferential 14"
label(cmrdata$peak_systolic_velocity_circumferential_15)="Peak Systolic Velocity Circumferential 15"
label(cmrdata$peak_systolic_velocity_circumferential_16)="Peak Systolic Velocity Circumferential 16"
label(cmrdata$global_peak_systolic_velocity_longitudinal)="Global Peak Systolic Velocity Longitudinal"
label(cmrdata$peak_systolic_velocity_longitudinal_1)="Peak Systolic Velocity Longitudinal 1"
label(cmrdata$peak_systolic_velocity_longitudinal_2)="Peak Systolic Velocity Longitudinal 2"
label(cmrdata$peak_systolic_velocity_longitudinal_3)="Peak Systolic Velocity Longitudinal 3"
label(cmrdata$peak_systolic_velocity_longitudinal_4)="Peak Systolic Velocity Longitudinal 4"
label(cmrdata$peak_systolic_velocity_longitudinal_5)="Peak Systolic Velocity Longitudinal 5"
label(cmrdata$peak_systolic_velocity_longitudinal_6)="Peak Systolic Velocity Longitudinal 6"
label(cmrdata$peak_systolic_velocity_longitudinal_7)="Peak Systolic Velocity Longitudinal 7"
label(cmrdata$peak_systolic_velocity_longitudinal_8)="Peak Systolic Velocity Longitudinal 8"
label(cmrdata$peak_systolic_velocity_longitudinal_9)="Peak Systolic Velocity Longitudinal 9"
label(cmrdata$peak_systolic_velocity_longitudinal_10)="Peak Systolic Velocity Longitudinal 10"
label(cmrdata$peak_systolic_velocity_longitudinal_11)="Peak Systolic Velocity Longitudinal 11"
label(cmrdata$peak_systolic_velocity_longitudinal_12)="Peak Systolic Velocity Longitudinal 12"
label(cmrdata$peak_systolic_velocity_longitudinal_13)="Peak Systolic Velocity Longitudinal 13"
label(cmrdata$peak_systolic_velocity_longitudinal_14)="Peak Systolic Velocity Longitudinal 14"
label(cmrdata$peak_systolic_velocity_longitudinal_15)="Peak Systolic Velocity Longitudinal 15"
label(cmrdata$peak_systolic_velocity_longitudinal_16)="Peak Systolic Velocity Longitudinal 16"
label(cmrdata$cmr_strain_complete)="Complete?"
label(cmrdata$cmr_involvement_fup)="CMR involvement"
label(cmrdata$procedure_name_fup)="Procedure Name"
label(cmrdata$date_cmr_fup)="Date of baseline CMR exam"
label(cmrdata$akinesia_cmr_fup)="Akinesia"
label(cmrdata$akinesia_seg_cmr_fup___1)="Akinesia Segments (choice=basal anterior)"
label(cmrdata$akinesia_seg_cmr_fup___2)="Akinesia Segments (choice=basal anteroseptal)"
label(cmrdata$akinesia_seg_cmr_fup___3)="Akinesia Segments (choice=basal inferoseptal)"
label(cmrdata$akinesia_seg_cmr_fup___4)="Akinesia Segments (choice=basal inferior)"
label(cmrdata$akinesia_seg_cmr_fup___5)="Akinesia Segments (choice=basal inferolateral)"
label(cmrdata$akinesia_seg_cmr_fup___6)="Akinesia Segments (choice=basal anterolateral)"
label(cmrdata$akinesia_seg_cmr_fup___7)="Akinesia Segments (choice=mid anterior)"
label(cmrdata$akinesia_seg_cmr_fup___8)="Akinesia Segments (choice=mid anteroseptal)"
label(cmrdata$akinesia_seg_cmr_fup___9)="Akinesia Segments (choice=mid inferoseptal)"
label(cmrdata$akinesia_seg_cmr_fup___10)="Akinesia Segments (choice=mid inferior)"
label(cmrdata$akinesia_seg_cmr_fup___11)="Akinesia Segments (choice=mid inferolateral)"
label(cmrdata$akinesia_seg_cmr_fup___12)="Akinesia Segments (choice=mid anterolateral)"
label(cmrdata$akinesia_seg_cmr_fup___13)="Akinesia Segments (choice=apical anterior)"
label(cmrdata$akinesia_seg_cmr_fup___14)="Akinesia Segments (choice=apical septal)"
label(cmrdata$akinesia_seg_cmr_fup___15)="Akinesia Segments (choice=apical inferior)"
label(cmrdata$akinesia_seg_cmr_fup___16)="Akinesia Segments (choice=apical lateral)"
label(cmrdata$akinesia_seg_cmr_fup___17)="Akinesia Segments (choice=apex)"
label(cmrdata$hypokinesia_cmr_fup)="Hypokinesia"
label(cmrdata$hypokinesia_seg_cmr_fup___1)="Hypokinesia Segments (choice=basal anterior)"
label(cmrdata$hypokinesia_seg_cmr_fup___2)="Hypokinesia Segments (choice=basal anteroseptal)"
label(cmrdata$hypokinesia_seg_cmr_fup___3)="Hypokinesia Segments (choice=basal inferoseptal)"
label(cmrdata$hypokinesia_seg_cmr_fup___4)="Hypokinesia Segments (choice=basal inferior)"
label(cmrdata$hypokinesia_seg_cmr_fup___5)="Hypokinesia Segments (choice=basal inferolateral)"
label(cmrdata$hypokinesia_seg_cmr_fup___6)="Hypokinesia Segments (choice=basal anterolateral)"
label(cmrdata$hypokinesia_seg_cmr_fup___7)="Hypokinesia Segments (choice=mid anterior)"
label(cmrdata$hypokinesia_seg_cmr_fup___8)="Hypokinesia Segments (choice=mid anteroseptal)"
label(cmrdata$hypokinesia_seg_cmr_fup___9)="Hypokinesia Segments (choice=mid inferoseptal)"
label(cmrdata$hypokinesia_seg_cmr_fup___10)="Hypokinesia Segments (choice=mid inferior)"
label(cmrdata$hypokinesia_seg_cmr_fup___11)="Hypokinesia Segments (choice=mid inferolateral)"
label(cmrdata$hypokinesia_seg_cmr_fup___12)="Hypokinesia Segments (choice=mid anterolateral)"
label(cmrdata$hypokinesia_seg_cmr_fup___13)="Hypokinesia Segments (choice=apical anterior)"
label(cmrdata$hypokinesia_seg_cmr_fup___14)="Hypokinesia Segments (choice=apical septal)"
label(cmrdata$hypokinesia_seg_cmr_fup___15)="Hypokinesia Segments (choice=apical inferior)"
label(cmrdata$hypokinesia_seg_cmr_fup___16)="Hypokinesia Segments (choice=apical lateral)"
label(cmrdata$hypokinesia_seg_cmr_fup___17)="Hypokinesia Segments (choice=apex)"
label(cmrdata$dyskinesia_cmr_fup)="Dyskinesia"
label(cmrdata$dyskinesia_seg_cmr_fup___1)="Dyskinesia Segments (choice=basal anterior)"
label(cmrdata$dyskinesia_seg_cmr_fup___2)="Dyskinesia Segments (choice=basal anteroseptal)"
label(cmrdata$dyskinesia_seg_cmr_fup___3)="Dyskinesia Segments (choice=basal inferoseptal)"
label(cmrdata$dyskinesia_seg_cmr_fup___4)="Dyskinesia Segments (choice=basal inferior)"
label(cmrdata$dyskinesia_seg_cmr_fup___5)="Dyskinesia Segments (choice=basal inferolateral)"
label(cmrdata$dyskinesia_seg_cmr_fup___6)="Dyskinesia Segments (choice=basal anterolateral)"
label(cmrdata$dyskinesia_seg_cmr_fup___7)="Dyskinesia Segments (choice=mid anterior)"
label(cmrdata$dyskinesia_seg_cmr_fup___8)="Dyskinesia Segments (choice=mid anteroseptal)"
label(cmrdata$dyskinesia_seg_cmr_fup___9)="Dyskinesia Segments (choice=mid inferoseptal)"
label(cmrdata$dyskinesia_seg_cmr_fup___10)="Dyskinesia Segments (choice=mid inferior)"
label(cmrdata$dyskinesia_seg_cmr_fup___11)="Dyskinesia Segments (choice=mid inferolateral)"
label(cmrdata$dyskinesia_seg_cmr_fup___12)="Dyskinesia Segments (choice=mid anterolateral)"
label(cmrdata$dyskinesia_seg_cmr_fup___13)="Dyskinesia Segments (choice=apical anterior)"
label(cmrdata$dyskinesia_seg_cmr_fup___14)="Dyskinesia Segments (choice=apical septal)"
label(cmrdata$dyskinesia_seg_cmr_fup___15)="Dyskinesia Segments (choice=apical inferior)"
label(cmrdata$dyskinesia_seg_cmr_fup___16)="Dyskinesia Segments (choice=apical lateral)"
label(cmrdata$dyskinesia_seg_cmr_fup___17)="Dyskinesia Segments (choice=apex)"
label(cmrdata$aneurysm_cmr_fup)="Aneurysm"
label(cmrdata$aneurysm_seg_cmr_fup___1)="Aneurysm Segments (choice=basal anterior)"
label(cmrdata$aneurysm_seg_cmr_fup___2)="Aneurysm Segments (choice=basal anteroseptal)"
label(cmrdata$aneurysm_seg_cmr_fup___3)="Aneurysm Segments (choice=basal inferoseptal)"
label(cmrdata$aneurysm_seg_cmr_fup___4)="Aneurysm Segments (choice=basal inferior)"
label(cmrdata$aneurysm_seg_cmr_fup___5)="Aneurysm Segments (choice=basal inferolateral)"
label(cmrdata$aneurysm_seg_cmr_fup___6)="Aneurysm Segments (choice=basal anterolateral)"
label(cmrdata$aneurysm_seg_cmr_fup___7)="Aneurysm Segments (choice=mid anterior)"
label(cmrdata$aneurysm_seg_cmr_fup___8)="Aneurysm Segments (choice=mid anteroseptal)"
label(cmrdata$aneurysm_seg_cmr_fup___9)="Aneurysm Segments (choice=mid inferoseptal)"
label(cmrdata$aneurysm_seg_cmr_fup___10)="Aneurysm Segments (choice=mid inferior)"
label(cmrdata$aneurysm_seg_cmr_fup___11)="Aneurysm Segments (choice=mid inferolateral)"
label(cmrdata$aneurysm_seg_cmr_fup___12)="Aneurysm Segments (choice=mid anterolateral)"
label(cmrdata$aneurysm_seg_cmr_fup___13)="Aneurysm Segments (choice=apical anterior)"
label(cmrdata$aneurysm_seg_cmr_fup___14)="Aneurysm Segments (choice=apical septal)"
label(cmrdata$aneurysm_seg_cmr_fup___15)="Aneurysm Segments (choice=apical inferior)"
label(cmrdata$aneurysm_seg_cmr_fup___16)="Aneurysm Segments (choice=apical lateral)"
label(cmrdata$aneurysm_seg_cmr_fup___17)="Aneurysm Segments (choice=apex)"
label(cmrdata$wmsi_cmr_fup)="WMSi"
label(cmrdata$thrombus_cmr_fup)="LV thrombus "
label(cmrdata$thrombus_dim_cmr_fup)="Thrombus max dimensions"
label(cmrdata$thrombus_text_cmr_fup)="Thrombus free text"
label(cmrdata$aneurysm_rv_cmr_fup)="RV Aneurysm/Microaneurysms"
label(cmrdata$rvwma_cmr_fup)="RV regional wall motion abnormalities "
label(cmrdata$rvwma1_fup___2)="1 basal anterior free wall (choice=hypokinetic)"
label(cmrdata$rvwma1_fup___3)="1 basal anterior free wall (choice=akinetic)"
label(cmrdata$rvwma1_fup___4)="1 basal anterior free wall (choice=dyskinetic)"
label(cmrdata$rvwma2_fup___2)="2 basal lateral free wall (choice=hypokinetic)"
label(cmrdata$rvwma2_fup___3)="2 basal lateral free wall (choice=akinetic)"
label(cmrdata$rvwma2_fup___4)="2 basal lateral free wall (choice=dyskinetic)"
label(cmrdata$rvwma3_fup___2)="3 basal inferior wall (choice=hypokinetic)"
label(cmrdata$rvwma3_fup___3)="3 basal inferior wall (choice=akinetic)"
label(cmrdata$rvwma3_fup___4)="3 basal inferior wall (choice=dyskinetic)"
label(cmrdata$rvwma4_fup___2)="4 mid anterior free wall (choice=hypokinetic)"
label(cmrdata$rvwma4_fup___3)="4 mid anterior free wall (choice=akinetic)"
label(cmrdata$rvwma4_fup___4)="4 mid anterior free wall (choice=dyskinetic)"
label(cmrdata$rvwma5_fup___2)="5 mid lateral free wall (choice=hypokinetic)"
label(cmrdata$rvwma5_fup___3)="5 mid lateral free wall (choice=akinetic)"
label(cmrdata$rvwma5_fup___4)="5 mid lateral free wall (choice=dyskinetic)"
label(cmrdata$rvwma6_fup___2)="6 mid inferior wall (choice=hypokinetic)"
label(cmrdata$rvwma6_fup___3)="6 mid inferior wall (choice=akinetic)"
label(cmrdata$rvwma6_fup___4)="6 mid inferior wall (choice=dyskinetic)"
label(cmrdata$rvwma7_fup___2)="7 apex (choice=hypokinetic)"
label(cmrdata$rvwma7_fup___3)="7 apex (choice=akinetic)"
label(cmrdata$rvwma7_fup___4)="7 apex (choice=dyskinetic)"
label(cmrdata$rvwma8_fup___2)="8 RVOT (choice=hypokinetic)"
label(cmrdata$rvwma8_fup___3)="8 RVOT (choice=akinetic)"
label(cmrdata$rvwma8_fup___4)="8 RVOT (choice=dyskinetic)"
label(cmrdata$fatinf_cmr_fup)="LV Fat infiltration presence "
label(cmrdata$fat_visualized_in_fup___1)="Fat visualized in: (choice=HASTE)"
label(cmrdata$fat_visualized_in_fup___2)="Fat visualized in: (choice=Cine)"
label(cmrdata$fat_visualized_in_fup___3)="Fat visualized in: (choice=LGE)"
label(cmrdata$fat_visualized_in_fup___4)="Fat visualized in: (choice=Fatsat)"
label(cmrdata$fat1_fup___1)=" basal anterior (choice=Sub-endo)"
label(cmrdata$fat1_fup___2)=" basal anterior (choice=Mid-wall)"
label(cmrdata$fat1_fup___3)=" basal anterior (choice=Sub-epi)"
label(cmrdata$fat1_fup___4)=" basal anterior (choice=Transmural)"
label(cmrdata$fat1_fup___5)=" basal anterior (choice=Mild enhancent)"
label(cmrdata$fat2_fup___1)=" basal anteroseptal (choice=Sub-endo)"
label(cmrdata$fat2_fup___2)=" basal anteroseptal (choice=Mid-wall)"
label(cmrdata$fat2_fup___3)=" basal anteroseptal (choice=Sub-epi)"
label(cmrdata$fat2_fup___4)=" basal anteroseptal (choice=Transmural)"
label(cmrdata$fat2_fup___5)=" basal anteroseptal (choice=Mild enhancent)"
label(cmrdata$fat3_fup___1)=" basal inferoseptal (choice=Sub-endo)"
label(cmrdata$fat3_fup___2)=" basal inferoseptal (choice=Mid-wall)"
label(cmrdata$fat3_fup___3)=" basal inferoseptal (choice=Sub-epi)"
label(cmrdata$fat3_fup___4)=" basal inferoseptal (choice=Transmural)"
label(cmrdata$fat3_fup___5)=" basal inferoseptal (choice=Mild enhancent)"
label(cmrdata$fat4_fup___1)=" basal inferior (choice=Sub-endo)"
label(cmrdata$fat4_fup___2)=" basal inferior (choice=Mid-wall)"
label(cmrdata$fat4_fup___3)=" basal inferior (choice=Sub-epi)"
label(cmrdata$fat4_fup___4)=" basal inferior (choice=Transmural)"
label(cmrdata$fat4_fup___5)=" basal inferior (choice=Mild enhancent)"
label(cmrdata$fat5_fup___1)=" basal inferolateral (choice=Sub-endo)"
label(cmrdata$fat5_fup___2)=" basal inferolateral (choice=Mid-wall)"
label(cmrdata$fat5_fup___3)=" basal inferolateral (choice=Sub-epi)"
label(cmrdata$fat5_fup___4)=" basal inferolateral (choice=Transmural)"
label(cmrdata$fat5_fup___5)=" basal inferolateral (choice=Mild enhancent)"
label(cmrdata$fat6_fup___1)=" basal anterolateral (choice=Sub-endo)"
label(cmrdata$fat6_fup___2)=" basal anterolateral (choice=Mid-wall)"
label(cmrdata$fat6_fup___3)=" basal anterolateral (choice=Sub-epi)"
label(cmrdata$fat6_fup___4)=" basal anterolateral (choice=Transmural)"
label(cmrdata$fat6_fup___5)=" basal anterolateral (choice=Mild enhancent)"
label(cmrdata$fat7_fup___1)=" mid anterior (choice=Sub-endo)"
label(cmrdata$fat7_fup___2)=" mid anterior (choice=Mid-wall)"
label(cmrdata$fat7_fup___3)=" mid anterior (choice=Sub-epi)"
label(cmrdata$fat7_fup___4)=" mid anterior (choice=Transmural)"
label(cmrdata$fat7_fup___5)=" mid anterior (choice=Mild enhancent)"
label(cmrdata$fat8_fup___1)=" mid anteroseptal (choice=Sub-endo)"
label(cmrdata$fat8_fup___2)=" mid anteroseptal (choice=Mid-wall)"
label(cmrdata$fat8_fup___3)=" mid anteroseptal (choice=Sub-epi)"
label(cmrdata$fat8_fup___4)=" mid anteroseptal (choice=Transmural)"
label(cmrdata$fat8_fup___5)=" mid anteroseptal (choice=Mild enhancent)"
label(cmrdata$fat9_fup___1)=" mid inferoseptal (choice=Sub-endo)"
label(cmrdata$fat9_fup___2)=" mid inferoseptal (choice=Mid-wall)"
label(cmrdata$fat9_fup___3)=" mid inferoseptal (choice=Sub-epi)"
label(cmrdata$fat9_fup___4)=" mid inferoseptal (choice=Transmural)"
label(cmrdata$fat9_fup___5)=" mid inferoseptal (choice=Mild enhancent)"
label(cmrdata$fat10_fup___1)=" mid inferior (choice=Sub-endo)"
label(cmrdata$fat10_fup___2)=" mid inferior (choice=Mid-wall)"
label(cmrdata$fat10_fup___3)=" mid inferior (choice=Sub-epi)"
label(cmrdata$fat10_fup___4)=" mid inferior (choice=Transmural)"
label(cmrdata$fat10_fup___5)=" mid inferior (choice=Mild enhancent)"
label(cmrdata$fat11_fup___1)=" mid inferolateral (choice=Sub-endo)"
label(cmrdata$fat11_fup___2)=" mid inferolateral (choice=Mid-wall)"
label(cmrdata$fat11_fup___3)=" mid inferolateral (choice=Sub-epi)"
label(cmrdata$fat11_fup___4)=" mid inferolateral (choice=Transmural)"
label(cmrdata$fat11_fup___5)=" mid inferolateral (choice=Mild enhancent)"
label(cmrdata$fat12_fup___1)=" mid anterolateral (choice=Sub-endo)"
label(cmrdata$fat12_fup___2)=" mid anterolateral (choice=Mid-wall)"
label(cmrdata$fat12_fup___3)=" mid anterolateral (choice=Sub-epi)"
label(cmrdata$fat12_fup___4)=" mid anterolateral (choice=Transmural)"
label(cmrdata$fat12_fup___5)=" mid anterolateral (choice=Mild enhancent)"
label(cmrdata$fat13_fup___1)=" apical anterior (choice=Sub-endo)"
label(cmrdata$fat13_fup___2)=" apical anterior (choice=Mid-wall)"
label(cmrdata$fat13_fup___3)=" apical anterior (choice=Sub-epi)"
label(cmrdata$fat13_fup___4)=" apical anterior (choice=Transmural)"
label(cmrdata$fat13_fup___5)=" apical anterior (choice=Mild enhancent)"
label(cmrdata$fat14_fup___1)=" apical septal (choice=Sub-endo)"
label(cmrdata$fat14_fup___2)=" apical septal (choice=Mid-wall)"
label(cmrdata$fat14_fup___3)=" apical septal (choice=Sub-epi)"
label(cmrdata$fat14_fup___4)=" apical septal (choice=Transmural)"
label(cmrdata$fat14_fup___5)=" apical septal (choice=Mild enhancent)"
label(cmrdata$fat15_fup___1)=" apical inferior (choice=Sub-endo)"
label(cmrdata$fat15_fup___2)=" apical inferior (choice=Mid-wall)"
label(cmrdata$fat15_fup___3)=" apical inferior (choice=Sub-epi)"
label(cmrdata$fat15_fup___4)=" apical inferior (choice=Transmural)"
label(cmrdata$fat15_fup___5)=" apical inferior (choice=Mild enhancent)"
label(cmrdata$fat16_fup___1)=" apical lateral (choice=Sub-endo)"
label(cmrdata$fat16_fup___2)=" apical lateral (choice=Mid-wall)"
label(cmrdata$fat16_fup___3)=" apical lateral (choice=Sub-epi)"
label(cmrdata$fat16_fup___4)=" apical lateral (choice=Transmural)"
label(cmrdata$fat16_fup___5)=" apical lateral (choice=Mild enhancent)"
label(cmrdata$fat17_fup___1)=" apex (choice=Sub-endo)"
label(cmrdata$fat17_fup___2)=" apex (choice=Mid-wall)"
label(cmrdata$fat17_fup___3)=" apex (choice=Sub-epi)"
label(cmrdata$fat17_fup___4)=" apex (choice=Transmural)"
label(cmrdata$fat17_fup___5)=" apex (choice=Mild enhancent)"
label(cmrdata$rvfat_cmr_fup)="RV fat"
label(cmrdata$rvfat_location_cmr_fup___1)="RV fat Location (choice=basal anterior)"
label(cmrdata$rvfat_location_cmr_fup___2)="RV fat Location (choice=basal lateral)"
label(cmrdata$rvfat_location_cmr_fup___3)="RV fat Location (choice=basal inferior)"
label(cmrdata$rvfat_location_cmr_fup___4)="RV fat Location (choice=mid anterior)"
label(cmrdata$rvfat_location_cmr_fup___5)="RV fat Location (choice=mid lateral)"
label(cmrdata$rvfat_location_cmr_fup___6)="RV fat Location (choice=mid inferior)"
label(cmrdata$rvfat_location_cmr_fup___7)="RV fat Location (choice=apical)"
label(cmrdata$rvfat_location_cmr_fup___8)="RV fat Location (choice=RVOT)"
label(cmrdata$lge_cmr_fup)="LGE presence "
label(cmrdata$lge_cmr_slices_fup)="LGE presence (n. of slices)"
label(cmrdata$ring_lge_cmr_fup)="Ring-like LGE presence "
label(cmrdata$ring_lge_cmr_segments_fup)="Ring-like LGE presence (n. of segments)"
label(cmrdata$ring_lge_cmr_slices_fup)="Ring-like LGE presence (n. of slices)"
label(cmrdata$lge1_fup___1)=" basal anterior (choice=Sub-endo)"
label(cmrdata$lge1_fup___2)=" basal anterior (choice=Mid-wall)"
label(cmrdata$lge1_fup___3)=" basal anterior (choice=Sub-epi)"
label(cmrdata$lge1_fup___4)=" basal anterior (choice=Transmural)"
label(cmrdata$lge1_fup___5)=" basal anterior (choice=Mild enhancent)"
label(cmrdata$lge2_fup___1)=" basal anteroseptal (choice=Sub-endo)"
label(cmrdata$lge2_fup___2)=" basal anteroseptal (choice=Mid-wall)"
label(cmrdata$lge2_fup___3)=" basal anteroseptal (choice=Sub-epi)"
label(cmrdata$lge2_fup___4)=" basal anteroseptal (choice=Transmural)"
label(cmrdata$lge2_fup___5)=" basal anteroseptal (choice=Mild enhancent)"
label(cmrdata$lge3_fup___1)=" basal inferoseptal (choice=Sub-endo)"
label(cmrdata$lge3_fup___2)=" basal inferoseptal (choice=Mid-wall)"
label(cmrdata$lge3_fup___3)=" basal inferoseptal (choice=Sub-epi)"
label(cmrdata$lge3_fup___4)=" basal inferoseptal (choice=Transmural)"
label(cmrdata$lge3_fup___5)=" basal inferoseptal (choice=Mild enhancent)"
label(cmrdata$lge4_fup___1)=" basal inferior (choice=Sub-endo)"
label(cmrdata$lge4_fup___2)=" basal inferior (choice=Mid-wall)"
label(cmrdata$lge4_fup___3)=" basal inferior (choice=Sub-epi)"
label(cmrdata$lge4_fup___4)=" basal inferior (choice=Transmural)"
label(cmrdata$lge4_fup___5)=" basal inferior (choice=Mild enhancent)"
label(cmrdata$lge5_fup___1)=" basal inferolateral (choice=Sub-endo)"
label(cmrdata$lge5_fup___2)=" basal inferolateral (choice=Mid-wall)"
label(cmrdata$lge5_fup___3)=" basal inferolateral (choice=Sub-epi)"
label(cmrdata$lge5_fup___4)=" basal inferolateral (choice=Transmural)"
label(cmrdata$lge5_fup___5)=" basal inferolateral (choice=Mild enhancent)"
label(cmrdata$lge6_fup___1)=" basal anterolateral (choice=Sub-endo)"
label(cmrdata$lge6_fup___2)=" basal anterolateral (choice=Mid-wall)"
label(cmrdata$lge6_fup___3)=" basal anterolateral (choice=Sub-epi)"
label(cmrdata$lge6_fup___4)=" basal anterolateral (choice=Transmural)"
label(cmrdata$lge6_fup___5)=" basal anterolateral (choice=Mild enhancent)"
label(cmrdata$lge7_fup___1)=" mid anterior (choice=Sub-endo)"
label(cmrdata$lge7_fup___2)=" mid anterior (choice=Mid-wall)"
label(cmrdata$lge7_fup___3)=" mid anterior (choice=Sub-epi)"
label(cmrdata$lge7_fup___4)=" mid anterior (choice=Transmural)"
label(cmrdata$lge7_fup___5)=" mid anterior (choice=Mild enhancent)"
label(cmrdata$lge8_fup___1)=" mid anteroseptal (choice=Sub-endo)"
label(cmrdata$lge8_fup___2)=" mid anteroseptal (choice=Mid-wall)"
label(cmrdata$lge8_fup___3)=" mid anteroseptal (choice=Sub-epi)"
label(cmrdata$lge8_fup___4)=" mid anteroseptal (choice=Transmural)"
label(cmrdata$lge8_fup___5)=" mid anteroseptal (choice=Mild enhancent)"
label(cmrdata$lge9_fup___1)=" mid inferoseptal (choice=Sub-endo)"
label(cmrdata$lge9_fup___2)=" mid inferoseptal (choice=Mid-wall)"
label(cmrdata$lge9_fup___3)=" mid inferoseptal (choice=Sub-epi)"
label(cmrdata$lge9_fup___4)=" mid inferoseptal (choice=Transmural)"
label(cmrdata$lge9_fup___5)=" mid inferoseptal (choice=Mild enhancent)"
label(cmrdata$lge10_fup___1)=" mid inferior (choice=Sub-endo)"
label(cmrdata$lge10_fup___2)=" mid inferior (choice=Mid-wall)"
label(cmrdata$lge10_fup___3)=" mid inferior (choice=Sub-epi)"
label(cmrdata$lge10_fup___4)=" mid inferior (choice=Transmural)"
label(cmrdata$lge10_fup___5)=" mid inferior (choice=Mild enhancent)"
label(cmrdata$lge11_fup___1)=" mid inferolateral (choice=Sub-endo)"
label(cmrdata$lge11_fup___2)=" mid inferolateral (choice=Mid-wall)"
label(cmrdata$lge11_fup___3)=" mid inferolateral (choice=Sub-epi)"
label(cmrdata$lge11_fup___4)=" mid inferolateral (choice=Transmural)"
label(cmrdata$lge11_fup___5)=" mid inferolateral (choice=Mild enhancent)"
label(cmrdata$lge12_fup___1)=" mid anterolateral (choice=Sub-endo)"
label(cmrdata$lge12_fup___2)=" mid anterolateral (choice=Mid-wall)"
label(cmrdata$lge12_fup___3)=" mid anterolateral (choice=Sub-epi)"
label(cmrdata$lge12_fup___4)=" mid anterolateral (choice=Transmural)"
label(cmrdata$lge12_fup___5)=" mid anterolateral (choice=Mild enhancent)"
label(cmrdata$lge13_fup___1)=" apical anterior (choice=Sub-endo)"
label(cmrdata$lge13_fup___2)=" apical anterior (choice=Mid-wall)"
label(cmrdata$lge13_fup___3)=" apical anterior (choice=Sub-epi)"
label(cmrdata$lge13_fup___4)=" apical anterior (choice=Transmural)"
label(cmrdata$lge13_fup___5)=" apical anterior (choice=Mild enhancent)"
label(cmrdata$lge14_fup___1)=" apical septal (choice=Sub-endo)"
label(cmrdata$lge14_fup___2)=" apical septal (choice=Mid-wall)"
label(cmrdata$lge14_fup___3)=" apical septal (choice=Sub-epi)"
label(cmrdata$lge14_fup___4)=" apical septal (choice=Transmural)"
label(cmrdata$lge14_fup___5)=" apical septal (choice=Mild enhancent)"
label(cmrdata$lge15_fup___1)=" apical inferior (choice=Sub-endo)"
label(cmrdata$lge15_fup___2)=" apical inferior (choice=Mid-wall)"
label(cmrdata$lge15_fup___3)=" apical inferior (choice=Sub-epi)"
label(cmrdata$lge15_fup___4)=" apical inferior (choice=Transmural)"
label(cmrdata$lge15_fup___5)=" apical inferior (choice=Mild enhancent)"
label(cmrdata$lge16_fup___1)=" apical lateral (choice=Sub-endo)"
label(cmrdata$lge16_fup___2)=" apical lateral (choice=Mid-wall)"
label(cmrdata$lge16_fup___3)=" apical lateral (choice=Sub-epi)"
label(cmrdata$lge16_fup___4)=" apical lateral (choice=Transmural)"
label(cmrdata$lge16_fup___5)=" apical lateral (choice=Mild enhancent)"
label(cmrdata$lge17_fup___1)=" apex (choice=Sub-endo)"
label(cmrdata$lge17_fup___2)=" apex (choice=Mid-wall)"
label(cmrdata$lge17_fup___3)=" apex (choice=Sub-epi)"
label(cmrdata$lge17_fup___4)=" apex (choice=Transmural)"
label(cmrdata$lge17_fup___5)=" apex (choice=Mild enhancent)"
label(cmrdata$lge_mass_cmr_fup)="LGE (g) "
label(cmrdata$lge_mass_per_cmr_fup)="LGE mass (%)"
label(cmrdata$rvlge_cmr_fup)="RV LGE"
label(cmrdata$rvlge_location_cmr_fup___1)="RV LGE Location (choice=basal anterior)"
label(cmrdata$rvlge_location_cmr_fup___2)="RV LGE Location (choice=basal lateral)"
label(cmrdata$rvlge_location_cmr_fup___3)="RV LGE Location (choice=basal inferior)"
label(cmrdata$rvlge_location_cmr_fup___4)="RV LGE Location (choice=mid anterior)"
label(cmrdata$rvlge_location_cmr_fup___5)="RV LGE Location (choice=mid lateral)"
label(cmrdata$rvlge_location_cmr_fup___6)="RV LGE Location (choice=mid inferior)"
label(cmrdata$rvlge_location_cmr_fup___7)="RV LGE Location (choice=apical)"
label(cmrdata$rvlge_location_cmr_fup___8)="RV LGE Location (choice=RVOT)"
label(cmrdata$t1_executed_cmr_fup)="Was T1 mapping in protocol?"
label(cmrdata$t1_slices_cmr_fup)="T1 Slices acquired"
label(cmrdata$t1_mapping_elevated_cmr_fup)="Presence of elevated T1 mapping foci"
label(cmrdata$t1_mapping_maxvalue_cmr_fup)="Max value ROI at T1 mapping "
label(cmrdata$high_t1_location_cmr_fup___1)="Segments with high native T1 (choice=basal anterior)"
label(cmrdata$high_t1_location_cmr_fup___2)="Segments with high native T1 (choice=basal anteroseptal)"
label(cmrdata$high_t1_location_cmr_fup___3)="Segments with high native T1 (choice=basal inferoseptal)"
label(cmrdata$high_t1_location_cmr_fup___4)="Segments with high native T1 (choice=basal inferior)"
label(cmrdata$high_t1_location_cmr_fup___5)="Segments with high native T1 (choice=basal inferolateral)"
label(cmrdata$high_t1_location_cmr_fup___6)="Segments with high native T1 (choice=basal anterolateral)"
label(cmrdata$high_t1_location_cmr_fup___7)="Segments with high native T1 (choice=mid anterior)"
label(cmrdata$high_t1_location_cmr_fup___8)="Segments with high native T1 (choice=mid anteroseptal)"
label(cmrdata$high_t1_location_cmr_fup___9)="Segments with high native T1 (choice=mid inferoseptal)"
label(cmrdata$high_t1_location_cmr_fup___10)="Segments with high native T1 (choice=mid inferior)"
label(cmrdata$high_t1_location_cmr_fup___11)="Segments with high native T1 (choice=mid inferolateral)"
label(cmrdata$high_t1_location_cmr_fup___12)="Segments with high native T1 (choice=mid anterolateral)"
label(cmrdata$high_t1_location_cmr_fup___13)="Segments with high native T1 (choice=apical anterior)"
label(cmrdata$high_t1_location_cmr_fup___14)="Segments with high native T1 (choice=apical septal)"
label(cmrdata$high_t1_location_cmr_fup___15)="Segments with high native T1 (choice=apical inferior)"
label(cmrdata$high_t1_location_cmr_fup___16)="Segments with high native T1 (choice=apical lateral)"
label(cmrdata$high_t1_location_cmr_fup___17)="Segments with high native T1 (choice=apex)"
label(cmrdata$oedema_executed_cmr_fup)="Was T2 imaging in protocol?"
label(cmrdata$oedema_slices_cmr_fup)="T2 Slices acquired"
label(cmrdata$stir_oedema_ratio_cmr_fup)="STIR T2 Oedema LL Ratio > 2"
label(cmrdata$high_stir_location_cmr_fup___1)="Segments with elevated STIR signal (choice=basal anterior)"
label(cmrdata$high_stir_location_cmr_fup___2)="Segments with elevated STIR signal (choice=basal anteroseptal)"
label(cmrdata$high_stir_location_cmr_fup___3)="Segments with elevated STIR signal (choice=basal inferoseptal)"
label(cmrdata$high_stir_location_cmr_fup___4)="Segments with elevated STIR signal (choice=basal inferior)"
label(cmrdata$high_stir_location_cmr_fup___5)="Segments with elevated STIR signal (choice=basal inferolateral)"
label(cmrdata$high_stir_location_cmr_fup___6)="Segments with elevated STIR signal (choice=basal anterolateral)"
label(cmrdata$high_stir_location_cmr_fup___7)="Segments with elevated STIR signal (choice=mid anterior)"
label(cmrdata$high_stir_location_cmr_fup___8)="Segments with elevated STIR signal (choice=mid anteroseptal)"
label(cmrdata$high_stir_location_cmr_fup___9)="Segments with elevated STIR signal (choice=mid inferoseptal)"
label(cmrdata$high_stir_location_cmr_fup___10)="Segments with elevated STIR signal (choice=mid inferior)"
label(cmrdata$high_stir_location_cmr_fup___11)="Segments with elevated STIR signal (choice=mid inferolateral)"
label(cmrdata$high_stir_location_cmr_fup___12)="Segments with elevated STIR signal (choice=mid anterolateral)"
label(cmrdata$high_stir_location_cmr_fup___13)="Segments with elevated STIR signal (choice=apical anterior)"
label(cmrdata$high_stir_location_cmr_fup___14)="Segments with elevated STIR signal (choice=apical septal)"
label(cmrdata$high_stir_location_cmr_fup___15)="Segments with elevated STIR signal (choice=apical inferior)"
label(cmrdata$high_stir_location_cmr_fup___16)="Segments with elevated STIR signal (choice=apical lateral)"
label(cmrdata$high_stir_location_cmr_fup___17)="Segments with elevated STIR signal (choice=apex)"
label(cmrdata$t2_mapping_elevated_cmr_fup)="Presence of elevated T2 mapping foci"
label(cmrdata$t2_mapping_maxvalue_cmr_fup)="Max value ROI at T2 mapping "
label(cmrdata$high_t2_location_cmr_fup___1)="Segments with high T2 mapping (choice=basal anterior)"
label(cmrdata$high_t2_location_cmr_fup___2)="Segments with high T2 mapping (choice=basal anteroseptal)"
label(cmrdata$high_t2_location_cmr_fup___3)="Segments with high T2 mapping (choice=basal inferoseptal)"
label(cmrdata$high_t2_location_cmr_fup___4)="Segments with high T2 mapping (choice=basal inferior)"
label(cmrdata$high_t2_location_cmr_fup___5)="Segments with high T2 mapping (choice=basal inferolateral)"
label(cmrdata$high_t2_location_cmr_fup___6)="Segments with high T2 mapping (choice=basal anterolateral)"
label(cmrdata$high_t2_location_cmr_fup___7)="Segments with high T2 mapping (choice=mid anterior)"
label(cmrdata$high_t2_location_cmr_fup___8)="Segments with high T2 mapping (choice=mid anteroseptal)"
label(cmrdata$high_t2_location_cmr_fup___9)="Segments with high T2 mapping (choice=mid inferoseptal)"
label(cmrdata$high_t2_location_cmr_fup___10)="Segments with high T2 mapping (choice=mid inferior)"
label(cmrdata$high_t2_location_cmr_fup___11)="Segments with high T2 mapping (choice=mid inferolateral)"
label(cmrdata$high_t2_location_cmr_fup___12)="Segments with high T2 mapping (choice=mid anterolateral)"
label(cmrdata$high_t2_location_cmr_fup___13)="Segments with high T2 mapping (choice=apical anterior)"
label(cmrdata$high_t2_location_cmr_fup___14)="Segments with high T2 mapping (choice=apical septal)"
label(cmrdata$high_t2_location_cmr_fup___15)="Segments with high T2 mapping (choice=apical inferior)"
label(cmrdata$high_t2_location_cmr_fup___16)="Segments with high T2 mapping (choice=apical lateral)"
label(cmrdata$high_t2_location_cmr_fup___17)="Segments with high T2 mapping (choice=apex)"
label(cmrdata$vers_peri_cmr_fup)="pericardial effusion "
label(cmrdata$comments_cmr_fup)="comments       "
label(cmrdata$hr_cmr_fup)="Heart Rate"
label(cmrdata$lvedv_cmr_fup)="LVEDV (ml)"
label(cmrdata$lvesv_cmr_fup)="LVESV (ml)"
label(cmrdata$lvsv_cmr_fup)="LVSV (ml)        "
label(cmrdata$lvef_cmr_fup)="LVEF (%)      "
label(cmrdata$lvco_cmr_fup)="LVCO (l/min)"
label(cmrdata$lvci_cmr_fup)="LVCI (l/min/m2)"
label(cmrdata$lv_mass_cmr_fup)="LV mass (g)"
label(cmrdata$lvedvi_cmr_fup)="LVEDVi (ml/m2)          "
label(cmrdata$lvesvi_cmr_fup)="LVESVi (ml/m2)          "
label(cmrdata$lvsvi_cmr_fup)="LVSVi (ml/m2)"
label(cmrdata$lvmi_cmr_fup)="LV mass index (g/m2)        "
label(cmrdata$rvedv_cmr_fup)="RVEDV (ml)"
label(cmrdata$rvesv_cmr_fup)="RVESV (ml)"
label(cmrdata$rvsv_cmr_fup)="RVSV (ml)        "
label(cmrdata$rvef_cmr_fup)="RVEF (%)      "
label(cmrdata$rvco_cmr_fup)="RVCO (l/min)"
label(cmrdata$rvci_cmr_fup)="RVCI (l/min/m2)"
label(cmrdata$rvedvi_cmr_fup)="RVEDVi (ml/m2)          "
label(cmrdata$rvesvi_cmr_fup)="RVESVi (ml/m2)          "
label(cmrdata$rvsvi_cmr_fup)="RVSVi (ml/m2)"
label(cmrdata$mapseinf_cmr_fup)="MAPSE Inferior"
label(cmrdata$mapseant_cmr_fup)="MAPSE Anterior"
label(cmrdata$mapselat_cmr_fup)="MAPSE Lateral"
label(cmrdata$mapsesep_cmr_fup)="MAPSE Septal"
label(cmrdata$tapse_cmr_fup)="TAPSE"
label(cmrdata$min_la_vol_cmr_fup)="Min LA Volume"
label(cmrdata$max_la_vol_cmr_fup)="Max LA Volume"
label(cmrdata$min_la_vol_index_cmr_fup)="Min LA Vol/BSA"
label(cmrdata$max_la_vol_index_cmr_fup)="Max LA Vol/BSA"
label(cmrdata$la_ef_cmr_fup)="LA EF (%)"
label(cmrdata$followup_cmr_complete)="Complete?"
label(cmrdata$global_peak_strain_radial_fup)="Global Peak Strain Radial"
label(cmrdata$peak_strain_radial_1_fup)="Peak Strain Radial 1"
label(cmrdata$peak_strain_radial_2_fup)="Peak Strain Radial 2"
label(cmrdata$peak_strain_radial_3_fup)="Peak Strain Radial 3"
label(cmrdata$peak_strain_radial_4_fup)="Peak Strain Radial 4"
label(cmrdata$peak_strain_radial_5_fup)="Peak Strain Radial 5"
label(cmrdata$peak_strain_radial_6_fup)="Peak Strain Radial 6"
label(cmrdata$peak_strain_radial_7_fup)="Peak Strain Radial 7"
label(cmrdata$peak_strain_radial_8_fup)="Peak Strain Radial 8"
label(cmrdata$peak_strain_radial_9_fup)="Peak Strain Radial 9"
label(cmrdata$peak_strain_radial_10_fup)="Peak Strain Radial 10"
label(cmrdata$peak_strain_radial_11_fup)="Peak Strain Radial 11"
label(cmrdata$peak_strain_radial_12_fup)="Peak Strain Radial 12"
label(cmrdata$peak_strain_radial_13_fup)="Peak Strain Radial 13"
label(cmrdata$peak_strain_radial_14_fup)="Peak Strain Radial 14"
label(cmrdata$peak_strain_radial_15_fup)="Peak Strain Radial 15"
label(cmrdata$peak_strain_radial_16_fup)="Peak Strain Radial 16"
label(cmrdata$global_peak_strain_circumferential_fup)="Global Peak Strain Circumferential"
label(cmrdata$peak_strain_circumferential_1_fup)="Peak Strain Circumferential 1"
label(cmrdata$peak_strain_circumferential_2_fup)="Peak Strain Circumferential 2"
label(cmrdata$peak_strain_circumferential_3_fup)="Peak Strain Circumferential 3"
label(cmrdata$peak_strain_circumferential_4_fup)="Peak Strain Circumferential 4"
label(cmrdata$peak_strain_circumferential_5_fup)="Peak Strain Circumferential 5"
label(cmrdata$peak_strain_circumferential_6_fup)="Peak Strain Circumferential 6"
label(cmrdata$peak_strain_circumferential_7_fup)="Peak Strain Circumferential 7"
label(cmrdata$peak_strain_circumferential_8_fup)="Peak Strain Circumferential 8"
label(cmrdata$peak_strain_circumferential_9_fup)="Peak Strain Circumferential 9"
label(cmrdata$peak_strain_circumferential_10_fup)="Peak Strain Circumferential 10"
label(cmrdata$peak_strain_circumferential_11_fup)="Peak Strain Circumferential 11"
label(cmrdata$peak_strain_circumferential_12_fup)="Peak Strain Circumferential 12"
label(cmrdata$peak_strain_circumferential_13_fup)="Peak Strain Circumferential 13"
label(cmrdata$peak_strain_circumferential_14_fup)="Peak Strain Circumferential 14"
label(cmrdata$peak_strain_circumferential_15_fup)="Peak Strain Circumferential 15"
label(cmrdata$peak_strain_circumferential_16_fup)="Peak Strain Circumferential 16"
label(cmrdata$global_peak_strain_longitudinal_fup)="Global Peak Strain Longitudinal"
label(cmrdata$peak_strain_longitudinal_1_fup)="Peak Strain Longitudinal 1"
label(cmrdata$peak_strain_longitudinal_2_fup)="Peak Strain Longitudinal 2"
label(cmrdata$peak_strain_longitudinal_3_fup)="Peak Strain Longitudinal 3"
label(cmrdata$peak_strain_longitudinal_4_fup)="Peak Strain Longitudinal 4"
label(cmrdata$peak_strain_longitudinal_5_fup)="Peak Strain Longitudinal 5"
label(cmrdata$peak_strain_longitudinal_6_fup)="Peak Strain Longitudinal 6"
label(cmrdata$peak_strain_longitudinal_7_fup)="Peak Strain Longitudinal 7"
label(cmrdata$peak_strain_longitudinal_8_fup)="Peak Strain Longitudinal 8"
label(cmrdata$peak_strain_longitudinal_9_fup)="Peak Strain Longitudinal 9"
label(cmrdata$peak_strain_longitudinal_10_fup)="Peak Strain Longitudinal 10"
label(cmrdata$peak_strain_longitudinal_11_fup)="Peak Strain Longitudinal 11"
label(cmrdata$peak_strain_longitudinal_12_fup)="Peak Strain Longitudinal 12"
label(cmrdata$peak_strain_longitudinal_13_fup)="Peak Strain Longitudinal 13"
label(cmrdata$peak_strain_longitudinal_14_fup)="Peak Strain Longitudinal 14"
label(cmrdata$peak_strain_longitudinal_15_fup)="Peak Strain Longitudinal 15"
label(cmrdata$peak_strain_longitudinal_16_fup)="Peak Strain Longitudinal 16"
label(cmrdata$global_time_to_peak_radial_fup)="Global Time To Peak Radial"
label(cmrdata$time_to_peak_radial_1_fup)="Time To Peak Radial 1"
label(cmrdata$time_to_peak_radial_2_fup)="Time To Peak Radial 2"
label(cmrdata$time_to_peak_radial_3_fup)="Time To Peak Radial 3"
label(cmrdata$time_to_peak_radial_4_fup)="Time To Peak Radial 4"
label(cmrdata$time_to_peak_radial_5_fup)="Time To Peak Radial 5"
label(cmrdata$time_to_peak_radial_6_fup)="Time To Peak Radial 6"
label(cmrdata$time_to_peak_radial_7_fup)="Time To Peak Radial 7"
label(cmrdata$time_to_peak_radial_8_fup)="Time To Peak Radial 8"
label(cmrdata$time_to_peak_radial_9_fup)="Time To Peak Radial 9"
label(cmrdata$time_to_peak_radial_10_fup)="Time To Peak Radial 10"
label(cmrdata$time_to_peak_radial_11_fup)="Time To Peak Radial 11"
label(cmrdata$time_to_peak_radial_12_fup)="Time To Peak Radial 12"
label(cmrdata$time_to_peak_radial_13_fup)="Time To Peak Radial 13"
label(cmrdata$time_to_peak_radial_14_fup)="Time To Peak Radial 14"
label(cmrdata$time_to_peak_radial_15_fup)="Time To Peak Radial 15"
label(cmrdata$time_to_peak_radial_16_fup)="Time To Peak Radial 16"
label(cmrdata$global_time_to_peak_circumferential_fup)="Global Time To Peak Circumferential"
label(cmrdata$time_to_peak_circumferential_1_fup)="Time To Peak Circumferential 1"
label(cmrdata$time_to_peak_circumferential_2_fup)="Time To Peak Circumferential 2"
label(cmrdata$time_to_peak_circumferential_3_fup)="Time To Peak Circumferential 3"
label(cmrdata$time_to_peak_circumferential_4_fup)="Time To Peak Circumferential 4"
label(cmrdata$time_to_peak_circumferential_5_fup)="Time To Peak Circumferential 5"
label(cmrdata$time_to_peak_circumferential_6_fup)="Time To Peak Circumferential 6"
label(cmrdata$time_to_peak_circumferential_7_fup)="Time To Peak Circumferential 7"
label(cmrdata$time_to_peak_circumferential_8_fup)="Time To Peak Circumferential 8"
label(cmrdata$time_to_peak_circumferential_9_fup)="Time To Peak Circumferential 9"
label(cmrdata$time_to_peak_circumferential_10_fup)="Time To Peak Circumferential 10"
label(cmrdata$time_to_peak_circumferential_11_fup)="Time To Peak Circumferential 11"
label(cmrdata$time_to_peak_circumferential_12_fup)="Time To Peak Circumferential 12"
label(cmrdata$time_to_peak_circumferential_13_fup)="Time To Peak Circumferential 13"
label(cmrdata$time_to_peak_circumferential_14_fup)="Time To Peak Circumferential 14"
label(cmrdata$time_to_peak_circumferential_15_fup)="Time To Peak Circumferential 15"
label(cmrdata$time_to_peak_circumferential_16_fup)="Time To Peak Circumferential 16"
label(cmrdata$global_time_to_peak_longitudinal_fup)="Global Time To Peak Longitudinal"
label(cmrdata$time_to_peak_longitudinal_1_fup)="Time To Peak Longitudinal 1"
label(cmrdata$time_to_peak_longitudinal_2_fup)="Time To Peak Longitudinal 2"
label(cmrdata$time_to_peak_longitudinal_3_fup)="Time To Peak Longitudinal 3"
label(cmrdata$time_to_peak_longitudinal_4_fup)="Time To Peak Longitudinal 4"
label(cmrdata$time_to_peak_longitudinal_5_fup)="Time To Peak Longitudinal 5"
label(cmrdata$time_to_peak_longitudinal_6_fup)="Time To Peak Longitudinal 6"
label(cmrdata$time_to_peak_longitudinal_7_fup)="Time To Peak Longitudinal 7"
label(cmrdata$time_to_peak_longitudinal_8_fup)="Time To Peak Longitudinal 8"
label(cmrdata$time_to_peak_longitudinal_9_fup)="Time To Peak Longitudinal 9"
label(cmrdata$time_to_peak_longitudinal_10_fup)="Time To Peak Longitudinal 10"
label(cmrdata$time_to_peak_longitudinal_11_fup)="Time To Peak Longitudinal 11"
label(cmrdata$time_to_peak_longitudinal_12_fup)="Time To Peak Longitudinal 12"
label(cmrdata$time_to_peak_longitudinal_13_fup)="Time To Peak Longitudinal 13"
label(cmrdata$time_to_peak_longitudinal_14_fup)="Time To Peak Longitudinal 14"
label(cmrdata$time_to_peak_longitudinal_15_fup)="Time To Peak Longitudinal 15"
label(cmrdata$time_to_peak_longitudinal_16_fup)="Time To Peak Longitudinal 16"
label(cmrdata$basal_time_to_peak_longitudinal_fup)="Basal Time To Peak Longitudinal"
label(cmrdata$mid_time_to_peak_longitudinal_fup)="Mid Time To Peak Longitudinal"
label(cmrdata$apical_time_to_peak_longitudinal_fup)="Apical Time To Peak Longitudinal"
label(cmrdata$basal_peak_strain_longitudinal_fup)="Basal Peak Strain Longitudinal"
label(cmrdata$mid_peak_strain_longitudinal_fup)="Mid Peak Strain Longitudinal"
label(cmrdata$apical_peak_strain_longitudinal_fup)="Apical Peak Strain Longitudinal"
label(cmrdata$global_peak_systolic_strain_rate_radial_fup)="Global Peak Systolic Strain Rate Radial"
label(cmrdata$peak_systolic_strain_rate_radial_1_fup)="Peak Systolic Strain Rate Radial 1"
label(cmrdata$peak_systolic_strain_rate_radial_2_fup)="Peak Systolic Strain Rate Radial 2"
label(cmrdata$peak_systolic_strain_rate_radial_3_fup)="Peak Systolic Strain Rate Radial 3"
label(cmrdata$peak_systolic_strain_rate_radial_4_fup)="Peak Systolic Strain Rate Radial 4"
label(cmrdata$peak_systolic_strain_rate_radial_5_fup)="Peak Systolic Strain Rate Radial 5"
label(cmrdata$peak_systolic_strain_rate_radial_6_fup)="Peak Systolic Strain Rate Radial 6"
label(cmrdata$peak_systolic_strain_rate_radial_7_fup)="Peak Systolic Strain Rate Radial 7"
label(cmrdata$peak_systolic_strain_rate_radial_8_fup)="Peak Systolic Strain Rate Radial 8"
label(cmrdata$peak_systolic_strain_rate_radial_9_fup)="Peak Systolic Strain Rate Radial 9"
label(cmrdata$peak_systolic_strain_rate_radial_10_fup)="Peak Systolic Strain Rate Radial 10"
label(cmrdata$peak_systolic_strain_rate_radial_11_fup)="Peak Systolic Strain Rate Radial 11"
label(cmrdata$peak_systolic_strain_rate_radial_12_fup)="Peak Systolic Strain Rate Radial 12"
label(cmrdata$peak_systolic_strain_rate_radial_13_fup)="Peak Systolic Strain Rate Radial 13"
label(cmrdata$peak_systolic_strain_rate_radial_14_fup)="Peak Systolic Strain Rate Radial 14"
label(cmrdata$peak_systolic_strain_rate_radial_15_fup)="Peak Systolic Strain Rate Radial 15"
label(cmrdata$peak_systolic_strain_rate_radial_16_fup)="Peak Systolic Strain Rate Radial 16"
label(cmrdata$global_peak_systolic_strain_rate_circumferential_fup)="Global Peak Systolic Strain Rate Circumferential"
label(cmrdata$peak_systolic_strain_rate_circumferential_1_fup)="Peak Systolic Strain Rate Circumferential 1"
label(cmrdata$peak_systolic_strain_rate_circumferential_2_fup)="Peak Systolic Strain Rate Circumferential 2"
label(cmrdata$peak_systolic_strain_rate_circumferential_3_fup)="Peak Systolic Strain Rate Circumferential 3"
label(cmrdata$peak_systolic_strain_rate_circumferential_4_fup)="Peak Systolic Strain Rate Circumferential 4"
label(cmrdata$peak_systolic_strain_rate_circumferential_5_fup)="Peak Systolic Strain Rate Circumferential 5"
label(cmrdata$peak_systolic_strain_rate_circumferential_6_fup)="Peak Systolic Strain Rate Circumferential 6"
label(cmrdata$peak_systolic_strain_rate_circumferential_7_fup)="Peak Systolic Strain Rate Circumferential 7"
label(cmrdata$peak_systolic_strain_rate_circumferential_8_fup)="Peak Systolic Strain Rate Circumferential 8"
label(cmrdata$peak_systolic_strain_rate_circumferential_9_fup)="Peak Systolic Strain Rate Circumferential 9"
label(cmrdata$peak_systolic_strain_rate_circumferential_10_fup)="Peak Systolic Strain Rate Circumferential 10"
label(cmrdata$peak_systolic_strain_rate_circumferential_11_fup)="Peak Systolic Strain Rate Circumferential 11"
label(cmrdata$peak_systolic_strain_rate_circumferential_12_fup)="Peak Systolic Strain Rate Circumferential 12"
label(cmrdata$peak_systolic_strain_rate_circumferential_13_fup)="Peak Systolic Strain Rate Circumferential 13"
label(cmrdata$peak_systolic_strain_rate_circumferential_14_fup)="Peak Systolic Strain Rate Circumferential 14"
label(cmrdata$peak_systolic_strain_rate_circumferential_15_fup)="Peak Systolic Strain Rate Circumferential 15"
label(cmrdata$peak_systolic_strain_rate_circumferential_16_fup)="Peak Systolic Strain Rate Circumferential 16"
label(cmrdata$global_peak_systolic_strain_rate_longitudinal_fup)="Global Peak Systolic Strain Rate Longitudinal"
label(cmrdata$peak_systolic_strain_rate_longitudinal_1_fup)="Peak Systolic Strain Rate Longitudinal 1"
label(cmrdata$peak_systolic_strain_rate_longitudinal_2_fup)="Peak Systolic Strain Rate Longitudinal 2"
label(cmrdata$peak_systolic_strain_rate_longitudinal_3_fup)="Peak Systolic Strain Rate Longitudinal 3"
label(cmrdata$peak_systolic_strain_rate_longitudinal_4_fup)="Peak Systolic Strain Rate Longitudinal 4"
label(cmrdata$peak_systolic_strain_rate_longitudinal_5_fup)="Peak Systolic Strain Rate Longitudinal 5"
label(cmrdata$peak_systolic_strain_rate_longitudinal_6_fup)="Peak Systolic Strain Rate Longitudinal 6"
label(cmrdata$peak_systolic_strain_rate_longitudinal_7_fup)="Peak Systolic Strain Rate Longitudinal 7"
label(cmrdata$peak_systolic_strain_rate_longitudinal_8_fup)="Peak Systolic Strain Rate Longitudinal 8"
label(cmrdata$peak_systolic_strain_rate_longitudinal_9_fup)="Peak Systolic Strain Rate Longitudinal 9"
label(cmrdata$peak_systolic_strain_rate_longitudinal_10_fup)="Peak Systolic Strain Rate Longitudinal 10"
label(cmrdata$peak_systolic_strain_rate_longitudinal_11_fup)="Peak Systolic Strain Rate Longitudinal 11"
label(cmrdata$peak_systolic_strain_rate_longitudinal_12_fup)="Peak Systolic Strain Rate Longitudinal 12"
label(cmrdata$peak_systolic_strain_rate_longitudinal_13_fup)="Peak Systolic Strain Rate Longitudinal 13"
label(cmrdata$peak_systolic_strain_rate_longitudinal_14_fup)="Peak Systolic Strain Rate Longitudinal 14"
label(cmrdata$peak_systolic_strain_rate_longitudinal_15_fup)="Peak Systolic Strain Rate Longitudinal 15"
label(cmrdata$peak_systolic_strain_rate_longitudinal_16_fup)="Peak Systolic Strain Rate Longitudinal 16"
label(cmrdata$global_peak_systolic_velocity_radial_fup)="Global Peak Systolic Velocity Radial"
label(cmrdata$peak_systolic_velocity_radial_1_fup)="Peak Systolic Velocity Radial 1"
label(cmrdata$peak_systolic_velocity_radial_2_fup)="Peak Systolic Velocity Radial 2"
label(cmrdata$peak_systolic_velocity_radial_3_fup)="Peak Systolic Velocity Radial 3"
label(cmrdata$peak_systolic_velocity_radial_4_fup)="Peak Systolic Velocity Radial 4"
label(cmrdata$peak_systolic_velocity_radial_5_fup)="Peak Systolic Velocity Radial 5"
label(cmrdata$peak_systolic_velocity_radial_6_fup)="Peak Systolic Velocity Radial 6"
label(cmrdata$peak_systolic_velocity_radial_7_fup)="Peak Systolic Velocity Radial 7"
label(cmrdata$peak_systolic_velocity_radial_8_fup)="Peak Systolic Velocity Radial 8"
label(cmrdata$peak_systolic_velocity_radial_9_fup)="Peak Systolic Velocity Radial 9"
label(cmrdata$peak_systolic_velocity_radial_10_fup)="Peak Systolic Velocity Radial 10"
label(cmrdata$peak_systolic_velocity_radial_11_fup)="Peak Systolic Velocity Radial 11"
label(cmrdata$peak_systolic_velocity_radial_12_fup)="Peak Systolic Velocity Radial 12"
label(cmrdata$peak_systolic_velocity_radial_13_fup)="Peak Systolic Velocity Radial 13"
label(cmrdata$peak_systolic_velocity_radial_14_fup)="Peak Systolic Velocity Radial 14"
label(cmrdata$peak_systolic_velocity_radial_15_fup)="Peak Systolic Velocity Radial 15"
label(cmrdata$peak_systolic_velocity_radial_16_fup)="Peak Systolic Velocity Radial 16"
label(cmrdata$global_peak_systolic_velocity_circumferential_fup)="Global Peak Systolic Velocity Circumferential"
label(cmrdata$peak_systolic_velocity_circumferential_1_fup)="Peak Systolic Velocity Circumferential 1"
label(cmrdata$peak_systolic_velocity_circumferential_2_fup)="Peak Systolic Velocity Circumferential 2"
label(cmrdata$peak_systolic_velocity_circumferential_3_fup)="Peak Systolic Velocity Circumferential 3"
label(cmrdata$peak_systolic_velocity_circumferential_4_fup)="Peak Systolic Velocity Circumferential 4"
label(cmrdata$peak_systolic_velocity_circumferential_5_fup)="Peak Systolic Velocity Circumferential 5"
label(cmrdata$peak_systolic_velocity_circumferential_6_fup)="Peak Systolic Velocity Circumferential 6"
label(cmrdata$peak_systolic_velocity_circumferential_7_fup)="Peak Systolic Velocity Circumferential 7"
label(cmrdata$peak_systolic_velocity_circumferential_8_fup)="Peak Systolic Velocity Circumferential 8"
label(cmrdata$peak_systolic_velocity_circumferential_9_fup)="Peak Systolic Velocity Circumferential 9"
label(cmrdata$peak_systolic_velocity_circumferential_10_fup)="Peak Systolic Velocity Circumferential 10"
label(cmrdata$peak_systolic_velocity_circumferential_11_fup)="Peak Systolic Velocity Circumferential 11"
label(cmrdata$peak_systolic_velocity_circumferential_12_fup)="Peak Systolic Velocity Circumferential 12"
label(cmrdata$peak_systolic_velocity_circumferential_13_fup)="Peak Systolic Velocity Circumferential 13"
label(cmrdata$peak_systolic_velocity_circumferential_14_fup)="Peak Systolic Velocity Circumferential 14"
label(cmrdata$peak_systolic_velocity_circumferential_15_fup)="Peak Systolic Velocity Circumferential 15"
label(cmrdata$peak_systolic_velocity_circumferential_16_fup)="Peak Systolic Velocity Circumferential 16"
label(cmrdata$global_peak_systolic_velocity_longitudinal_fup)="Global Peak Systolic Velocity Longitudinal"
label(cmrdata$peak_systolic_velocity_longitudinal_1_fup)="Peak Systolic Velocity Longitudinal 1"
label(cmrdata$peak_systolic_velocity_longitudinal_2_fup)="Peak Systolic Velocity Longitudinal 2"
label(cmrdata$peak_systolic_velocity_longitudinal_3_fup)="Peak Systolic Velocity Longitudinal 3"
label(cmrdata$peak_systolic_velocity_longitudinal_4_fup)="Peak Systolic Velocity Longitudinal 4"
label(cmrdata$peak_systolic_velocity_longitudinal_5_fup)="Peak Systolic Velocity Longitudinal 5"
label(cmrdata$peak_systolic_velocity_longitudinal_6_fup)="Peak Systolic Velocity Longitudinal 6"
label(cmrdata$peak_systolic_velocity_longitudinal_7_fup)="Peak Systolic Velocity Longitudinal 7"
label(cmrdata$peak_systolic_velocity_longitudinal_8_fup)="Peak Systolic Velocity Longitudinal 8"
label(cmrdata$peak_systolic_velocity_longitudinal_9_fup)="Peak Systolic Velocity Longitudinal 9"
label(cmrdata$peak_systolic_velocity_longitudinal_10_fup)="Peak Systolic Velocity Longitudinal 10"
label(cmrdata$peak_systolic_velocity_longitudinal_11_fup)="Peak Systolic Velocity Longitudinal 11"
label(cmrdata$peak_systolic_velocity_longitudinal_12_fup)="Peak Systolic Velocity Longitudinal 12"
label(cmrdata$peak_systolic_velocity_longitudinal_13_fup)="Peak Systolic Velocity Longitudinal 13"
label(cmrdata$peak_systolic_velocity_longitudinal_14_fup)="Peak Systolic Velocity Longitudinal 14"
label(cmrdata$peak_systolic_velocity_longitudinal_15_fup)="Peak Systolic Velocity Longitudinal 15"
label(cmrdata$peak_systolic_velocity_longitudinal_16_fup)="Peak Systolic Velocity Longitudinal 16"
label(cmrdata$followup_cmr_strain_complete)="Complete?"
label(cmrdata$death)="Death"
label(cmrdata$date_death)="Date of death"
label(cmrdata$death_fup)="Follow-up time to Death"
label(cmrdata$cause_of_death)="Cause of death"
label(cmrdata$new_admission_post_cmr)="Any Admission after first CMR: - arrhythmias - syncope/presyncope - ablation of VT/PVC"
label(cmrdata$new_admission_post_cmr_date)="Admission after first CMR Date"
label(cmrdata$new_admission_post_cmr_text)="New Admission after first CMR (free text)"
label(cmrdata$va_fup)="Any ventricular arrhythmia at follow-up"
label(cmrdata$va_fup_date)="Index VA event date"
label(cmrdata$icd_fup)="ICD implantation at follow-up"
label(cmrdata$icd_fup_date)="ICD implantation date"
label(cmrdata$hotphase_admission)="Hot-phase admission"
label(cmrdata$hotphase_adm_date)="Hot-phase admission Date"
label(cmrdata$events_complete)="Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
cmrdata$gender.factor = factor(cmrdata$gender,levels=c("1","2"))
cmrdata$patient_data_complete.factor = factor(cmrdata$patient_data_complete,levels=c("0","1","2"))
cmrdata$patient_ethnicity.factor = factor(cmrdata$patient_ethnicity,levels=c("1","2","3"))
cmrdata$phenotype.factor = factor(cmrdata$phenotype,levels=c("1","2"))
cmrdata$syncope.factor = factor(cmrdata$syncope,levels=c("1","0"))
cmrdata$pvc.factor = factor(cmrdata$pvc,levels=c("1","0"))
cmrdata$frequent_pvc.factor = factor(cmrdata$frequent_pvc,levels=c("1","0"))
cmrdata$va.factor = factor(cmrdata$va,levels=c("0","1","2","3"))
cmrdata$atrial_fibrillation.factor = factor(cmrdata$atrial_fibrillation,levels=c("1","2","3"))
cmrdata$atrial_flutter.factor = factor(cmrdata$atrial_flutter,levels=c("1","2","3"))
cmrdata$pm.factor = factor(cmrdata$pm,levels=c("1","0"))
cmrdata$crt.factor = factor(cmrdata$crt,levels=c("1","0"))
cmrdata$icd.factor = factor(cmrdata$icd,levels=c("1","2","3"))
cmrdata$baseline_complete.factor = factor(cmrdata$baseline_complete,levels=c("0","1","2"))
cmrdata$proband.factor = factor(cmrdata$proband,levels=c("1","0"))
cmrdata$firstdegree.factor = factor(cmrdata$firstdegree,levels=c("1","0"))
cmrdata$first_degree_type.factor = factor(cmrdata$first_degree_type,levels=c("1","2","3","4","5"))
cmrdata$gene.factor = factor(cmrdata$gene,levels=c("1","2","3","4","5","6","7"))
cmrdata$variant_type.factor = factor(cmrdata$variant_type,levels=c("1","2"))
cmrdata$other_variant_type.factor = factor(cmrdata$other_variant_type,levels=c("1","2"))
cmrdata$genetics_complete.factor = factor(cmrdata$genetics_complete,levels=c("0","1","2"))
cmrdata$t_wave_inversion___1.factor = factor(cmrdata$t_wave_inversion___1,levels=c("0","1"))
cmrdata$t_wave_inversion___2.factor = factor(cmrdata$t_wave_inversion___2,levels=c("0","1"))
cmrdata$t_wave_inversion___3.factor = factor(cmrdata$t_wave_inversion___3,levels=c("0","1"))
cmrdata$rbbb.factor = factor(cmrdata$rbbb,levels=c("1","0"))
cmrdata$epsilon_wave.factor = factor(cmrdata$epsilon_wave,levels=c("1","0"))
cmrdata$qrs_prolongation.factor = factor(cmrdata$qrs_prolongation,levels=c("1","0"))
cmrdata$baseline_ecg_complete.factor = factor(cmrdata$baseline_ecg_complete,levels=c("0","1","2"))
cmrdata$cmr_involvement.factor = factor(cmrdata$cmr_involvement,levels=c("1","2","3","4"))
cmrdata$akinesia_cmr.factor = factor(cmrdata$akinesia_cmr,levels=c("1","0"))
cmrdata$akinesia_seg_cmr___1.factor = factor(cmrdata$akinesia_seg_cmr___1,levels=c("0","1"))
cmrdata$akinesia_seg_cmr___2.factor = factor(cmrdata$akinesia_seg_cmr___2,levels=c("0","1"))
cmrdata$akinesia_seg_cmr___3.factor = factor(cmrdata$akinesia_seg_cmr___3,levels=c("0","1"))
cmrdata$akinesia_seg_cmr___4.factor = factor(cmrdata$akinesia_seg_cmr___4,levels=c("0","1"))
cmrdata$akinesia_seg_cmr___5.factor = factor(cmrdata$akinesia_seg_cmr___5,levels=c("0","1"))
cmrdata$akinesia_seg_cmr___6.factor = factor(cmrdata$akinesia_seg_cmr___6,levels=c("0","1"))
cmrdata$akinesia_seg_cmr___7.factor = factor(cmrdata$akinesia_seg_cmr___7,levels=c("0","1"))
cmrdata$akinesia_seg_cmr___8.factor = factor(cmrdata$akinesia_seg_cmr___8,levels=c("0","1"))
cmrdata$akinesia_seg_cmr___9.factor = factor(cmrdata$akinesia_seg_cmr___9,levels=c("0","1"))
cmrdata$akinesia_seg_cmr___10.factor = factor(cmrdata$akinesia_seg_cmr___10,levels=c("0","1"))
cmrdata$akinesia_seg_cmr___11.factor = factor(cmrdata$akinesia_seg_cmr___11,levels=c("0","1"))
cmrdata$akinesia_seg_cmr___12.factor = factor(cmrdata$akinesia_seg_cmr___12,levels=c("0","1"))
cmrdata$akinesia_seg_cmr___13.factor = factor(cmrdata$akinesia_seg_cmr___13,levels=c("0","1"))
cmrdata$akinesia_seg_cmr___14.factor = factor(cmrdata$akinesia_seg_cmr___14,levels=c("0","1"))
cmrdata$akinesia_seg_cmr___15.factor = factor(cmrdata$akinesia_seg_cmr___15,levels=c("0","1"))
cmrdata$akinesia_seg_cmr___16.factor = factor(cmrdata$akinesia_seg_cmr___16,levels=c("0","1"))
cmrdata$akinesia_seg_cmr___17.factor = factor(cmrdata$akinesia_seg_cmr___17,levels=c("0","1"))
cmrdata$hypokinesia_cmr.factor = factor(cmrdata$hypokinesia_cmr,levels=c("1","0"))
cmrdata$hypokinesia_seg_cmr___1.factor = factor(cmrdata$hypokinesia_seg_cmr___1,levels=c("0","1"))
cmrdata$hypokinesia_seg_cmr___2.factor = factor(cmrdata$hypokinesia_seg_cmr___2,levels=c("0","1"))
cmrdata$hypokinesia_seg_cmr___3.factor = factor(cmrdata$hypokinesia_seg_cmr___3,levels=c("0","1"))
cmrdata$hypokinesia_seg_cmr___4.factor = factor(cmrdata$hypokinesia_seg_cmr___4,levels=c("0","1"))
cmrdata$hypokinesia_seg_cmr___5.factor = factor(cmrdata$hypokinesia_seg_cmr___5,levels=c("0","1"))
cmrdata$hypokinesia_seg_cmr___6.factor = factor(cmrdata$hypokinesia_seg_cmr___6,levels=c("0","1"))
cmrdata$hypokinesia_seg_cmr___7.factor = factor(cmrdata$hypokinesia_seg_cmr___7,levels=c("0","1"))
cmrdata$hypokinesia_seg_cmr___8.factor = factor(cmrdata$hypokinesia_seg_cmr___8,levels=c("0","1"))
cmrdata$hypokinesia_seg_cmr___9.factor = factor(cmrdata$hypokinesia_seg_cmr___9,levels=c("0","1"))
cmrdata$hypokinesia_seg_cmr___10.factor = factor(cmrdata$hypokinesia_seg_cmr___10,levels=c("0","1"))
cmrdata$hypokinesia_seg_cmr___11.factor = factor(cmrdata$hypokinesia_seg_cmr___11,levels=c("0","1"))
cmrdata$hypokinesia_seg_cmr___12.factor = factor(cmrdata$hypokinesia_seg_cmr___12,levels=c("0","1"))
cmrdata$hypokinesia_seg_cmr___13.factor = factor(cmrdata$hypokinesia_seg_cmr___13,levels=c("0","1"))
cmrdata$hypokinesia_seg_cmr___14.factor = factor(cmrdata$hypokinesia_seg_cmr___14,levels=c("0","1"))
cmrdata$hypokinesia_seg_cmr___15.factor = factor(cmrdata$hypokinesia_seg_cmr___15,levels=c("0","1"))
cmrdata$hypokinesia_seg_cmr___16.factor = factor(cmrdata$hypokinesia_seg_cmr___16,levels=c("0","1"))
cmrdata$hypokinesia_seg_cmr___17.factor = factor(cmrdata$hypokinesia_seg_cmr___17,levels=c("0","1"))
cmrdata$dyskinesia_cmr.factor = factor(cmrdata$dyskinesia_cmr,levels=c("1","0"))
cmrdata$dyskinesia_seg_cmr___1.factor = factor(cmrdata$dyskinesia_seg_cmr___1,levels=c("0","1"))
cmrdata$dyskinesia_seg_cmr___2.factor = factor(cmrdata$dyskinesia_seg_cmr___2,levels=c("0","1"))
cmrdata$dyskinesia_seg_cmr___3.factor = factor(cmrdata$dyskinesia_seg_cmr___3,levels=c("0","1"))
cmrdata$dyskinesia_seg_cmr___4.factor = factor(cmrdata$dyskinesia_seg_cmr___4,levels=c("0","1"))
cmrdata$dyskinesia_seg_cmr___5.factor = factor(cmrdata$dyskinesia_seg_cmr___5,levels=c("0","1"))
cmrdata$dyskinesia_seg_cmr___6.factor = factor(cmrdata$dyskinesia_seg_cmr___6,levels=c("0","1"))
cmrdata$dyskinesia_seg_cmr___7.factor = factor(cmrdata$dyskinesia_seg_cmr___7,levels=c("0","1"))
cmrdata$dyskinesia_seg_cmr___8.factor = factor(cmrdata$dyskinesia_seg_cmr___8,levels=c("0","1"))
cmrdata$dyskinesia_seg_cmr___9.factor = factor(cmrdata$dyskinesia_seg_cmr___9,levels=c("0","1"))
cmrdata$dyskinesia_seg_cmr___10.factor = factor(cmrdata$dyskinesia_seg_cmr___10,levels=c("0","1"))
cmrdata$dyskinesia_seg_cmr___11.factor = factor(cmrdata$dyskinesia_seg_cmr___11,levels=c("0","1"))
cmrdata$dyskinesia_seg_cmr___12.factor = factor(cmrdata$dyskinesia_seg_cmr___12,levels=c("0","1"))
cmrdata$dyskinesia_seg_cmr___13.factor = factor(cmrdata$dyskinesia_seg_cmr___13,levels=c("0","1"))
cmrdata$dyskinesia_seg_cmr___14.factor = factor(cmrdata$dyskinesia_seg_cmr___14,levels=c("0","1"))
cmrdata$dyskinesia_seg_cmr___15.factor = factor(cmrdata$dyskinesia_seg_cmr___15,levels=c("0","1"))
cmrdata$dyskinesia_seg_cmr___16.factor = factor(cmrdata$dyskinesia_seg_cmr___16,levels=c("0","1"))
cmrdata$dyskinesia_seg_cmr___17.factor = factor(cmrdata$dyskinesia_seg_cmr___17,levels=c("0","1"))
cmrdata$aneurysm_cmr.factor = factor(cmrdata$aneurysm_cmr,levels=c("1","0"))
cmrdata$aneurysm_seg_cmr___1.factor = factor(cmrdata$aneurysm_seg_cmr___1,levels=c("0","1"))
cmrdata$aneurysm_seg_cmr___2.factor = factor(cmrdata$aneurysm_seg_cmr___2,levels=c("0","1"))
cmrdata$aneurysm_seg_cmr___3.factor = factor(cmrdata$aneurysm_seg_cmr___3,levels=c("0","1"))
cmrdata$aneurysm_seg_cmr___4.factor = factor(cmrdata$aneurysm_seg_cmr___4,levels=c("0","1"))
cmrdata$aneurysm_seg_cmr___5.factor = factor(cmrdata$aneurysm_seg_cmr___5,levels=c("0","1"))
cmrdata$aneurysm_seg_cmr___6.factor = factor(cmrdata$aneurysm_seg_cmr___6,levels=c("0","1"))
cmrdata$aneurysm_seg_cmr___7.factor = factor(cmrdata$aneurysm_seg_cmr___7,levels=c("0","1"))
cmrdata$aneurysm_seg_cmr___8.factor = factor(cmrdata$aneurysm_seg_cmr___8,levels=c("0","1"))
cmrdata$aneurysm_seg_cmr___9.factor = factor(cmrdata$aneurysm_seg_cmr___9,levels=c("0","1"))
cmrdata$aneurysm_seg_cmr___10.factor = factor(cmrdata$aneurysm_seg_cmr___10,levels=c("0","1"))
cmrdata$aneurysm_seg_cmr___11.factor = factor(cmrdata$aneurysm_seg_cmr___11,levels=c("0","1"))
cmrdata$aneurysm_seg_cmr___12.factor = factor(cmrdata$aneurysm_seg_cmr___12,levels=c("0","1"))
cmrdata$aneurysm_seg_cmr___13.factor = factor(cmrdata$aneurysm_seg_cmr___13,levels=c("0","1"))
cmrdata$aneurysm_seg_cmr___14.factor = factor(cmrdata$aneurysm_seg_cmr___14,levels=c("0","1"))
cmrdata$aneurysm_seg_cmr___15.factor = factor(cmrdata$aneurysm_seg_cmr___15,levels=c("0","1"))
cmrdata$aneurysm_seg_cmr___16.factor = factor(cmrdata$aneurysm_seg_cmr___16,levels=c("0","1"))
cmrdata$aneurysm_seg_cmr___17.factor = factor(cmrdata$aneurysm_seg_cmr___17,levels=c("0","1"))
cmrdata$thrombus_cmr.factor = factor(cmrdata$thrombus_cmr,levels=c("1","0"))
cmrdata$aneurysm_rv_cmr.factor = factor(cmrdata$aneurysm_rv_cmr,levels=c("1","0"))
cmrdata$rvwma_cmr.factor = factor(cmrdata$rvwma_cmr,levels=c("1","0"))
cmrdata$rvwma1___2.factor = factor(cmrdata$rvwma1___2,levels=c("0","1"))
cmrdata$rvwma1___3.factor = factor(cmrdata$rvwma1___3,levels=c("0","1"))
cmrdata$rvwma1___4.factor = factor(cmrdata$rvwma1___4,levels=c("0","1"))
cmrdata$rvwma2___2.factor = factor(cmrdata$rvwma2___2,levels=c("0","1"))
cmrdata$rvwma2___3.factor = factor(cmrdata$rvwma2___3,levels=c("0","1"))
cmrdata$rvwma2___4.factor = factor(cmrdata$rvwma2___4,levels=c("0","1"))
cmrdata$rvwma3___2.factor = factor(cmrdata$rvwma3___2,levels=c("0","1"))
cmrdata$rvwma3___3.factor = factor(cmrdata$rvwma3___3,levels=c("0","1"))
cmrdata$rvwma3___4.factor = factor(cmrdata$rvwma3___4,levels=c("0","1"))
cmrdata$rvwma4___2.factor = factor(cmrdata$rvwma4___2,levels=c("0","1"))
cmrdata$rvwma4___3.factor = factor(cmrdata$rvwma4___3,levels=c("0","1"))
cmrdata$rvwma4___4.factor = factor(cmrdata$rvwma4___4,levels=c("0","1"))
cmrdata$rvwma5___2.factor = factor(cmrdata$rvwma5___2,levels=c("0","1"))
cmrdata$rvwma5___3.factor = factor(cmrdata$rvwma5___3,levels=c("0","1"))
cmrdata$rvwma5___4.factor = factor(cmrdata$rvwma5___4,levels=c("0","1"))
cmrdata$rvwma6___2.factor = factor(cmrdata$rvwma6___2,levels=c("0","1"))
cmrdata$rvwma6___3.factor = factor(cmrdata$rvwma6___3,levels=c("0","1"))
cmrdata$rvwma6___4.factor = factor(cmrdata$rvwma6___4,levels=c("0","1"))
cmrdata$rvwma7___2.factor = factor(cmrdata$rvwma7___2,levels=c("0","1"))
cmrdata$rvwma7___3.factor = factor(cmrdata$rvwma7___3,levels=c("0","1"))
cmrdata$rvwma7___4.factor = factor(cmrdata$rvwma7___4,levels=c("0","1"))
cmrdata$rvwma8___2.factor = factor(cmrdata$rvwma8___2,levels=c("0","1"))
cmrdata$rvwma8___3.factor = factor(cmrdata$rvwma8___3,levels=c("0","1"))
cmrdata$rvwma8___4.factor = factor(cmrdata$rvwma8___4,levels=c("0","1"))
cmrdata$fatinf_cmr.factor = factor(cmrdata$fatinf_cmr,levels=c("1","0"))
cmrdata$fat_visualized_in___1.factor = factor(cmrdata$fat_visualized_in___1,levels=c("0","1"))
cmrdata$fat_visualized_in___2.factor = factor(cmrdata$fat_visualized_in___2,levels=c("0","1"))
cmrdata$fat_visualized_in___3.factor = factor(cmrdata$fat_visualized_in___3,levels=c("0","1"))
cmrdata$fat_visualized_in___4.factor = factor(cmrdata$fat_visualized_in___4,levels=c("0","1"))
cmrdata$fat1___1.factor = factor(cmrdata$fat1___1,levels=c("0","1"))
cmrdata$fat1___2.factor = factor(cmrdata$fat1___2,levels=c("0","1"))
cmrdata$fat1___3.factor = factor(cmrdata$fat1___3,levels=c("0","1"))
cmrdata$fat1___4.factor = factor(cmrdata$fat1___4,levels=c("0","1"))
cmrdata$fat1___5.factor = factor(cmrdata$fat1___5,levels=c("0","1"))
cmrdata$fat2___1.factor = factor(cmrdata$fat2___1,levels=c("0","1"))
cmrdata$fat2___2.factor = factor(cmrdata$fat2___2,levels=c("0","1"))
cmrdata$fat2___3.factor = factor(cmrdata$fat2___3,levels=c("0","1"))
cmrdata$fat2___4.factor = factor(cmrdata$fat2___4,levels=c("0","1"))
cmrdata$fat2___5.factor = factor(cmrdata$fat2___5,levels=c("0","1"))
cmrdata$fat3___1.factor = factor(cmrdata$fat3___1,levels=c("0","1"))
cmrdata$fat3___2.factor = factor(cmrdata$fat3___2,levels=c("0","1"))
cmrdata$fat3___3.factor = factor(cmrdata$fat3___3,levels=c("0","1"))
cmrdata$fat3___4.factor = factor(cmrdata$fat3___4,levels=c("0","1"))
cmrdata$fat3___5.factor = factor(cmrdata$fat3___5,levels=c("0","1"))
cmrdata$fat4___1.factor = factor(cmrdata$fat4___1,levels=c("0","1"))
cmrdata$fat4___2.factor = factor(cmrdata$fat4___2,levels=c("0","1"))
cmrdata$fat4___3.factor = factor(cmrdata$fat4___3,levels=c("0","1"))
cmrdata$fat4___4.factor = factor(cmrdata$fat4___4,levels=c("0","1"))
cmrdata$fat4___5.factor = factor(cmrdata$fat4___5,levels=c("0","1"))
cmrdata$fat5___1.factor = factor(cmrdata$fat5___1,levels=c("0","1"))
cmrdata$fat5___2.factor = factor(cmrdata$fat5___2,levels=c("0","1"))
cmrdata$fat5___3.factor = factor(cmrdata$fat5___3,levels=c("0","1"))
cmrdata$fat5___4.factor = factor(cmrdata$fat5___4,levels=c("0","1"))
cmrdata$fat5___5.factor = factor(cmrdata$fat5___5,levels=c("0","1"))
cmrdata$fat6___1.factor = factor(cmrdata$fat6___1,levels=c("0","1"))
cmrdata$fat6___2.factor = factor(cmrdata$fat6___2,levels=c("0","1"))
cmrdata$fat6___3.factor = factor(cmrdata$fat6___3,levels=c("0","1"))
cmrdata$fat6___4.factor = factor(cmrdata$fat6___4,levels=c("0","1"))
cmrdata$fat6___5.factor = factor(cmrdata$fat6___5,levels=c("0","1"))
cmrdata$fat7___1.factor = factor(cmrdata$fat7___1,levels=c("0","1"))
cmrdata$fat7___2.factor = factor(cmrdata$fat7___2,levels=c("0","1"))
cmrdata$fat7___3.factor = factor(cmrdata$fat7___3,levels=c("0","1"))
cmrdata$fat7___4.factor = factor(cmrdata$fat7___4,levels=c("0","1"))
cmrdata$fat7___5.factor = factor(cmrdata$fat7___5,levels=c("0","1"))
cmrdata$fat8___1.factor = factor(cmrdata$fat8___1,levels=c("0","1"))
cmrdata$fat8___2.factor = factor(cmrdata$fat8___2,levels=c("0","1"))
cmrdata$fat8___3.factor = factor(cmrdata$fat8___3,levels=c("0","1"))
cmrdata$fat8___4.factor = factor(cmrdata$fat8___4,levels=c("0","1"))
cmrdata$fat8___5.factor = factor(cmrdata$fat8___5,levels=c("0","1"))
cmrdata$fat9___1.factor = factor(cmrdata$fat9___1,levels=c("0","1"))
cmrdata$fat9___2.factor = factor(cmrdata$fat9___2,levels=c("0","1"))
cmrdata$fat9___3.factor = factor(cmrdata$fat9___3,levels=c("0","1"))
cmrdata$fat9___4.factor = factor(cmrdata$fat9___4,levels=c("0","1"))
cmrdata$fat9___5.factor = factor(cmrdata$fat9___5,levels=c("0","1"))
cmrdata$fat10___1.factor = factor(cmrdata$fat10___1,levels=c("0","1"))
cmrdata$fat10___2.factor = factor(cmrdata$fat10___2,levels=c("0","1"))
cmrdata$fat10___3.factor = factor(cmrdata$fat10___3,levels=c("0","1"))
cmrdata$fat10___4.factor = factor(cmrdata$fat10___4,levels=c("0","1"))
cmrdata$fat10___5.factor = factor(cmrdata$fat10___5,levels=c("0","1"))
cmrdata$fat11___1.factor = factor(cmrdata$fat11___1,levels=c("0","1"))
cmrdata$fat11___2.factor = factor(cmrdata$fat11___2,levels=c("0","1"))
cmrdata$fat11___3.factor = factor(cmrdata$fat11___3,levels=c("0","1"))
cmrdata$fat11___4.factor = factor(cmrdata$fat11___4,levels=c("0","1"))
cmrdata$fat11___5.factor = factor(cmrdata$fat11___5,levels=c("0","1"))
cmrdata$fat12___1.factor = factor(cmrdata$fat12___1,levels=c("0","1"))
cmrdata$fat12___2.factor = factor(cmrdata$fat12___2,levels=c("0","1"))
cmrdata$fat12___3.factor = factor(cmrdata$fat12___3,levels=c("0","1"))
cmrdata$fat12___4.factor = factor(cmrdata$fat12___4,levels=c("0","1"))
cmrdata$fat12___5.factor = factor(cmrdata$fat12___5,levels=c("0","1"))
cmrdata$fat13___1.factor = factor(cmrdata$fat13___1,levels=c("0","1"))
cmrdata$fat13___2.factor = factor(cmrdata$fat13___2,levels=c("0","1"))
cmrdata$fat13___3.factor = factor(cmrdata$fat13___3,levels=c("0","1"))
cmrdata$fat13___4.factor = factor(cmrdata$fat13___4,levels=c("0","1"))
cmrdata$fat13___5.factor = factor(cmrdata$fat13___5,levels=c("0","1"))
cmrdata$fat14___1.factor = factor(cmrdata$fat14___1,levels=c("0","1"))
cmrdata$fat14___2.factor = factor(cmrdata$fat14___2,levels=c("0","1"))
cmrdata$fat14___3.factor = factor(cmrdata$fat14___3,levels=c("0","1"))
cmrdata$fat14___4.factor = factor(cmrdata$fat14___4,levels=c("0","1"))
cmrdata$fat14___5.factor = factor(cmrdata$fat14___5,levels=c("0","1"))
cmrdata$fat15___1.factor = factor(cmrdata$fat15___1,levels=c("0","1"))
cmrdata$fat15___2.factor = factor(cmrdata$fat15___2,levels=c("0","1"))
cmrdata$fat15___3.factor = factor(cmrdata$fat15___3,levels=c("0","1"))
cmrdata$fat15___4.factor = factor(cmrdata$fat15___4,levels=c("0","1"))
cmrdata$fat15___5.factor = factor(cmrdata$fat15___5,levels=c("0","1"))
cmrdata$fat16___1.factor = factor(cmrdata$fat16___1,levels=c("0","1"))
cmrdata$fat16___2.factor = factor(cmrdata$fat16___2,levels=c("0","1"))
cmrdata$fat16___3.factor = factor(cmrdata$fat16___3,levels=c("0","1"))
cmrdata$fat16___4.factor = factor(cmrdata$fat16___4,levels=c("0","1"))
cmrdata$fat16___5.factor = factor(cmrdata$fat16___5,levels=c("0","1"))
cmrdata$fat17___1.factor = factor(cmrdata$fat17___1,levels=c("0","1"))
cmrdata$fat17___2.factor = factor(cmrdata$fat17___2,levels=c("0","1"))
cmrdata$fat17___3.factor = factor(cmrdata$fat17___3,levels=c("0","1"))
cmrdata$fat17___4.factor = factor(cmrdata$fat17___4,levels=c("0","1"))
cmrdata$fat17___5.factor = factor(cmrdata$fat17___5,levels=c("0","1"))
cmrdata$rvfat_cmr.factor = factor(cmrdata$rvfat_cmr,levels=c("1","0"))
cmrdata$rvfat_location_cmr___1.factor = factor(cmrdata$rvfat_location_cmr___1,levels=c("0","1"))
cmrdata$rvfat_location_cmr___2.factor = factor(cmrdata$rvfat_location_cmr___2,levels=c("0","1"))
cmrdata$rvfat_location_cmr___3.factor = factor(cmrdata$rvfat_location_cmr___3,levels=c("0","1"))
cmrdata$rvfat_location_cmr___4.factor = factor(cmrdata$rvfat_location_cmr___4,levels=c("0","1"))
cmrdata$rvfat_location_cmr___5.factor = factor(cmrdata$rvfat_location_cmr___5,levels=c("0","1"))
cmrdata$rvfat_location_cmr___6.factor = factor(cmrdata$rvfat_location_cmr___6,levels=c("0","1"))
cmrdata$rvfat_location_cmr___7.factor = factor(cmrdata$rvfat_location_cmr___7,levels=c("0","1"))
cmrdata$rvfat_location_cmr___8.factor = factor(cmrdata$rvfat_location_cmr___8,levels=c("0","1"))
cmrdata$lge_cmr.factor = factor(cmrdata$lge_cmr,levels=c("1","0"))
cmrdata$ring_lge_cmr.factor = factor(cmrdata$ring_lge_cmr,levels=c("1","0"))
cmrdata$lge1___1.factor = factor(cmrdata$lge1___1,levels=c("0","1"))
cmrdata$lge1___2.factor = factor(cmrdata$lge1___2,levels=c("0","1"))
cmrdata$lge1___3.factor = factor(cmrdata$lge1___3,levels=c("0","1"))
cmrdata$lge1___4.factor = factor(cmrdata$lge1___4,levels=c("0","1"))
cmrdata$lge1___5.factor = factor(cmrdata$lge1___5,levels=c("0","1"))
cmrdata$lge2___1.factor = factor(cmrdata$lge2___1,levels=c("0","1"))
cmrdata$lge2___2.factor = factor(cmrdata$lge2___2,levels=c("0","1"))
cmrdata$lge2___3.factor = factor(cmrdata$lge2___3,levels=c("0","1"))
cmrdata$lge2___4.factor = factor(cmrdata$lge2___4,levels=c("0","1"))
cmrdata$lge2___5.factor = factor(cmrdata$lge2___5,levels=c("0","1"))
cmrdata$lge3___1.factor = factor(cmrdata$lge3___1,levels=c("0","1"))
cmrdata$lge3___2.factor = factor(cmrdata$lge3___2,levels=c("0","1"))
cmrdata$lge3___3.factor = factor(cmrdata$lge3___3,levels=c("0","1"))
cmrdata$lge3___4.factor = factor(cmrdata$lge3___4,levels=c("0","1"))
cmrdata$lge3___5.factor = factor(cmrdata$lge3___5,levels=c("0","1"))
cmrdata$lge4___1.factor = factor(cmrdata$lge4___1,levels=c("0","1"))
cmrdata$lge4___2.factor = factor(cmrdata$lge4___2,levels=c("0","1"))
cmrdata$lge4___3.factor = factor(cmrdata$lge4___3,levels=c("0","1"))
cmrdata$lge4___4.factor = factor(cmrdata$lge4___4,levels=c("0","1"))
cmrdata$lge4___5.factor = factor(cmrdata$lge4___5,levels=c("0","1"))
cmrdata$lge5___1.factor = factor(cmrdata$lge5___1,levels=c("0","1"))
cmrdata$lge5___2.factor = factor(cmrdata$lge5___2,levels=c("0","1"))
cmrdata$lge5___3.factor = factor(cmrdata$lge5___3,levels=c("0","1"))
cmrdata$lge5___4.factor = factor(cmrdata$lge5___4,levels=c("0","1"))
cmrdata$lge5___5.factor = factor(cmrdata$lge5___5,levels=c("0","1"))
cmrdata$lge6___1.factor = factor(cmrdata$lge6___1,levels=c("0","1"))
cmrdata$lge6___2.factor = factor(cmrdata$lge6___2,levels=c("0","1"))
cmrdata$lge6___3.factor = factor(cmrdata$lge6___3,levels=c("0","1"))
cmrdata$lge6___4.factor = factor(cmrdata$lge6___4,levels=c("0","1"))
cmrdata$lge6___5.factor = factor(cmrdata$lge6___5,levels=c("0","1"))
cmrdata$lge7___1.factor = factor(cmrdata$lge7___1,levels=c("0","1"))
cmrdata$lge7___2.factor = factor(cmrdata$lge7___2,levels=c("0","1"))
cmrdata$lge7___3.factor = factor(cmrdata$lge7___3,levels=c("0","1"))
cmrdata$lge7___4.factor = factor(cmrdata$lge7___4,levels=c("0","1"))
cmrdata$lge7___5.factor = factor(cmrdata$lge7___5,levels=c("0","1"))
cmrdata$lge8___1.factor = factor(cmrdata$lge8___1,levels=c("0","1"))
cmrdata$lge8___2.factor = factor(cmrdata$lge8___2,levels=c("0","1"))
cmrdata$lge8___3.factor = factor(cmrdata$lge8___3,levels=c("0","1"))
cmrdata$lge8___4.factor = factor(cmrdata$lge8___4,levels=c("0","1"))
cmrdata$lge8___5.factor = factor(cmrdata$lge8___5,levels=c("0","1"))
cmrdata$lge9___1.factor = factor(cmrdata$lge9___1,levels=c("0","1"))
cmrdata$lge9___2.factor = factor(cmrdata$lge9___2,levels=c("0","1"))
cmrdata$lge9___3.factor = factor(cmrdata$lge9___3,levels=c("0","1"))
cmrdata$lge9___4.factor = factor(cmrdata$lge9___4,levels=c("0","1"))
cmrdata$lge9___5.factor = factor(cmrdata$lge9___5,levels=c("0","1"))
cmrdata$lge10___1.factor = factor(cmrdata$lge10___1,levels=c("0","1"))
cmrdata$lge10___2.factor = factor(cmrdata$lge10___2,levels=c("0","1"))
cmrdata$lge10___3.factor = factor(cmrdata$lge10___3,levels=c("0","1"))
cmrdata$lge10___4.factor = factor(cmrdata$lge10___4,levels=c("0","1"))
cmrdata$lge10___5.factor = factor(cmrdata$lge10___5,levels=c("0","1"))
cmrdata$lge11___1.factor = factor(cmrdata$lge11___1,levels=c("0","1"))
cmrdata$lge11___2.factor = factor(cmrdata$lge11___2,levels=c("0","1"))
cmrdata$lge11___3.factor = factor(cmrdata$lge11___3,levels=c("0","1"))
cmrdata$lge11___4.factor = factor(cmrdata$lge11___4,levels=c("0","1"))
cmrdata$lge11___5.factor = factor(cmrdata$lge11___5,levels=c("0","1"))
cmrdata$lge12___1.factor = factor(cmrdata$lge12___1,levels=c("0","1"))
cmrdata$lge12___2.factor = factor(cmrdata$lge12___2,levels=c("0","1"))
cmrdata$lge12___3.factor = factor(cmrdata$lge12___3,levels=c("0","1"))
cmrdata$lge12___4.factor = factor(cmrdata$lge12___4,levels=c("0","1"))
cmrdata$lge12___5.factor = factor(cmrdata$lge12___5,levels=c("0","1"))
cmrdata$lge13___1.factor = factor(cmrdata$lge13___1,levels=c("0","1"))
cmrdata$lge13___2.factor = factor(cmrdata$lge13___2,levels=c("0","1"))
cmrdata$lge13___3.factor = factor(cmrdata$lge13___3,levels=c("0","1"))
cmrdata$lge13___4.factor = factor(cmrdata$lge13___4,levels=c("0","1"))
cmrdata$lge13___5.factor = factor(cmrdata$lge13___5,levels=c("0","1"))
cmrdata$lge14___1.factor = factor(cmrdata$lge14___1,levels=c("0","1"))
cmrdata$lge14___2.factor = factor(cmrdata$lge14___2,levels=c("0","1"))
cmrdata$lge14___3.factor = factor(cmrdata$lge14___3,levels=c("0","1"))
cmrdata$lge14___4.factor = factor(cmrdata$lge14___4,levels=c("0","1"))
cmrdata$lge14___5.factor = factor(cmrdata$lge14___5,levels=c("0","1"))
cmrdata$lge15___1.factor = factor(cmrdata$lge15___1,levels=c("0","1"))
cmrdata$lge15___2.factor = factor(cmrdata$lge15___2,levels=c("0","1"))
cmrdata$lge15___3.factor = factor(cmrdata$lge15___3,levels=c("0","1"))
cmrdata$lge15___4.factor = factor(cmrdata$lge15___4,levels=c("0","1"))
cmrdata$lge15___5.factor = factor(cmrdata$lge15___5,levels=c("0","1"))
cmrdata$lge16___1.factor = factor(cmrdata$lge16___1,levels=c("0","1"))
cmrdata$lge16___2.factor = factor(cmrdata$lge16___2,levels=c("0","1"))
cmrdata$lge16___3.factor = factor(cmrdata$lge16___3,levels=c("0","1"))
cmrdata$lge16___4.factor = factor(cmrdata$lge16___4,levels=c("0","1"))
cmrdata$lge16___5.factor = factor(cmrdata$lge16___5,levels=c("0","1"))
cmrdata$lge17___1.factor = factor(cmrdata$lge17___1,levels=c("0","1"))
cmrdata$lge17___2.factor = factor(cmrdata$lge17___2,levels=c("0","1"))
cmrdata$lge17___3.factor = factor(cmrdata$lge17___3,levels=c("0","1"))
cmrdata$lge17___4.factor = factor(cmrdata$lge17___4,levels=c("0","1"))
cmrdata$lge17___5.factor = factor(cmrdata$lge17___5,levels=c("0","1"))
cmrdata$rvlge_cmr.factor = factor(cmrdata$rvlge_cmr,levels=c("1","0"))
cmrdata$rvlge_location_cmr___1.factor = factor(cmrdata$rvlge_location_cmr___1,levels=c("0","1"))
cmrdata$rvlge_location_cmr___2.factor = factor(cmrdata$rvlge_location_cmr___2,levels=c("0","1"))
cmrdata$rvlge_location_cmr___3.factor = factor(cmrdata$rvlge_location_cmr___3,levels=c("0","1"))
cmrdata$rvlge_location_cmr___4.factor = factor(cmrdata$rvlge_location_cmr___4,levels=c("0","1"))
cmrdata$rvlge_location_cmr___5.factor = factor(cmrdata$rvlge_location_cmr___5,levels=c("0","1"))
cmrdata$rvlge_location_cmr___6.factor = factor(cmrdata$rvlge_location_cmr___6,levels=c("0","1"))
cmrdata$rvlge_location_cmr___7.factor = factor(cmrdata$rvlge_location_cmr___7,levels=c("0","1"))
cmrdata$rvlge_location_cmr___8.factor = factor(cmrdata$rvlge_location_cmr___8,levels=c("0","1"))
cmrdata$t1_executed_cmr.factor = factor(cmrdata$t1_executed_cmr,levels=c("1","0"))
cmrdata$t1_slices_cmr.factor = factor(cmrdata$t1_slices_cmr,levels=c("1","2","3","4"))
cmrdata$t1_mapping_elevated_cmr.factor = factor(cmrdata$t1_mapping_elevated_cmr,levels=c("1","0"))
cmrdata$high_t1_location_cmr___1.factor = factor(cmrdata$high_t1_location_cmr___1,levels=c("0","1"))
cmrdata$high_t1_location_cmr___2.factor = factor(cmrdata$high_t1_location_cmr___2,levels=c("0","1"))
cmrdata$high_t1_location_cmr___3.factor = factor(cmrdata$high_t1_location_cmr___3,levels=c("0","1"))
cmrdata$high_t1_location_cmr___4.factor = factor(cmrdata$high_t1_location_cmr___4,levels=c("0","1"))
cmrdata$high_t1_location_cmr___5.factor = factor(cmrdata$high_t1_location_cmr___5,levels=c("0","1"))
cmrdata$high_t1_location_cmr___6.factor = factor(cmrdata$high_t1_location_cmr___6,levels=c("0","1"))
cmrdata$high_t1_location_cmr___7.factor = factor(cmrdata$high_t1_location_cmr___7,levels=c("0","1"))
cmrdata$high_t1_location_cmr___8.factor = factor(cmrdata$high_t1_location_cmr___8,levels=c("0","1"))
cmrdata$high_t1_location_cmr___9.factor = factor(cmrdata$high_t1_location_cmr___9,levels=c("0","1"))
cmrdata$high_t1_location_cmr___10.factor = factor(cmrdata$high_t1_location_cmr___10,levels=c("0","1"))
cmrdata$high_t1_location_cmr___11.factor = factor(cmrdata$high_t1_location_cmr___11,levels=c("0","1"))
cmrdata$high_t1_location_cmr___12.factor = factor(cmrdata$high_t1_location_cmr___12,levels=c("0","1"))
cmrdata$high_t1_location_cmr___13.factor = factor(cmrdata$high_t1_location_cmr___13,levels=c("0","1"))
cmrdata$high_t1_location_cmr___14.factor = factor(cmrdata$high_t1_location_cmr___14,levels=c("0","1"))
cmrdata$high_t1_location_cmr___15.factor = factor(cmrdata$high_t1_location_cmr___15,levels=c("0","1"))
cmrdata$high_t1_location_cmr___16.factor = factor(cmrdata$high_t1_location_cmr___16,levels=c("0","1"))
cmrdata$high_t1_location_cmr___17.factor = factor(cmrdata$high_t1_location_cmr___17,levels=c("0","1"))
cmrdata$oedema_executed_cmr.factor = factor(cmrdata$oedema_executed_cmr,levels=c("1","0"))
cmrdata$oedema_slices_cmr.factor = factor(cmrdata$oedema_slices_cmr,levels=c("1","2","3","4"))
cmrdata$stir_oedema_ratio_cmr.factor = factor(cmrdata$stir_oedema_ratio_cmr,levels=c("1","0"))
cmrdata$high_stir_location_cmr___1.factor = factor(cmrdata$high_stir_location_cmr___1,levels=c("0","1"))
cmrdata$high_stir_location_cmr___2.factor = factor(cmrdata$high_stir_location_cmr___2,levels=c("0","1"))
cmrdata$high_stir_location_cmr___3.factor = factor(cmrdata$high_stir_location_cmr___3,levels=c("0","1"))
cmrdata$high_stir_location_cmr___4.factor = factor(cmrdata$high_stir_location_cmr___4,levels=c("0","1"))
cmrdata$high_stir_location_cmr___5.factor = factor(cmrdata$high_stir_location_cmr___5,levels=c("0","1"))
cmrdata$high_stir_location_cmr___6.factor = factor(cmrdata$high_stir_location_cmr___6,levels=c("0","1"))
cmrdata$high_stir_location_cmr___7.factor = factor(cmrdata$high_stir_location_cmr___7,levels=c("0","1"))
cmrdata$high_stir_location_cmr___8.factor = factor(cmrdata$high_stir_location_cmr___8,levels=c("0","1"))
cmrdata$high_stir_location_cmr___9.factor = factor(cmrdata$high_stir_location_cmr___9,levels=c("0","1"))
cmrdata$high_stir_location_cmr___10.factor = factor(cmrdata$high_stir_location_cmr___10,levels=c("0","1"))
cmrdata$high_stir_location_cmr___11.factor = factor(cmrdata$high_stir_location_cmr___11,levels=c("0","1"))
cmrdata$high_stir_location_cmr___12.factor = factor(cmrdata$high_stir_location_cmr___12,levels=c("0","1"))
cmrdata$high_stir_location_cmr___13.factor = factor(cmrdata$high_stir_location_cmr___13,levels=c("0","1"))
cmrdata$high_stir_location_cmr___14.factor = factor(cmrdata$high_stir_location_cmr___14,levels=c("0","1"))
cmrdata$high_stir_location_cmr___15.factor = factor(cmrdata$high_stir_location_cmr___15,levels=c("0","1"))
cmrdata$high_stir_location_cmr___16.factor = factor(cmrdata$high_stir_location_cmr___16,levels=c("0","1"))
cmrdata$high_stir_location_cmr___17.factor = factor(cmrdata$high_stir_location_cmr___17,levels=c("0","1"))
cmrdata$t2_mapping_elevated_cmr.factor = factor(cmrdata$t2_mapping_elevated_cmr,levels=c("1","0"))
cmrdata$high_t2_location_cmr___1.factor = factor(cmrdata$high_t2_location_cmr___1,levels=c("0","1"))
cmrdata$high_t2_location_cmr___2.factor = factor(cmrdata$high_t2_location_cmr___2,levels=c("0","1"))
cmrdata$high_t2_location_cmr___3.factor = factor(cmrdata$high_t2_location_cmr___3,levels=c("0","1"))
cmrdata$high_t2_location_cmr___4.factor = factor(cmrdata$high_t2_location_cmr___4,levels=c("0","1"))
cmrdata$high_t2_location_cmr___5.factor = factor(cmrdata$high_t2_location_cmr___5,levels=c("0","1"))
cmrdata$high_t2_location_cmr___6.factor = factor(cmrdata$high_t2_location_cmr___6,levels=c("0","1"))
cmrdata$high_t2_location_cmr___7.factor = factor(cmrdata$high_t2_location_cmr___7,levels=c("0","1"))
cmrdata$high_t2_location_cmr___8.factor = factor(cmrdata$high_t2_location_cmr___8,levels=c("0","1"))
cmrdata$high_t2_location_cmr___9.factor = factor(cmrdata$high_t2_location_cmr___9,levels=c("0","1"))
cmrdata$high_t2_location_cmr___10.factor = factor(cmrdata$high_t2_location_cmr___10,levels=c("0","1"))
cmrdata$high_t2_location_cmr___11.factor = factor(cmrdata$high_t2_location_cmr___11,levels=c("0","1"))
cmrdata$high_t2_location_cmr___12.factor = factor(cmrdata$high_t2_location_cmr___12,levels=c("0","1"))
cmrdata$high_t2_location_cmr___13.factor = factor(cmrdata$high_t2_location_cmr___13,levels=c("0","1"))
cmrdata$high_t2_location_cmr___14.factor = factor(cmrdata$high_t2_location_cmr___14,levels=c("0","1"))
cmrdata$high_t2_location_cmr___15.factor = factor(cmrdata$high_t2_location_cmr___15,levels=c("0","1"))
cmrdata$high_t2_location_cmr___16.factor = factor(cmrdata$high_t2_location_cmr___16,levels=c("0","1"))
cmrdata$high_t2_location_cmr___17.factor = factor(cmrdata$high_t2_location_cmr___17,levels=c("0","1"))
cmrdata$vers_peri_cmr.factor = factor(cmrdata$vers_peri_cmr,levels=c("1","0"))
cmrdata$cmr_complete.factor = factor(cmrdata$cmr_complete,levels=c("0","1","2"))
cmrdata$cmr_strain_complete.factor = factor(cmrdata$cmr_strain_complete,levels=c("0","1","2"))
cmrdata$cmr_involvement_fup.factor = factor(cmrdata$cmr_involvement_fup,levels=c("1","2","3","4"))
cmrdata$akinesia_cmr_fup.factor = factor(cmrdata$akinesia_cmr_fup,levels=c("1","0"))
cmrdata$akinesia_seg_cmr_fup___1.factor = factor(cmrdata$akinesia_seg_cmr_fup___1,levels=c("0","1"))
cmrdata$akinesia_seg_cmr_fup___2.factor = factor(cmrdata$akinesia_seg_cmr_fup___2,levels=c("0","1"))
cmrdata$akinesia_seg_cmr_fup___3.factor = factor(cmrdata$akinesia_seg_cmr_fup___3,levels=c("0","1"))
cmrdata$akinesia_seg_cmr_fup___4.factor = factor(cmrdata$akinesia_seg_cmr_fup___4,levels=c("0","1"))
cmrdata$akinesia_seg_cmr_fup___5.factor = factor(cmrdata$akinesia_seg_cmr_fup___5,levels=c("0","1"))
cmrdata$akinesia_seg_cmr_fup___6.factor = factor(cmrdata$akinesia_seg_cmr_fup___6,levels=c("0","1"))
cmrdata$akinesia_seg_cmr_fup___7.factor = factor(cmrdata$akinesia_seg_cmr_fup___7,levels=c("0","1"))
cmrdata$akinesia_seg_cmr_fup___8.factor = factor(cmrdata$akinesia_seg_cmr_fup___8,levels=c("0","1"))
cmrdata$akinesia_seg_cmr_fup___9.factor = factor(cmrdata$akinesia_seg_cmr_fup___9,levels=c("0","1"))
cmrdata$akinesia_seg_cmr_fup___10.factor = factor(cmrdata$akinesia_seg_cmr_fup___10,levels=c("0","1"))
cmrdata$akinesia_seg_cmr_fup___11.factor = factor(cmrdata$akinesia_seg_cmr_fup___11,levels=c("0","1"))
cmrdata$akinesia_seg_cmr_fup___12.factor = factor(cmrdata$akinesia_seg_cmr_fup___12,levels=c("0","1"))
cmrdata$akinesia_seg_cmr_fup___13.factor = factor(cmrdata$akinesia_seg_cmr_fup___13,levels=c("0","1"))
cmrdata$akinesia_seg_cmr_fup___14.factor = factor(cmrdata$akinesia_seg_cmr_fup___14,levels=c("0","1"))
cmrdata$akinesia_seg_cmr_fup___15.factor = factor(cmrdata$akinesia_seg_cmr_fup___15,levels=c("0","1"))
cmrdata$akinesia_seg_cmr_fup___16.factor = factor(cmrdata$akinesia_seg_cmr_fup___16,levels=c("0","1"))
cmrdata$akinesia_seg_cmr_fup___17.factor = factor(cmrdata$akinesia_seg_cmr_fup___17,levels=c("0","1"))
cmrdata$hypokinesia_cmr_fup.factor = factor(cmrdata$hypokinesia_cmr_fup,levels=c("1","0"))
cmrdata$hypokinesia_seg_cmr_fup___1.factor = factor(cmrdata$hypokinesia_seg_cmr_fup___1,levels=c("0","1"))
cmrdata$hypokinesia_seg_cmr_fup___2.factor = factor(cmrdata$hypokinesia_seg_cmr_fup___2,levels=c("0","1"))
cmrdata$hypokinesia_seg_cmr_fup___3.factor = factor(cmrdata$hypokinesia_seg_cmr_fup___3,levels=c("0","1"))
cmrdata$hypokinesia_seg_cmr_fup___4.factor = factor(cmrdata$hypokinesia_seg_cmr_fup___4,levels=c("0","1"))
cmrdata$hypokinesia_seg_cmr_fup___5.factor = factor(cmrdata$hypokinesia_seg_cmr_fup___5,levels=c("0","1"))
cmrdata$hypokinesia_seg_cmr_fup___6.factor = factor(cmrdata$hypokinesia_seg_cmr_fup___6,levels=c("0","1"))
cmrdata$hypokinesia_seg_cmr_fup___7.factor = factor(cmrdata$hypokinesia_seg_cmr_fup___7,levels=c("0","1"))
cmrdata$hypokinesia_seg_cmr_fup___8.factor = factor(cmrdata$hypokinesia_seg_cmr_fup___8,levels=c("0","1"))
cmrdata$hypokinesia_seg_cmr_fup___9.factor = factor(cmrdata$hypokinesia_seg_cmr_fup___9,levels=c("0","1"))
cmrdata$hypokinesia_seg_cmr_fup___10.factor = factor(cmrdata$hypokinesia_seg_cmr_fup___10,levels=c("0","1"))
cmrdata$hypokinesia_seg_cmr_fup___11.factor = factor(cmrdata$hypokinesia_seg_cmr_fup___11,levels=c("0","1"))
cmrdata$hypokinesia_seg_cmr_fup___12.factor = factor(cmrdata$hypokinesia_seg_cmr_fup___12,levels=c("0","1"))
cmrdata$hypokinesia_seg_cmr_fup___13.factor = factor(cmrdata$hypokinesia_seg_cmr_fup___13,levels=c("0","1"))
cmrdata$hypokinesia_seg_cmr_fup___14.factor = factor(cmrdata$hypokinesia_seg_cmr_fup___14,levels=c("0","1"))
cmrdata$hypokinesia_seg_cmr_fup___15.factor = factor(cmrdata$hypokinesia_seg_cmr_fup___15,levels=c("0","1"))
cmrdata$hypokinesia_seg_cmr_fup___16.factor = factor(cmrdata$hypokinesia_seg_cmr_fup___16,levels=c("0","1"))
cmrdata$hypokinesia_seg_cmr_fup___17.factor = factor(cmrdata$hypokinesia_seg_cmr_fup___17,levels=c("0","1"))
cmrdata$dyskinesia_cmr_fup.factor = factor(cmrdata$dyskinesia_cmr_fup,levels=c("1","0"))
cmrdata$dyskinesia_seg_cmr_fup___1.factor = factor(cmrdata$dyskinesia_seg_cmr_fup___1,levels=c("0","1"))
cmrdata$dyskinesia_seg_cmr_fup___2.factor = factor(cmrdata$dyskinesia_seg_cmr_fup___2,levels=c("0","1"))
cmrdata$dyskinesia_seg_cmr_fup___3.factor = factor(cmrdata$dyskinesia_seg_cmr_fup___3,levels=c("0","1"))
cmrdata$dyskinesia_seg_cmr_fup___4.factor = factor(cmrdata$dyskinesia_seg_cmr_fup___4,levels=c("0","1"))
cmrdata$dyskinesia_seg_cmr_fup___5.factor = factor(cmrdata$dyskinesia_seg_cmr_fup___5,levels=c("0","1"))
cmrdata$dyskinesia_seg_cmr_fup___6.factor = factor(cmrdata$dyskinesia_seg_cmr_fup___6,levels=c("0","1"))
cmrdata$dyskinesia_seg_cmr_fup___7.factor = factor(cmrdata$dyskinesia_seg_cmr_fup___7,levels=c("0","1"))
cmrdata$dyskinesia_seg_cmr_fup___8.factor = factor(cmrdata$dyskinesia_seg_cmr_fup___8,levels=c("0","1"))
cmrdata$dyskinesia_seg_cmr_fup___9.factor = factor(cmrdata$dyskinesia_seg_cmr_fup___9,levels=c("0","1"))
cmrdata$dyskinesia_seg_cmr_fup___10.factor = factor(cmrdata$dyskinesia_seg_cmr_fup___10,levels=c("0","1"))
cmrdata$dyskinesia_seg_cmr_fup___11.factor = factor(cmrdata$dyskinesia_seg_cmr_fup___11,levels=c("0","1"))
cmrdata$dyskinesia_seg_cmr_fup___12.factor = factor(cmrdata$dyskinesia_seg_cmr_fup___12,levels=c("0","1"))
cmrdata$dyskinesia_seg_cmr_fup___13.factor = factor(cmrdata$dyskinesia_seg_cmr_fup___13,levels=c("0","1"))
cmrdata$dyskinesia_seg_cmr_fup___14.factor = factor(cmrdata$dyskinesia_seg_cmr_fup___14,levels=c("0","1"))
cmrdata$dyskinesia_seg_cmr_fup___15.factor = factor(cmrdata$dyskinesia_seg_cmr_fup___15,levels=c("0","1"))
cmrdata$dyskinesia_seg_cmr_fup___16.factor = factor(cmrdata$dyskinesia_seg_cmr_fup___16,levels=c("0","1"))
cmrdata$dyskinesia_seg_cmr_fup___17.factor = factor(cmrdata$dyskinesia_seg_cmr_fup___17,levels=c("0","1"))
cmrdata$aneurysm_cmr_fup.factor = factor(cmrdata$aneurysm_cmr_fup,levels=c("1","0"))
cmrdata$aneurysm_seg_cmr_fup___1.factor = factor(cmrdata$aneurysm_seg_cmr_fup___1,levels=c("0","1"))
cmrdata$aneurysm_seg_cmr_fup___2.factor = factor(cmrdata$aneurysm_seg_cmr_fup___2,levels=c("0","1"))
cmrdata$aneurysm_seg_cmr_fup___3.factor = factor(cmrdata$aneurysm_seg_cmr_fup___3,levels=c("0","1"))
cmrdata$aneurysm_seg_cmr_fup___4.factor = factor(cmrdata$aneurysm_seg_cmr_fup___4,levels=c("0","1"))
cmrdata$aneurysm_seg_cmr_fup___5.factor = factor(cmrdata$aneurysm_seg_cmr_fup___5,levels=c("0","1"))
cmrdata$aneurysm_seg_cmr_fup___6.factor = factor(cmrdata$aneurysm_seg_cmr_fup___6,levels=c("0","1"))
cmrdata$aneurysm_seg_cmr_fup___7.factor = factor(cmrdata$aneurysm_seg_cmr_fup___7,levels=c("0","1"))
cmrdata$aneurysm_seg_cmr_fup___8.factor = factor(cmrdata$aneurysm_seg_cmr_fup___8,levels=c("0","1"))
cmrdata$aneurysm_seg_cmr_fup___9.factor = factor(cmrdata$aneurysm_seg_cmr_fup___9,levels=c("0","1"))
cmrdata$aneurysm_seg_cmr_fup___10.factor = factor(cmrdata$aneurysm_seg_cmr_fup___10,levels=c("0","1"))
cmrdata$aneurysm_seg_cmr_fup___11.factor = factor(cmrdata$aneurysm_seg_cmr_fup___11,levels=c("0","1"))
cmrdata$aneurysm_seg_cmr_fup___12.factor = factor(cmrdata$aneurysm_seg_cmr_fup___12,levels=c("0","1"))
cmrdata$aneurysm_seg_cmr_fup___13.factor = factor(cmrdata$aneurysm_seg_cmr_fup___13,levels=c("0","1"))
cmrdata$aneurysm_seg_cmr_fup___14.factor = factor(cmrdata$aneurysm_seg_cmr_fup___14,levels=c("0","1"))
cmrdata$aneurysm_seg_cmr_fup___15.factor = factor(cmrdata$aneurysm_seg_cmr_fup___15,levels=c("0","1"))
cmrdata$aneurysm_seg_cmr_fup___16.factor = factor(cmrdata$aneurysm_seg_cmr_fup___16,levels=c("0","1"))
cmrdata$aneurysm_seg_cmr_fup___17.factor = factor(cmrdata$aneurysm_seg_cmr_fup___17,levels=c("0","1"))
cmrdata$thrombus_cmr_fup.factor = factor(cmrdata$thrombus_cmr_fup,levels=c("1","0"))
cmrdata$aneurysm_rv_cmr_fup.factor = factor(cmrdata$aneurysm_rv_cmr_fup,levels=c("1","0"))
cmrdata$rvwma_cmr_fup.factor = factor(cmrdata$rvwma_cmr_fup,levels=c("1","0"))
cmrdata$rvwma1_fup___2.factor = factor(cmrdata$rvwma1_fup___2,levels=c("0","1"))
cmrdata$rvwma1_fup___3.factor = factor(cmrdata$rvwma1_fup___3,levels=c("0","1"))
cmrdata$rvwma1_fup___4.factor = factor(cmrdata$rvwma1_fup___4,levels=c("0","1"))
cmrdata$rvwma2_fup___2.factor = factor(cmrdata$rvwma2_fup___2,levels=c("0","1"))
cmrdata$rvwma2_fup___3.factor = factor(cmrdata$rvwma2_fup___3,levels=c("0","1"))
cmrdata$rvwma2_fup___4.factor = factor(cmrdata$rvwma2_fup___4,levels=c("0","1"))
cmrdata$rvwma3_fup___2.factor = factor(cmrdata$rvwma3_fup___2,levels=c("0","1"))
cmrdata$rvwma3_fup___3.factor = factor(cmrdata$rvwma3_fup___3,levels=c("0","1"))
cmrdata$rvwma3_fup___4.factor = factor(cmrdata$rvwma3_fup___4,levels=c("0","1"))
cmrdata$rvwma4_fup___2.factor = factor(cmrdata$rvwma4_fup___2,levels=c("0","1"))
cmrdata$rvwma4_fup___3.factor = factor(cmrdata$rvwma4_fup___3,levels=c("0","1"))
cmrdata$rvwma4_fup___4.factor = factor(cmrdata$rvwma4_fup___4,levels=c("0","1"))
cmrdata$rvwma5_fup___2.factor = factor(cmrdata$rvwma5_fup___2,levels=c("0","1"))
cmrdata$rvwma5_fup___3.factor = factor(cmrdata$rvwma5_fup___3,levels=c("0","1"))
cmrdata$rvwma5_fup___4.factor = factor(cmrdata$rvwma5_fup___4,levels=c("0","1"))
cmrdata$rvwma6_fup___2.factor = factor(cmrdata$rvwma6_fup___2,levels=c("0","1"))
cmrdata$rvwma6_fup___3.factor = factor(cmrdata$rvwma6_fup___3,levels=c("0","1"))
cmrdata$rvwma6_fup___4.factor = factor(cmrdata$rvwma6_fup___4,levels=c("0","1"))
cmrdata$rvwma7_fup___2.factor = factor(cmrdata$rvwma7_fup___2,levels=c("0","1"))
cmrdata$rvwma7_fup___3.factor = factor(cmrdata$rvwma7_fup___3,levels=c("0","1"))
cmrdata$rvwma7_fup___4.factor = factor(cmrdata$rvwma7_fup___4,levels=c("0","1"))
cmrdata$rvwma8_fup___2.factor = factor(cmrdata$rvwma8_fup___2,levels=c("0","1"))
cmrdata$rvwma8_fup___3.factor = factor(cmrdata$rvwma8_fup___3,levels=c("0","1"))
cmrdata$rvwma8_fup___4.factor = factor(cmrdata$rvwma8_fup___4,levels=c("0","1"))
cmrdata$fatinf_cmr_fup.factor = factor(cmrdata$fatinf_cmr_fup,levels=c("1","0"))
cmrdata$fat_visualized_in_fup___1.factor = factor(cmrdata$fat_visualized_in_fup___1,levels=c("0","1"))
cmrdata$fat_visualized_in_fup___2.factor = factor(cmrdata$fat_visualized_in_fup___2,levels=c("0","1"))
cmrdata$fat_visualized_in_fup___3.factor = factor(cmrdata$fat_visualized_in_fup___3,levels=c("0","1"))
cmrdata$fat_visualized_in_fup___4.factor = factor(cmrdata$fat_visualized_in_fup___4,levels=c("0","1"))
cmrdata$fat1_fup___1.factor = factor(cmrdata$fat1_fup___1,levels=c("0","1"))
cmrdata$fat1_fup___2.factor = factor(cmrdata$fat1_fup___2,levels=c("0","1"))
cmrdata$fat1_fup___3.factor = factor(cmrdata$fat1_fup___3,levels=c("0","1"))
cmrdata$fat1_fup___4.factor = factor(cmrdata$fat1_fup___4,levels=c("0","1"))
cmrdata$fat1_fup___5.factor = factor(cmrdata$fat1_fup___5,levels=c("0","1"))
cmrdata$fat2_fup___1.factor = factor(cmrdata$fat2_fup___1,levels=c("0","1"))
cmrdata$fat2_fup___2.factor = factor(cmrdata$fat2_fup___2,levels=c("0","1"))
cmrdata$fat2_fup___3.factor = factor(cmrdata$fat2_fup___3,levels=c("0","1"))
cmrdata$fat2_fup___4.factor = factor(cmrdata$fat2_fup___4,levels=c("0","1"))
cmrdata$fat2_fup___5.factor = factor(cmrdata$fat2_fup___5,levels=c("0","1"))
cmrdata$fat3_fup___1.factor = factor(cmrdata$fat3_fup___1,levels=c("0","1"))
cmrdata$fat3_fup___2.factor = factor(cmrdata$fat3_fup___2,levels=c("0","1"))
cmrdata$fat3_fup___3.factor = factor(cmrdata$fat3_fup___3,levels=c("0","1"))
cmrdata$fat3_fup___4.factor = factor(cmrdata$fat3_fup___4,levels=c("0","1"))
cmrdata$fat3_fup___5.factor = factor(cmrdata$fat3_fup___5,levels=c("0","1"))
cmrdata$fat4_fup___1.factor = factor(cmrdata$fat4_fup___1,levels=c("0","1"))
cmrdata$fat4_fup___2.factor = factor(cmrdata$fat4_fup___2,levels=c("0","1"))
cmrdata$fat4_fup___3.factor = factor(cmrdata$fat4_fup___3,levels=c("0","1"))
cmrdata$fat4_fup___4.factor = factor(cmrdata$fat4_fup___4,levels=c("0","1"))
cmrdata$fat4_fup___5.factor = factor(cmrdata$fat4_fup___5,levels=c("0","1"))
cmrdata$fat5_fup___1.factor = factor(cmrdata$fat5_fup___1,levels=c("0","1"))
cmrdata$fat5_fup___2.factor = factor(cmrdata$fat5_fup___2,levels=c("0","1"))
cmrdata$fat5_fup___3.factor = factor(cmrdata$fat5_fup___3,levels=c("0","1"))
cmrdata$fat5_fup___4.factor = factor(cmrdata$fat5_fup___4,levels=c("0","1"))
cmrdata$fat5_fup___5.factor = factor(cmrdata$fat5_fup___5,levels=c("0","1"))
cmrdata$fat6_fup___1.factor = factor(cmrdata$fat6_fup___1,levels=c("0","1"))
cmrdata$fat6_fup___2.factor = factor(cmrdata$fat6_fup___2,levels=c("0","1"))
cmrdata$fat6_fup___3.factor = factor(cmrdata$fat6_fup___3,levels=c("0","1"))
cmrdata$fat6_fup___4.factor = factor(cmrdata$fat6_fup___4,levels=c("0","1"))
cmrdata$fat6_fup___5.factor = factor(cmrdata$fat6_fup___5,levels=c("0","1"))
cmrdata$fat7_fup___1.factor = factor(cmrdata$fat7_fup___1,levels=c("0","1"))
cmrdata$fat7_fup___2.factor = factor(cmrdata$fat7_fup___2,levels=c("0","1"))
cmrdata$fat7_fup___3.factor = factor(cmrdata$fat7_fup___3,levels=c("0","1"))
cmrdata$fat7_fup___4.factor = factor(cmrdata$fat7_fup___4,levels=c("0","1"))
cmrdata$fat7_fup___5.factor = factor(cmrdata$fat7_fup___5,levels=c("0","1"))
cmrdata$fat8_fup___1.factor = factor(cmrdata$fat8_fup___1,levels=c("0","1"))
cmrdata$fat8_fup___2.factor = factor(cmrdata$fat8_fup___2,levels=c("0","1"))
cmrdata$fat8_fup___3.factor = factor(cmrdata$fat8_fup___3,levels=c("0","1"))
cmrdata$fat8_fup___4.factor = factor(cmrdata$fat8_fup___4,levels=c("0","1"))
cmrdata$fat8_fup___5.factor = factor(cmrdata$fat8_fup___5,levels=c("0","1"))
cmrdata$fat9_fup___1.factor = factor(cmrdata$fat9_fup___1,levels=c("0","1"))
cmrdata$fat9_fup___2.factor = factor(cmrdata$fat9_fup___2,levels=c("0","1"))
cmrdata$fat9_fup___3.factor = factor(cmrdata$fat9_fup___3,levels=c("0","1"))
cmrdata$fat9_fup___4.factor = factor(cmrdata$fat9_fup___4,levels=c("0","1"))
cmrdata$fat9_fup___5.factor = factor(cmrdata$fat9_fup___5,levels=c("0","1"))
cmrdata$fat10_fup___1.factor = factor(cmrdata$fat10_fup___1,levels=c("0","1"))
cmrdata$fat10_fup___2.factor = factor(cmrdata$fat10_fup___2,levels=c("0","1"))
cmrdata$fat10_fup___3.factor = factor(cmrdata$fat10_fup___3,levels=c("0","1"))
cmrdata$fat10_fup___4.factor = factor(cmrdata$fat10_fup___4,levels=c("0","1"))
cmrdata$fat10_fup___5.factor = factor(cmrdata$fat10_fup___5,levels=c("0","1"))
cmrdata$fat11_fup___1.factor = factor(cmrdata$fat11_fup___1,levels=c("0","1"))
cmrdata$fat11_fup___2.factor = factor(cmrdata$fat11_fup___2,levels=c("0","1"))
cmrdata$fat11_fup___3.factor = factor(cmrdata$fat11_fup___3,levels=c("0","1"))
cmrdata$fat11_fup___4.factor = factor(cmrdata$fat11_fup___4,levels=c("0","1"))
cmrdata$fat11_fup___5.factor = factor(cmrdata$fat11_fup___5,levels=c("0","1"))
cmrdata$fat12_fup___1.factor = factor(cmrdata$fat12_fup___1,levels=c("0","1"))
cmrdata$fat12_fup___2.factor = factor(cmrdata$fat12_fup___2,levels=c("0","1"))
cmrdata$fat12_fup___3.factor = factor(cmrdata$fat12_fup___3,levels=c("0","1"))
cmrdata$fat12_fup___4.factor = factor(cmrdata$fat12_fup___4,levels=c("0","1"))
cmrdata$fat12_fup___5.factor = factor(cmrdata$fat12_fup___5,levels=c("0","1"))
cmrdata$fat13_fup___1.factor = factor(cmrdata$fat13_fup___1,levels=c("0","1"))
cmrdata$fat13_fup___2.factor = factor(cmrdata$fat13_fup___2,levels=c("0","1"))
cmrdata$fat13_fup___3.factor = factor(cmrdata$fat13_fup___3,levels=c("0","1"))
cmrdata$fat13_fup___4.factor = factor(cmrdata$fat13_fup___4,levels=c("0","1"))
cmrdata$fat13_fup___5.factor = factor(cmrdata$fat13_fup___5,levels=c("0","1"))
cmrdata$fat14_fup___1.factor = factor(cmrdata$fat14_fup___1,levels=c("0","1"))
cmrdata$fat14_fup___2.factor = factor(cmrdata$fat14_fup___2,levels=c("0","1"))
cmrdata$fat14_fup___3.factor = factor(cmrdata$fat14_fup___3,levels=c("0","1"))
cmrdata$fat14_fup___4.factor = factor(cmrdata$fat14_fup___4,levels=c("0","1"))
cmrdata$fat14_fup___5.factor = factor(cmrdata$fat14_fup___5,levels=c("0","1"))
cmrdata$fat15_fup___1.factor = factor(cmrdata$fat15_fup___1,levels=c("0","1"))
cmrdata$fat15_fup___2.factor = factor(cmrdata$fat15_fup___2,levels=c("0","1"))
cmrdata$fat15_fup___3.factor = factor(cmrdata$fat15_fup___3,levels=c("0","1"))
cmrdata$fat15_fup___4.factor = factor(cmrdata$fat15_fup___4,levels=c("0","1"))
cmrdata$fat15_fup___5.factor = factor(cmrdata$fat15_fup___5,levels=c("0","1"))
cmrdata$fat16_fup___1.factor = factor(cmrdata$fat16_fup___1,levels=c("0","1"))
cmrdata$fat16_fup___2.factor = factor(cmrdata$fat16_fup___2,levels=c("0","1"))
cmrdata$fat16_fup___3.factor = factor(cmrdata$fat16_fup___3,levels=c("0","1"))
cmrdata$fat16_fup___4.factor = factor(cmrdata$fat16_fup___4,levels=c("0","1"))
cmrdata$fat16_fup___5.factor = factor(cmrdata$fat16_fup___5,levels=c("0","1"))
cmrdata$fat17_fup___1.factor = factor(cmrdata$fat17_fup___1,levels=c("0","1"))
cmrdata$fat17_fup___2.factor = factor(cmrdata$fat17_fup___2,levels=c("0","1"))
cmrdata$fat17_fup___3.factor = factor(cmrdata$fat17_fup___3,levels=c("0","1"))
cmrdata$fat17_fup___4.factor = factor(cmrdata$fat17_fup___4,levels=c("0","1"))
cmrdata$fat17_fup___5.factor = factor(cmrdata$fat17_fup___5,levels=c("0","1"))
cmrdata$rvfat_cmr_fup.factor = factor(cmrdata$rvfat_cmr_fup,levels=c("1","0"))
cmrdata$rvfat_location_cmr_fup___1.factor = factor(cmrdata$rvfat_location_cmr_fup___1,levels=c("0","1"))
cmrdata$rvfat_location_cmr_fup___2.factor = factor(cmrdata$rvfat_location_cmr_fup___2,levels=c("0","1"))
cmrdata$rvfat_location_cmr_fup___3.factor = factor(cmrdata$rvfat_location_cmr_fup___3,levels=c("0","1"))
cmrdata$rvfat_location_cmr_fup___4.factor = factor(cmrdata$rvfat_location_cmr_fup___4,levels=c("0","1"))
cmrdata$rvfat_location_cmr_fup___5.factor = factor(cmrdata$rvfat_location_cmr_fup___5,levels=c("0","1"))
cmrdata$rvfat_location_cmr_fup___6.factor = factor(cmrdata$rvfat_location_cmr_fup___6,levels=c("0","1"))
cmrdata$rvfat_location_cmr_fup___7.factor = factor(cmrdata$rvfat_location_cmr_fup___7,levels=c("0","1"))
cmrdata$rvfat_location_cmr_fup___8.factor = factor(cmrdata$rvfat_location_cmr_fup___8,levels=c("0","1"))
cmrdata$lge_cmr_fup.factor = factor(cmrdata$lge_cmr_fup,levels=c("1","0"))
cmrdata$ring_lge_cmr_fup.factor = factor(cmrdata$ring_lge_cmr_fup,levels=c("1","0"))
cmrdata$lge1_fup___1.factor = factor(cmrdata$lge1_fup___1,levels=c("0","1"))
cmrdata$lge1_fup___2.factor = factor(cmrdata$lge1_fup___2,levels=c("0","1"))
cmrdata$lge1_fup___3.factor = factor(cmrdata$lge1_fup___3,levels=c("0","1"))
cmrdata$lge1_fup___4.factor = factor(cmrdata$lge1_fup___4,levels=c("0","1"))
cmrdata$lge1_fup___5.factor = factor(cmrdata$lge1_fup___5,levels=c("0","1"))
cmrdata$lge2_fup___1.factor = factor(cmrdata$lge2_fup___1,levels=c("0","1"))
cmrdata$lge2_fup___2.factor = factor(cmrdata$lge2_fup___2,levels=c("0","1"))
cmrdata$lge2_fup___3.factor = factor(cmrdata$lge2_fup___3,levels=c("0","1"))
cmrdata$lge2_fup___4.factor = factor(cmrdata$lge2_fup___4,levels=c("0","1"))
cmrdata$lge2_fup___5.factor = factor(cmrdata$lge2_fup___5,levels=c("0","1"))
cmrdata$lge3_fup___1.factor = factor(cmrdata$lge3_fup___1,levels=c("0","1"))
cmrdata$lge3_fup___2.factor = factor(cmrdata$lge3_fup___2,levels=c("0","1"))
cmrdata$lge3_fup___3.factor = factor(cmrdata$lge3_fup___3,levels=c("0","1"))
cmrdata$lge3_fup___4.factor = factor(cmrdata$lge3_fup___4,levels=c("0","1"))
cmrdata$lge3_fup___5.factor = factor(cmrdata$lge3_fup___5,levels=c("0","1"))
cmrdata$lge4_fup___1.factor = factor(cmrdata$lge4_fup___1,levels=c("0","1"))
cmrdata$lge4_fup___2.factor = factor(cmrdata$lge4_fup___2,levels=c("0","1"))
cmrdata$lge4_fup___3.factor = factor(cmrdata$lge4_fup___3,levels=c("0","1"))
cmrdata$lge4_fup___4.factor = factor(cmrdata$lge4_fup___4,levels=c("0","1"))
cmrdata$lge4_fup___5.factor = factor(cmrdata$lge4_fup___5,levels=c("0","1"))
cmrdata$lge5_fup___1.factor = factor(cmrdata$lge5_fup___1,levels=c("0","1"))
cmrdata$lge5_fup___2.factor = factor(cmrdata$lge5_fup___2,levels=c("0","1"))
cmrdata$lge5_fup___3.factor = factor(cmrdata$lge5_fup___3,levels=c("0","1"))
cmrdata$lge5_fup___4.factor = factor(cmrdata$lge5_fup___4,levels=c("0","1"))
cmrdata$lge5_fup___5.factor = factor(cmrdata$lge5_fup___5,levels=c("0","1"))
cmrdata$lge6_fup___1.factor = factor(cmrdata$lge6_fup___1,levels=c("0","1"))
cmrdata$lge6_fup___2.factor = factor(cmrdata$lge6_fup___2,levels=c("0","1"))
cmrdata$lge6_fup___3.factor = factor(cmrdata$lge6_fup___3,levels=c("0","1"))
cmrdata$lge6_fup___4.factor = factor(cmrdata$lge6_fup___4,levels=c("0","1"))
cmrdata$lge6_fup___5.factor = factor(cmrdata$lge6_fup___5,levels=c("0","1"))
cmrdata$lge7_fup___1.factor = factor(cmrdata$lge7_fup___1,levels=c("0","1"))
cmrdata$lge7_fup___2.factor = factor(cmrdata$lge7_fup___2,levels=c("0","1"))
cmrdata$lge7_fup___3.factor = factor(cmrdata$lge7_fup___3,levels=c("0","1"))
cmrdata$lge7_fup___4.factor = factor(cmrdata$lge7_fup___4,levels=c("0","1"))
cmrdata$lge7_fup___5.factor = factor(cmrdata$lge7_fup___5,levels=c("0","1"))
cmrdata$lge8_fup___1.factor = factor(cmrdata$lge8_fup___1,levels=c("0","1"))
cmrdata$lge8_fup___2.factor = factor(cmrdata$lge8_fup___2,levels=c("0","1"))
cmrdata$lge8_fup___3.factor = factor(cmrdata$lge8_fup___3,levels=c("0","1"))
cmrdata$lge8_fup___4.factor = factor(cmrdata$lge8_fup___4,levels=c("0","1"))
cmrdata$lge8_fup___5.factor = factor(cmrdata$lge8_fup___5,levels=c("0","1"))
cmrdata$lge9_fup___1.factor = factor(cmrdata$lge9_fup___1,levels=c("0","1"))
cmrdata$lge9_fup___2.factor = factor(cmrdata$lge9_fup___2,levels=c("0","1"))
cmrdata$lge9_fup___3.factor = factor(cmrdata$lge9_fup___3,levels=c("0","1"))
cmrdata$lge9_fup___4.factor = factor(cmrdata$lge9_fup___4,levels=c("0","1"))
cmrdata$lge9_fup___5.factor = factor(cmrdata$lge9_fup___5,levels=c("0","1"))
cmrdata$lge10_fup___1.factor = factor(cmrdata$lge10_fup___1,levels=c("0","1"))
cmrdata$lge10_fup___2.factor = factor(cmrdata$lge10_fup___2,levels=c("0","1"))
cmrdata$lge10_fup___3.factor = factor(cmrdata$lge10_fup___3,levels=c("0","1"))
cmrdata$lge10_fup___4.factor = factor(cmrdata$lge10_fup___4,levels=c("0","1"))
cmrdata$lge10_fup___5.factor = factor(cmrdata$lge10_fup___5,levels=c("0","1"))
cmrdata$lge11_fup___1.factor = factor(cmrdata$lge11_fup___1,levels=c("0","1"))
cmrdata$lge11_fup___2.factor = factor(cmrdata$lge11_fup___2,levels=c("0","1"))
cmrdata$lge11_fup___3.factor = factor(cmrdata$lge11_fup___3,levels=c("0","1"))
cmrdata$lge11_fup___4.factor = factor(cmrdata$lge11_fup___4,levels=c("0","1"))
cmrdata$lge11_fup___5.factor = factor(cmrdata$lge11_fup___5,levels=c("0","1"))
cmrdata$lge12_fup___1.factor = factor(cmrdata$lge12_fup___1,levels=c("0","1"))
cmrdata$lge12_fup___2.factor = factor(cmrdata$lge12_fup___2,levels=c("0","1"))
cmrdata$lge12_fup___3.factor = factor(cmrdata$lge12_fup___3,levels=c("0","1"))
cmrdata$lge12_fup___4.factor = factor(cmrdata$lge12_fup___4,levels=c("0","1"))
cmrdata$lge12_fup___5.factor = factor(cmrdata$lge12_fup___5,levels=c("0","1"))
cmrdata$lge13_fup___1.factor = factor(cmrdata$lge13_fup___1,levels=c("0","1"))
cmrdata$lge13_fup___2.factor = factor(cmrdata$lge13_fup___2,levels=c("0","1"))
cmrdata$lge13_fup___3.factor = factor(cmrdata$lge13_fup___3,levels=c("0","1"))
cmrdata$lge13_fup___4.factor = factor(cmrdata$lge13_fup___4,levels=c("0","1"))
cmrdata$lge13_fup___5.factor = factor(cmrdata$lge13_fup___5,levels=c("0","1"))
cmrdata$lge14_fup___1.factor = factor(cmrdata$lge14_fup___1,levels=c("0","1"))
cmrdata$lge14_fup___2.factor = factor(cmrdata$lge14_fup___2,levels=c("0","1"))
cmrdata$lge14_fup___3.factor = factor(cmrdata$lge14_fup___3,levels=c("0","1"))
cmrdata$lge14_fup___4.factor = factor(cmrdata$lge14_fup___4,levels=c("0","1"))
cmrdata$lge14_fup___5.factor = factor(cmrdata$lge14_fup___5,levels=c("0","1"))
cmrdata$lge15_fup___1.factor = factor(cmrdata$lge15_fup___1,levels=c("0","1"))
cmrdata$lge15_fup___2.factor = factor(cmrdata$lge15_fup___2,levels=c("0","1"))
cmrdata$lge15_fup___3.factor = factor(cmrdata$lge15_fup___3,levels=c("0","1"))
cmrdata$lge15_fup___4.factor = factor(cmrdata$lge15_fup___4,levels=c("0","1"))
cmrdata$lge15_fup___5.factor = factor(cmrdata$lge15_fup___5,levels=c("0","1"))
cmrdata$lge16_fup___1.factor = factor(cmrdata$lge16_fup___1,levels=c("0","1"))
cmrdata$lge16_fup___2.factor = factor(cmrdata$lge16_fup___2,levels=c("0","1"))
cmrdata$lge16_fup___3.factor = factor(cmrdata$lge16_fup___3,levels=c("0","1"))
cmrdata$lge16_fup___4.factor = factor(cmrdata$lge16_fup___4,levels=c("0","1"))
cmrdata$lge16_fup___5.factor = factor(cmrdata$lge16_fup___5,levels=c("0","1"))
cmrdata$lge17_fup___1.factor = factor(cmrdata$lge17_fup___1,levels=c("0","1"))
cmrdata$lge17_fup___2.factor = factor(cmrdata$lge17_fup___2,levels=c("0","1"))
cmrdata$lge17_fup___3.factor = factor(cmrdata$lge17_fup___3,levels=c("0","1"))
cmrdata$lge17_fup___4.factor = factor(cmrdata$lge17_fup___4,levels=c("0","1"))
cmrdata$lge17_fup___5.factor = factor(cmrdata$lge17_fup___5,levels=c("0","1"))
cmrdata$rvlge_cmr_fup.factor = factor(cmrdata$rvlge_cmr_fup,levels=c("1","0"))
cmrdata$rvlge_location_cmr_fup___1.factor = factor(cmrdata$rvlge_location_cmr_fup___1,levels=c("0","1"))
cmrdata$rvlge_location_cmr_fup___2.factor = factor(cmrdata$rvlge_location_cmr_fup___2,levels=c("0","1"))
cmrdata$rvlge_location_cmr_fup___3.factor = factor(cmrdata$rvlge_location_cmr_fup___3,levels=c("0","1"))
cmrdata$rvlge_location_cmr_fup___4.factor = factor(cmrdata$rvlge_location_cmr_fup___4,levels=c("0","1"))
cmrdata$rvlge_location_cmr_fup___5.factor = factor(cmrdata$rvlge_location_cmr_fup___5,levels=c("0","1"))
cmrdata$rvlge_location_cmr_fup___6.factor = factor(cmrdata$rvlge_location_cmr_fup___6,levels=c("0","1"))
cmrdata$rvlge_location_cmr_fup___7.factor = factor(cmrdata$rvlge_location_cmr_fup___7,levels=c("0","1"))
cmrdata$rvlge_location_cmr_fup___8.factor = factor(cmrdata$rvlge_location_cmr_fup___8,levels=c("0","1"))
cmrdata$t1_executed_cmr_fup.factor = factor(cmrdata$t1_executed_cmr_fup,levels=c("1","0"))
cmrdata$t1_slices_cmr_fup.factor = factor(cmrdata$t1_slices_cmr_fup,levels=c("1","2","3","4"))
cmrdata$t1_mapping_elevated_cmr_fup.factor = factor(cmrdata$t1_mapping_elevated_cmr_fup,levels=c("1","0"))
cmrdata$high_t1_location_cmr_fup___1.factor = factor(cmrdata$high_t1_location_cmr_fup___1,levels=c("0","1"))
cmrdata$high_t1_location_cmr_fup___2.factor = factor(cmrdata$high_t1_location_cmr_fup___2,levels=c("0","1"))
cmrdata$high_t1_location_cmr_fup___3.factor = factor(cmrdata$high_t1_location_cmr_fup___3,levels=c("0","1"))
cmrdata$high_t1_location_cmr_fup___4.factor = factor(cmrdata$high_t1_location_cmr_fup___4,levels=c("0","1"))
cmrdata$high_t1_location_cmr_fup___5.factor = factor(cmrdata$high_t1_location_cmr_fup___5,levels=c("0","1"))
cmrdata$high_t1_location_cmr_fup___6.factor = factor(cmrdata$high_t1_location_cmr_fup___6,levels=c("0","1"))
cmrdata$high_t1_location_cmr_fup___7.factor = factor(cmrdata$high_t1_location_cmr_fup___7,levels=c("0","1"))
cmrdata$high_t1_location_cmr_fup___8.factor = factor(cmrdata$high_t1_location_cmr_fup___8,levels=c("0","1"))
cmrdata$high_t1_location_cmr_fup___9.factor = factor(cmrdata$high_t1_location_cmr_fup___9,levels=c("0","1"))
cmrdata$high_t1_location_cmr_fup___10.factor = factor(cmrdata$high_t1_location_cmr_fup___10,levels=c("0","1"))
cmrdata$high_t1_location_cmr_fup___11.factor = factor(cmrdata$high_t1_location_cmr_fup___11,levels=c("0","1"))
cmrdata$high_t1_location_cmr_fup___12.factor = factor(cmrdata$high_t1_location_cmr_fup___12,levels=c("0","1"))
cmrdata$high_t1_location_cmr_fup___13.factor = factor(cmrdata$high_t1_location_cmr_fup___13,levels=c("0","1"))
cmrdata$high_t1_location_cmr_fup___14.factor = factor(cmrdata$high_t1_location_cmr_fup___14,levels=c("0","1"))
cmrdata$high_t1_location_cmr_fup___15.factor = factor(cmrdata$high_t1_location_cmr_fup___15,levels=c("0","1"))
cmrdata$high_t1_location_cmr_fup___16.factor = factor(cmrdata$high_t1_location_cmr_fup___16,levels=c("0","1"))
cmrdata$high_t1_location_cmr_fup___17.factor = factor(cmrdata$high_t1_location_cmr_fup___17,levels=c("0","1"))
cmrdata$oedema_executed_cmr_fup.factor = factor(cmrdata$oedema_executed_cmr_fup,levels=c("1","0"))
cmrdata$oedema_slices_cmr_fup.factor = factor(cmrdata$oedema_slices_cmr_fup,levels=c("1","2","3","4"))
cmrdata$stir_oedema_ratio_cmr_fup.factor = factor(cmrdata$stir_oedema_ratio_cmr_fup,levels=c("1","0"))
cmrdata$high_stir_location_cmr_fup___1.factor = factor(cmrdata$high_stir_location_cmr_fup___1,levels=c("0","1"))
cmrdata$high_stir_location_cmr_fup___2.factor = factor(cmrdata$high_stir_location_cmr_fup___2,levels=c("0","1"))
cmrdata$high_stir_location_cmr_fup___3.factor = factor(cmrdata$high_stir_location_cmr_fup___3,levels=c("0","1"))
cmrdata$high_stir_location_cmr_fup___4.factor = factor(cmrdata$high_stir_location_cmr_fup___4,levels=c("0","1"))
cmrdata$high_stir_location_cmr_fup___5.factor = factor(cmrdata$high_stir_location_cmr_fup___5,levels=c("0","1"))
cmrdata$high_stir_location_cmr_fup___6.factor = factor(cmrdata$high_stir_location_cmr_fup___6,levels=c("0","1"))
cmrdata$high_stir_location_cmr_fup___7.factor = factor(cmrdata$high_stir_location_cmr_fup___7,levels=c("0","1"))
cmrdata$high_stir_location_cmr_fup___8.factor = factor(cmrdata$high_stir_location_cmr_fup___8,levels=c("0","1"))
cmrdata$high_stir_location_cmr_fup___9.factor = factor(cmrdata$high_stir_location_cmr_fup___9,levels=c("0","1"))
cmrdata$high_stir_location_cmr_fup___10.factor = factor(cmrdata$high_stir_location_cmr_fup___10,levels=c("0","1"))
cmrdata$high_stir_location_cmr_fup___11.factor = factor(cmrdata$high_stir_location_cmr_fup___11,levels=c("0","1"))
cmrdata$high_stir_location_cmr_fup___12.factor = factor(cmrdata$high_stir_location_cmr_fup___12,levels=c("0","1"))
cmrdata$high_stir_location_cmr_fup___13.factor = factor(cmrdata$high_stir_location_cmr_fup___13,levels=c("0","1"))
cmrdata$high_stir_location_cmr_fup___14.factor = factor(cmrdata$high_stir_location_cmr_fup___14,levels=c("0","1"))
cmrdata$high_stir_location_cmr_fup___15.factor = factor(cmrdata$high_stir_location_cmr_fup___15,levels=c("0","1"))
cmrdata$high_stir_location_cmr_fup___16.factor = factor(cmrdata$high_stir_location_cmr_fup___16,levels=c("0","1"))
cmrdata$high_stir_location_cmr_fup___17.factor = factor(cmrdata$high_stir_location_cmr_fup___17,levels=c("0","1"))
cmrdata$t2_mapping_elevated_cmr_fup.factor = factor(cmrdata$t2_mapping_elevated_cmr_fup,levels=c("1","0"))
cmrdata$high_t2_location_cmr_fup___1.factor = factor(cmrdata$high_t2_location_cmr_fup___1,levels=c("0","1"))
cmrdata$high_t2_location_cmr_fup___2.factor = factor(cmrdata$high_t2_location_cmr_fup___2,levels=c("0","1"))
cmrdata$high_t2_location_cmr_fup___3.factor = factor(cmrdata$high_t2_location_cmr_fup___3,levels=c("0","1"))
cmrdata$high_t2_location_cmr_fup___4.factor = factor(cmrdata$high_t2_location_cmr_fup___4,levels=c("0","1"))
cmrdata$high_t2_location_cmr_fup___5.factor = factor(cmrdata$high_t2_location_cmr_fup___5,levels=c("0","1"))
cmrdata$high_t2_location_cmr_fup___6.factor = factor(cmrdata$high_t2_location_cmr_fup___6,levels=c("0","1"))
cmrdata$high_t2_location_cmr_fup___7.factor = factor(cmrdata$high_t2_location_cmr_fup___7,levels=c("0","1"))
cmrdata$high_t2_location_cmr_fup___8.factor = factor(cmrdata$high_t2_location_cmr_fup___8,levels=c("0","1"))
cmrdata$high_t2_location_cmr_fup___9.factor = factor(cmrdata$high_t2_location_cmr_fup___9,levels=c("0","1"))
cmrdata$high_t2_location_cmr_fup___10.factor = factor(cmrdata$high_t2_location_cmr_fup___10,levels=c("0","1"))
cmrdata$high_t2_location_cmr_fup___11.factor = factor(cmrdata$high_t2_location_cmr_fup___11,levels=c("0","1"))
cmrdata$high_t2_location_cmr_fup___12.factor = factor(cmrdata$high_t2_location_cmr_fup___12,levels=c("0","1"))
cmrdata$high_t2_location_cmr_fup___13.factor = factor(cmrdata$high_t2_location_cmr_fup___13,levels=c("0","1"))
cmrdata$high_t2_location_cmr_fup___14.factor = factor(cmrdata$high_t2_location_cmr_fup___14,levels=c("0","1"))
cmrdata$high_t2_location_cmr_fup___15.factor = factor(cmrdata$high_t2_location_cmr_fup___15,levels=c("0","1"))
cmrdata$high_t2_location_cmr_fup___16.factor = factor(cmrdata$high_t2_location_cmr_fup___16,levels=c("0","1"))
cmrdata$high_t2_location_cmr_fup___17.factor = factor(cmrdata$high_t2_location_cmr_fup___17,levels=c("0","1"))
cmrdata$vers_peri_cmr_fup.factor = factor(cmrdata$vers_peri_cmr_fup,levels=c("1","0"))
cmrdata$followup_cmr_complete.factor = factor(cmrdata$followup_cmr_complete,levels=c("0","1","2"))
cmrdata$followup_cmr_strain_complete.factor = factor(cmrdata$followup_cmr_strain_complete,levels=c("0","1","2"))
cmrdata$death.factor = factor(cmrdata$death,levels=c("1","0"))
cmrdata$cause_of_death.factor = factor(cmrdata$cause_of_death,levels=c("1","2","3","4"))
cmrdata$new_admission_post_cmr.factor = factor(cmrdata$new_admission_post_cmr,levels=c("1","0"))
cmrdata$va_fup.factor = factor(cmrdata$va_fup,levels=c("1","0"))
cmrdata$icd_fup.factor = factor(cmrdata$icd_fup,levels=c("1","0"))
cmrdata$hotphase_admission.factor = factor(cmrdata$hotphase_admission,levels=c("1","0"))
cmrdata$events_complete.factor = factor(cmrdata$events_complete,levels=c("0","1","2"))

levels(cmrdata$gender.factor)=c("Male","Female")
levels(cmrdata$patient_data_complete.factor)=c("Incomplete","Unverified","Complete")
levels(cmrdata$patient_ethnicity.factor)=c("white","asian","black")
levels(cmrdata$phenotype.factor)=c("Negative","Positive")
levels(cmrdata$syncope.factor)=c("Yes","No")
levels(cmrdata$pvc.factor)=c("Yes","No")
levels(cmrdata$frequent_pvc.factor)=c("Yes","No")
levels(cmrdata$va.factor)=c("none","sustained VT","VF","aborted SCD")
levels(cmrdata$atrial_fibrillation.factor)=c("no","paroxysmal","persistent/permanent")
levels(cmrdata$atrial_flutter.factor)=c("no","paroxysmal","persistent/permanent")
levels(cmrdata$pm.factor)=c("Yes","No")
levels(cmrdata$crt.factor)=c("Yes","No")
levels(cmrdata$icd.factor)=c("no","primary","secondary")
levels(cmrdata$baseline_complete.factor)=c("Incomplete","Unverified","Complete")
levels(cmrdata$proband.factor)=c("Yes","No")
levels(cmrdata$firstdegree.factor)=c("Yes","No")
levels(cmrdata$first_degree_type.factor)=c("mother","father","brother","sister","son or daughter")
levels(cmrdata$gene.factor)=c("PKP","DSP","DSG","DSC","FLNC","Genotype negative","No genetic test")
levels(cmrdata$variant_type.factor)=c("PLP","VUS")
levels(cmrdata$other_variant_type.factor)=c("PLP","VUS")
levels(cmrdata$genetics_complete.factor)=c("Incomplete","Unverified","Complete")
levels(cmrdata$t_wave_inversion___1.factor)=c("Unchecked","Checked")
levels(cmrdata$t_wave_inversion___2.factor)=c("Unchecked","Checked")
levels(cmrdata$t_wave_inversion___3.factor)=c("Unchecked","Checked")
levels(cmrdata$rbbb.factor)=c("Yes","No")
levels(cmrdata$epsilon_wave.factor)=c("Yes","No")
levels(cmrdata$qrs_prolongation.factor)=c("Yes","No")
levels(cmrdata$baseline_ecg_complete.factor)=c("Incomplete","Unverified","Complete")
levels(cmrdata$cmr_involvement.factor)=c("No involvement","RV involvement","LV involvement","Biventricular involvement")
levels(cmrdata$akinesia_cmr.factor)=c("Yes","No")
levels(cmrdata$akinesia_seg_cmr___1.factor)=c("Unchecked","Checked")
levels(cmrdata$akinesia_seg_cmr___2.factor)=c("Unchecked","Checked")
levels(cmrdata$akinesia_seg_cmr___3.factor)=c("Unchecked","Checked")
levels(cmrdata$akinesia_seg_cmr___4.factor)=c("Unchecked","Checked")
levels(cmrdata$akinesia_seg_cmr___5.factor)=c("Unchecked","Checked")
levels(cmrdata$akinesia_seg_cmr___6.factor)=c("Unchecked","Checked")
levels(cmrdata$akinesia_seg_cmr___7.factor)=c("Unchecked","Checked")
levels(cmrdata$akinesia_seg_cmr___8.factor)=c("Unchecked","Checked")
levels(cmrdata$akinesia_seg_cmr___9.factor)=c("Unchecked","Checked")
levels(cmrdata$akinesia_seg_cmr___10.factor)=c("Unchecked","Checked")
levels(cmrdata$akinesia_seg_cmr___11.factor)=c("Unchecked","Checked")
levels(cmrdata$akinesia_seg_cmr___12.factor)=c("Unchecked","Checked")
levels(cmrdata$akinesia_seg_cmr___13.factor)=c("Unchecked","Checked")
levels(cmrdata$akinesia_seg_cmr___14.factor)=c("Unchecked","Checked")
levels(cmrdata$akinesia_seg_cmr___15.factor)=c("Unchecked","Checked")
levels(cmrdata$akinesia_seg_cmr___16.factor)=c("Unchecked","Checked")
levels(cmrdata$akinesia_seg_cmr___17.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_cmr.factor)=c("Yes","No")
levels(cmrdata$hypokinesia_seg_cmr___1.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_seg_cmr___2.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_seg_cmr___3.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_seg_cmr___4.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_seg_cmr___5.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_seg_cmr___6.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_seg_cmr___7.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_seg_cmr___8.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_seg_cmr___9.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_seg_cmr___10.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_seg_cmr___11.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_seg_cmr___12.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_seg_cmr___13.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_seg_cmr___14.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_seg_cmr___15.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_seg_cmr___16.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_seg_cmr___17.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_cmr.factor)=c("Yes","No")
levels(cmrdata$dyskinesia_seg_cmr___1.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_seg_cmr___2.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_seg_cmr___3.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_seg_cmr___4.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_seg_cmr___5.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_seg_cmr___6.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_seg_cmr___7.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_seg_cmr___8.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_seg_cmr___9.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_seg_cmr___10.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_seg_cmr___11.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_seg_cmr___12.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_seg_cmr___13.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_seg_cmr___14.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_seg_cmr___15.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_seg_cmr___16.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_seg_cmr___17.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_cmr.factor)=c("Yes","No")
levels(cmrdata$aneurysm_seg_cmr___1.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_seg_cmr___2.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_seg_cmr___3.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_seg_cmr___4.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_seg_cmr___5.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_seg_cmr___6.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_seg_cmr___7.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_seg_cmr___8.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_seg_cmr___9.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_seg_cmr___10.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_seg_cmr___11.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_seg_cmr___12.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_seg_cmr___13.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_seg_cmr___14.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_seg_cmr___15.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_seg_cmr___16.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_seg_cmr___17.factor)=c("Unchecked","Checked")
levels(cmrdata$thrombus_cmr.factor)=c("Yes","No")
levels(cmrdata$aneurysm_rv_cmr.factor)=c("Yes","No")
levels(cmrdata$rvwma_cmr.factor)=c("Yes","No")
levels(cmrdata$rvwma1___2.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma1___3.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma1___4.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma2___2.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma2___3.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma2___4.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma3___2.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma3___3.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma3___4.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma4___2.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma4___3.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma4___4.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma5___2.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma5___3.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma5___4.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma6___2.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma6___3.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma6___4.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma7___2.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma7___3.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma7___4.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma8___2.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma8___3.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma8___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fatinf_cmr.factor)=c("Yes","No")
levels(cmrdata$fat_visualized_in___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat_visualized_in___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat_visualized_in___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat_visualized_in___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat1___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat1___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat1___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat1___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat1___5.factor)=c("Unchecked","Checked")
levels(cmrdata$fat2___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat2___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat2___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat2___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat2___5.factor)=c("Unchecked","Checked")
levels(cmrdata$fat3___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat3___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat3___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat3___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat3___5.factor)=c("Unchecked","Checked")
levels(cmrdata$fat4___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat4___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat4___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat4___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat4___5.factor)=c("Unchecked","Checked")
levels(cmrdata$fat5___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat5___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat5___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat5___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat5___5.factor)=c("Unchecked","Checked")
levels(cmrdata$fat6___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat6___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat6___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat6___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat6___5.factor)=c("Unchecked","Checked")
levels(cmrdata$fat7___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat7___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat7___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat7___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat7___5.factor)=c("Unchecked","Checked")
levels(cmrdata$fat8___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat8___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat8___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat8___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat8___5.factor)=c("Unchecked","Checked")
levels(cmrdata$fat9___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat9___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat9___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat9___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat9___5.factor)=c("Unchecked","Checked")
levels(cmrdata$fat10___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat10___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat10___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat10___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat10___5.factor)=c("Unchecked","Checked")
levels(cmrdata$fat11___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat11___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat11___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat11___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat11___5.factor)=c("Unchecked","Checked")
levels(cmrdata$fat12___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat12___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat12___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat12___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat12___5.factor)=c("Unchecked","Checked")
levels(cmrdata$fat13___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat13___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat13___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat13___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat13___5.factor)=c("Unchecked","Checked")
levels(cmrdata$fat14___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat14___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat14___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat14___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat14___5.factor)=c("Unchecked","Checked")
levels(cmrdata$fat15___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat15___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat15___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat15___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat15___5.factor)=c("Unchecked","Checked")
levels(cmrdata$fat16___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat16___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat16___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat16___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat16___5.factor)=c("Unchecked","Checked")
levels(cmrdata$fat17___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat17___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat17___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat17___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat17___5.factor)=c("Unchecked","Checked")
levels(cmrdata$rvfat_cmr.factor)=c("Yes","No")
levels(cmrdata$rvfat_location_cmr___1.factor)=c("Unchecked","Checked")
levels(cmrdata$rvfat_location_cmr___2.factor)=c("Unchecked","Checked")
levels(cmrdata$rvfat_location_cmr___3.factor)=c("Unchecked","Checked")
levels(cmrdata$rvfat_location_cmr___4.factor)=c("Unchecked","Checked")
levels(cmrdata$rvfat_location_cmr___5.factor)=c("Unchecked","Checked")
levels(cmrdata$rvfat_location_cmr___6.factor)=c("Unchecked","Checked")
levels(cmrdata$rvfat_location_cmr___7.factor)=c("Unchecked","Checked")
levels(cmrdata$rvfat_location_cmr___8.factor)=c("Unchecked","Checked")
levels(cmrdata$lge_cmr.factor)=c("Yes","No")
levels(cmrdata$ring_lge_cmr.factor)=c("Yes","No")
levels(cmrdata$lge1___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge1___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge1___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge1___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge1___5.factor)=c("Unchecked","Checked")
levels(cmrdata$lge2___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge2___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge2___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge2___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge2___5.factor)=c("Unchecked","Checked")
levels(cmrdata$lge3___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge3___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge3___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge3___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge3___5.factor)=c("Unchecked","Checked")
levels(cmrdata$lge4___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge4___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge4___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge4___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge4___5.factor)=c("Unchecked","Checked")
levels(cmrdata$lge5___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge5___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge5___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge5___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge5___5.factor)=c("Unchecked","Checked")
levels(cmrdata$lge6___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge6___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge6___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge6___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge6___5.factor)=c("Unchecked","Checked")
levels(cmrdata$lge7___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge7___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge7___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge7___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge7___5.factor)=c("Unchecked","Checked")
levels(cmrdata$lge8___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge8___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge8___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge8___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge8___5.factor)=c("Unchecked","Checked")
levels(cmrdata$lge9___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge9___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge9___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge9___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge9___5.factor)=c("Unchecked","Checked")
levels(cmrdata$lge10___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge10___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge10___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge10___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge10___5.factor)=c("Unchecked","Checked")
levels(cmrdata$lge11___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge11___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge11___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge11___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge11___5.factor)=c("Unchecked","Checked")
levels(cmrdata$lge12___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge12___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge12___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge12___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge12___5.factor)=c("Unchecked","Checked")
levels(cmrdata$lge13___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge13___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge13___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge13___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge13___5.factor)=c("Unchecked","Checked")
levels(cmrdata$lge14___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge14___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge14___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge14___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge14___5.factor)=c("Unchecked","Checked")
levels(cmrdata$lge15___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge15___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge15___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge15___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge15___5.factor)=c("Unchecked","Checked")
levels(cmrdata$lge16___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge16___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge16___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge16___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge16___5.factor)=c("Unchecked","Checked")
levels(cmrdata$lge17___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge17___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge17___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge17___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge17___5.factor)=c("Unchecked","Checked")
levels(cmrdata$rvlge_cmr.factor)=c("Yes","No")
levels(cmrdata$rvlge_location_cmr___1.factor)=c("Unchecked","Checked")
levels(cmrdata$rvlge_location_cmr___2.factor)=c("Unchecked","Checked")
levels(cmrdata$rvlge_location_cmr___3.factor)=c("Unchecked","Checked")
levels(cmrdata$rvlge_location_cmr___4.factor)=c("Unchecked","Checked")
levels(cmrdata$rvlge_location_cmr___5.factor)=c("Unchecked","Checked")
levels(cmrdata$rvlge_location_cmr___6.factor)=c("Unchecked","Checked")
levels(cmrdata$rvlge_location_cmr___7.factor)=c("Unchecked","Checked")
levels(cmrdata$rvlge_location_cmr___8.factor)=c("Unchecked","Checked")
levels(cmrdata$t1_executed_cmr.factor)=c("Yes","No")
levels(cmrdata$t1_slices_cmr.factor)=c("Mid SA + 4ch","4ch","Mid SA","3-slice SA")
levels(cmrdata$t1_mapping_elevated_cmr.factor)=c("Yes","No")
levels(cmrdata$high_t1_location_cmr___1.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t1_location_cmr___2.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t1_location_cmr___3.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t1_location_cmr___4.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t1_location_cmr___5.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t1_location_cmr___6.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t1_location_cmr___7.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t1_location_cmr___8.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t1_location_cmr___9.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t1_location_cmr___10.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t1_location_cmr___11.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t1_location_cmr___12.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t1_location_cmr___13.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t1_location_cmr___14.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t1_location_cmr___15.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t1_location_cmr___16.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t1_location_cmr___17.factor)=c("Unchecked","Checked")
levels(cmrdata$oedema_executed_cmr.factor)=c("Yes","No")
levels(cmrdata$oedema_slices_cmr.factor)=c("Mid SA + 4ch","4ch","Mid SA","3-slice SA")
levels(cmrdata$stir_oedema_ratio_cmr.factor)=c("Yes","No")
levels(cmrdata$high_stir_location_cmr___1.factor)=c("Unchecked","Checked")
levels(cmrdata$high_stir_location_cmr___2.factor)=c("Unchecked","Checked")
levels(cmrdata$high_stir_location_cmr___3.factor)=c("Unchecked","Checked")
levels(cmrdata$high_stir_location_cmr___4.factor)=c("Unchecked","Checked")
levels(cmrdata$high_stir_location_cmr___5.factor)=c("Unchecked","Checked")
levels(cmrdata$high_stir_location_cmr___6.factor)=c("Unchecked","Checked")
levels(cmrdata$high_stir_location_cmr___7.factor)=c("Unchecked","Checked")
levels(cmrdata$high_stir_location_cmr___8.factor)=c("Unchecked","Checked")
levels(cmrdata$high_stir_location_cmr___9.factor)=c("Unchecked","Checked")
levels(cmrdata$high_stir_location_cmr___10.factor)=c("Unchecked","Checked")
levels(cmrdata$high_stir_location_cmr___11.factor)=c("Unchecked","Checked")
levels(cmrdata$high_stir_location_cmr___12.factor)=c("Unchecked","Checked")
levels(cmrdata$high_stir_location_cmr___13.factor)=c("Unchecked","Checked")
levels(cmrdata$high_stir_location_cmr___14.factor)=c("Unchecked","Checked")
levels(cmrdata$high_stir_location_cmr___15.factor)=c("Unchecked","Checked")
levels(cmrdata$high_stir_location_cmr___16.factor)=c("Unchecked","Checked")
levels(cmrdata$high_stir_location_cmr___17.factor)=c("Unchecked","Checked")
levels(cmrdata$t2_mapping_elevated_cmr.factor)=c("Yes","No")
levels(cmrdata$high_t2_location_cmr___1.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t2_location_cmr___2.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t2_location_cmr___3.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t2_location_cmr___4.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t2_location_cmr___5.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t2_location_cmr___6.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t2_location_cmr___7.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t2_location_cmr___8.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t2_location_cmr___9.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t2_location_cmr___10.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t2_location_cmr___11.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t2_location_cmr___12.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t2_location_cmr___13.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t2_location_cmr___14.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t2_location_cmr___15.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t2_location_cmr___16.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t2_location_cmr___17.factor)=c("Unchecked","Checked")
levels(cmrdata$vers_peri_cmr.factor)=c("Yes","No")
levels(cmrdata$cmr_complete.factor)=c("Incomplete","Unverified","Complete")
levels(cmrdata$cmr_strain_complete.factor)=c("Incomplete","Unverified","Complete")
levels(cmrdata$cmr_involvement_fup.factor)=c("No involvement","RV involvement","LV involvement","Biventricular involvement")
levels(cmrdata$akinesia_cmr_fup.factor)=c("Yes","No")
levels(cmrdata$akinesia_seg_cmr_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$akinesia_seg_cmr_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$akinesia_seg_cmr_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$akinesia_seg_cmr_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$akinesia_seg_cmr_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$akinesia_seg_cmr_fup___6.factor)=c("Unchecked","Checked")
levels(cmrdata$akinesia_seg_cmr_fup___7.factor)=c("Unchecked","Checked")
levels(cmrdata$akinesia_seg_cmr_fup___8.factor)=c("Unchecked","Checked")
levels(cmrdata$akinesia_seg_cmr_fup___9.factor)=c("Unchecked","Checked")
levels(cmrdata$akinesia_seg_cmr_fup___10.factor)=c("Unchecked","Checked")
levels(cmrdata$akinesia_seg_cmr_fup___11.factor)=c("Unchecked","Checked")
levels(cmrdata$akinesia_seg_cmr_fup___12.factor)=c("Unchecked","Checked")
levels(cmrdata$akinesia_seg_cmr_fup___13.factor)=c("Unchecked","Checked")
levels(cmrdata$akinesia_seg_cmr_fup___14.factor)=c("Unchecked","Checked")
levels(cmrdata$akinesia_seg_cmr_fup___15.factor)=c("Unchecked","Checked")
levels(cmrdata$akinesia_seg_cmr_fup___16.factor)=c("Unchecked","Checked")
levels(cmrdata$akinesia_seg_cmr_fup___17.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_cmr_fup.factor)=c("Yes","No")
levels(cmrdata$hypokinesia_seg_cmr_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_seg_cmr_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_seg_cmr_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_seg_cmr_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_seg_cmr_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_seg_cmr_fup___6.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_seg_cmr_fup___7.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_seg_cmr_fup___8.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_seg_cmr_fup___9.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_seg_cmr_fup___10.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_seg_cmr_fup___11.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_seg_cmr_fup___12.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_seg_cmr_fup___13.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_seg_cmr_fup___14.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_seg_cmr_fup___15.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_seg_cmr_fup___16.factor)=c("Unchecked","Checked")
levels(cmrdata$hypokinesia_seg_cmr_fup___17.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_cmr_fup.factor)=c("Yes","No")
levels(cmrdata$dyskinesia_seg_cmr_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_seg_cmr_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_seg_cmr_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_seg_cmr_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_seg_cmr_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_seg_cmr_fup___6.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_seg_cmr_fup___7.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_seg_cmr_fup___8.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_seg_cmr_fup___9.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_seg_cmr_fup___10.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_seg_cmr_fup___11.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_seg_cmr_fup___12.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_seg_cmr_fup___13.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_seg_cmr_fup___14.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_seg_cmr_fup___15.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_seg_cmr_fup___16.factor)=c("Unchecked","Checked")
levels(cmrdata$dyskinesia_seg_cmr_fup___17.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_cmr_fup.factor)=c("Yes","No")
levels(cmrdata$aneurysm_seg_cmr_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_seg_cmr_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_seg_cmr_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_seg_cmr_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_seg_cmr_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_seg_cmr_fup___6.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_seg_cmr_fup___7.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_seg_cmr_fup___8.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_seg_cmr_fup___9.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_seg_cmr_fup___10.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_seg_cmr_fup___11.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_seg_cmr_fup___12.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_seg_cmr_fup___13.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_seg_cmr_fup___14.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_seg_cmr_fup___15.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_seg_cmr_fup___16.factor)=c("Unchecked","Checked")
levels(cmrdata$aneurysm_seg_cmr_fup___17.factor)=c("Unchecked","Checked")
levels(cmrdata$thrombus_cmr_fup.factor)=c("Yes","No")
levels(cmrdata$aneurysm_rv_cmr_fup.factor)=c("Yes","No")
levels(cmrdata$rvwma_cmr_fup.factor)=c("Yes","No")
levels(cmrdata$rvwma1_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma1_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma1_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma2_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma2_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma2_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma3_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma3_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma3_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma4_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma4_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma4_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma5_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma5_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma5_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma6_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma6_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma6_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma7_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma7_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma7_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma8_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma8_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$rvwma8_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fatinf_cmr_fup.factor)=c("Yes","No")
levels(cmrdata$fat_visualized_in_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat_visualized_in_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat_visualized_in_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat_visualized_in_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat1_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat1_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat1_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat1_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat1_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$fat2_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat2_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat2_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat2_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat2_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$fat3_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat3_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat3_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat3_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat3_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$fat4_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat4_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat4_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat4_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat4_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$fat5_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat5_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat5_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat5_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat5_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$fat6_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat6_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat6_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat6_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat6_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$fat7_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat7_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat7_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat7_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat7_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$fat8_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat8_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat8_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat8_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat8_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$fat9_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat9_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat9_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat9_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat9_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$fat10_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat10_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat10_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat10_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat10_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$fat11_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat11_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat11_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat11_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat11_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$fat12_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat12_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat12_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat12_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat12_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$fat13_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat13_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat13_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat13_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat13_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$fat14_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat14_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat14_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat14_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat14_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$fat15_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat15_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat15_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat15_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat15_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$fat16_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat16_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat16_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat16_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat16_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$fat17_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$fat17_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$fat17_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$fat17_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$fat17_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$rvfat_cmr_fup.factor)=c("Yes","No")
levels(cmrdata$rvfat_location_cmr_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$rvfat_location_cmr_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$rvfat_location_cmr_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$rvfat_location_cmr_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$rvfat_location_cmr_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$rvfat_location_cmr_fup___6.factor)=c("Unchecked","Checked")
levels(cmrdata$rvfat_location_cmr_fup___7.factor)=c("Unchecked","Checked")
levels(cmrdata$rvfat_location_cmr_fup___8.factor)=c("Unchecked","Checked")
levels(cmrdata$lge_cmr_fup.factor)=c("Yes","No")
levels(cmrdata$ring_lge_cmr_fup.factor)=c("Yes","No")
levels(cmrdata$lge1_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge1_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge1_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge1_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge1_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$lge2_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge2_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge2_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge2_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge2_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$lge3_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge3_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge3_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge3_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge3_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$lge4_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge4_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge4_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge4_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge4_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$lge5_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge5_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge5_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge5_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge5_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$lge6_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge6_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge6_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge6_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge6_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$lge7_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge7_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge7_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge7_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge7_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$lge8_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge8_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge8_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge8_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge8_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$lge9_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge9_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge9_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge9_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge9_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$lge10_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge10_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge10_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge10_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge10_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$lge11_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge11_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge11_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge11_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge11_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$lge12_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge12_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge12_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge12_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge12_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$lge13_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge13_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge13_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge13_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge13_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$lge14_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge14_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge14_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge14_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge14_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$lge15_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge15_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge15_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge15_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge15_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$lge16_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge16_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge16_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge16_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge16_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$lge17_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$lge17_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$lge17_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$lge17_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$lge17_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$rvlge_cmr_fup.factor)=c("Yes","No")
levels(cmrdata$rvlge_location_cmr_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$rvlge_location_cmr_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$rvlge_location_cmr_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$rvlge_location_cmr_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$rvlge_location_cmr_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$rvlge_location_cmr_fup___6.factor)=c("Unchecked","Checked")
levels(cmrdata$rvlge_location_cmr_fup___7.factor)=c("Unchecked","Checked")
levels(cmrdata$rvlge_location_cmr_fup___8.factor)=c("Unchecked","Checked")
levels(cmrdata$t1_executed_cmr_fup.factor)=c("Yes","No")
levels(cmrdata$t1_slices_cmr_fup.factor)=c("Mid SA + 4ch","4ch","Mid SA","3-slice SA")
levels(cmrdata$t1_mapping_elevated_cmr_fup.factor)=c("Yes","No")
levels(cmrdata$high_t1_location_cmr_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t1_location_cmr_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t1_location_cmr_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t1_location_cmr_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t1_location_cmr_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t1_location_cmr_fup___6.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t1_location_cmr_fup___7.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t1_location_cmr_fup___8.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t1_location_cmr_fup___9.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t1_location_cmr_fup___10.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t1_location_cmr_fup___11.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t1_location_cmr_fup___12.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t1_location_cmr_fup___13.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t1_location_cmr_fup___14.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t1_location_cmr_fup___15.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t1_location_cmr_fup___16.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t1_location_cmr_fup___17.factor)=c("Unchecked","Checked")
levels(cmrdata$oedema_executed_cmr_fup.factor)=c("Yes","No")
levels(cmrdata$oedema_slices_cmr_fup.factor)=c("Mid SA + 4ch","4ch","Mid SA","3-slice SA")
levels(cmrdata$stir_oedema_ratio_cmr_fup.factor)=c("Yes","No")
levels(cmrdata$high_stir_location_cmr_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$high_stir_location_cmr_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$high_stir_location_cmr_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$high_stir_location_cmr_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$high_stir_location_cmr_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$high_stir_location_cmr_fup___6.factor)=c("Unchecked","Checked")
levels(cmrdata$high_stir_location_cmr_fup___7.factor)=c("Unchecked","Checked")
levels(cmrdata$high_stir_location_cmr_fup___8.factor)=c("Unchecked","Checked")
levels(cmrdata$high_stir_location_cmr_fup___9.factor)=c("Unchecked","Checked")
levels(cmrdata$high_stir_location_cmr_fup___10.factor)=c("Unchecked","Checked")
levels(cmrdata$high_stir_location_cmr_fup___11.factor)=c("Unchecked","Checked")
levels(cmrdata$high_stir_location_cmr_fup___12.factor)=c("Unchecked","Checked")
levels(cmrdata$high_stir_location_cmr_fup___13.factor)=c("Unchecked","Checked")
levels(cmrdata$high_stir_location_cmr_fup___14.factor)=c("Unchecked","Checked")
levels(cmrdata$high_stir_location_cmr_fup___15.factor)=c("Unchecked","Checked")
levels(cmrdata$high_stir_location_cmr_fup___16.factor)=c("Unchecked","Checked")
levels(cmrdata$high_stir_location_cmr_fup___17.factor)=c("Unchecked","Checked")
levels(cmrdata$t2_mapping_elevated_cmr_fup.factor)=c("Yes","No")
levels(cmrdata$high_t2_location_cmr_fup___1.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t2_location_cmr_fup___2.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t2_location_cmr_fup___3.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t2_location_cmr_fup___4.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t2_location_cmr_fup___5.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t2_location_cmr_fup___6.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t2_location_cmr_fup___7.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t2_location_cmr_fup___8.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t2_location_cmr_fup___9.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t2_location_cmr_fup___10.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t2_location_cmr_fup___11.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t2_location_cmr_fup___12.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t2_location_cmr_fup___13.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t2_location_cmr_fup___14.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t2_location_cmr_fup___15.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t2_location_cmr_fup___16.factor)=c("Unchecked","Checked")
levels(cmrdata$high_t2_location_cmr_fup___17.factor)=c("Unchecked","Checked")
levels(cmrdata$vers_peri_cmr_fup.factor)=c("Yes","No")
levels(cmrdata$followup_cmr_complete.factor)=c("Incomplete","Unverified","Complete")
levels(cmrdata$followup_cmr_strain_complete.factor)=c("Incomplete","Unverified","Complete")
levels(cmrdata$death.factor)=c("Yes","No")
levels(cmrdata$cause_of_death.factor)=c("cardiac","vascular-non cardiac","non cardiovascular","unclear")
levels(cmrdata$new_admission_post_cmr.factor)=c("Yes","No")
levels(cmrdata$va_fup.factor)=c("Yes","No")
levels(cmrdata$icd_fup.factor)=c("Yes","No")
levels(cmrdata$hotphase_admission.factor)=c("Yes","No")
levels(cmrdata$events_complete.factor)=c("Incomplete","Unverified","Complete")
