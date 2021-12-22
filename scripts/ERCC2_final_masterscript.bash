
## Run dos2unix on bash scripts before running and ensure directories are empty

bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_process_mutation_data.bash

# Figure 1

bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_1_mutation_windows.bash
bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_1_trinuc_freq.bash
bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_1_process_trinuc.bash
bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_1_signature_5_similarity.bash
bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_1_APOBEC_and_Other_mutations.bash
Rscript /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_1_PCA.r
Rscript /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_1_signature_5_similarity.r

## Figure 2

bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_2_genic_mutation_densities.bash
bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_2_DHS_All.bash   
bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_2_DHS_APOBEC.bash 
bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_2_DHS_Other.bash 
bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_2_replication_time.bash 
bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_2_open_close.bash 
bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_2_running_gene_profiles.bash
bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_2_process_results.bash

## Figure 3

bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_3_running_DHS_profiles.bash
bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_3_exome_contingency.bash
bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_3_CBS_boxplot.bash

## Figure 4

bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_4_running_ChIP_coverage.bash
Rscript /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_4_ChIP_heatmaps.r
bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_4_XPD_analysis.bash
bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_4_XR_analysis.bash
bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_4_XPD_trinuc_cosine_similarity.bash

## Figure 5

bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_5_regression_data_preprocessing.bash
bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_5_regression_data.bash
bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_5_run_esophageal_analysis.bash
bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_5_process_esophageal_XPD.bash

# Supplementary Tables

bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_supplementary_tables.bash

# Supplementary Figures

bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_supplementary_figure_1_indels_svs.bash
bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_2_DHS_Other_CBS_genes_subtracted.bash
bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_supplementary_figure_3_CBS_profiles.bash
bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_supplementary_figure_2_genic_densities.bash
bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_supplementary_figure_2_processing.bash


