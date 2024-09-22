# RedCAP CSV template Compatibility
- For CViBaker to work, you need to feed the app with a compatible CSV file. 
- This means that the CSV file must be generated from a REDCap project including any of the variables listed in the table below. 
- An example [template file](RedCAP/Example_template.csv) and [data dictionary](RedCAP/Example_DataDictionary.csv) are provided with the repository.

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