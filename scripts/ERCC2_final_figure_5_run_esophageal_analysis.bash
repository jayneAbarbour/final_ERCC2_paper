

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_5_esophageal_mutations/XPD_bin_C_to_T  
bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_5_XPD_bins_ESAD.bash \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/ESAD_C_to_T_obs.txt \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/ESAD_C_to_T_exp.txt \
XPD_ESAD_C_to_T &

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_5_esophageal_mutations/XPD_bin_T_to_G 
bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_5_XPD_bins_ESAD.bash \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/ESAD_T_to_G_obs.txt \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/ESAD_T_to_G_exp.txt \
XPD_ESAD_T_to_G &

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_5_esophageal_mutations/XR_bin_C_to_T  
bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_5_XR_seq_ESAD.bash \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/ESAD_C_to_T_obs.txt \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/ESAD_C_to_T_exp.txt \
XR_seq_ESAD_C_to_T &

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_5_esophageal_mutations/XR_bin_T_to_G
bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_5_XR_seq_ESAD.bash \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/ESAD_T_to_G_obs.txt \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/ESAD_T_to_G_exp.txt \
XR_seq_ESAD_T_to_G &

