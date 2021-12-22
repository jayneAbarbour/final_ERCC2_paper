

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_5_esophageal_mutations

cut -f1,12-16 tmp.txt /home/jbarbour/final_ERCC2_paper/analysis/figure_5_esophageal_mutations/XPD_bin_C_to_T/DHS_landscape_XPD_ESAD_C_to_T.txt |\
awk '{print $1"\t"(log($2)/log(2))"\t"(log($3)/log(2))"\t"(log($4)/log(2))"\t"(log($5)/log(2))"\t"(log($6)/log(2))}' - > XPD_ESAD_C_to_T_log2.txt  
cut -f1,12-16 tmp.txt /home/jbarbour/final_ERCC2_paper/analysis/figure_5_esophageal_mutations/XPD_bin_T_to_G/DHS_landscape_XPD_ESAD_T_to_G.txt |\
awk '{print $1"\t"(log($2)/log(2))"\t"(log($3)/log(2))"\t"(log($4)/log(2))"\t"(log($5)/log(2))"\t"(log($6)/log(2))}' - > XPD_ESAD_T_to_G_log2.txt
cut -f1,12-16 tmp.txt /home/jbarbour/final_ERCC2_paper/analysis/figure_5_esophageal_mutations/XR_bin_C_to_T/DHS_landscape_XR_seq_ESAD_C_to_T.txt |\
awk '{print $1"\t"(log($2)/log(2))"\t"(log($3)/log(2))"\t"(log($4)/log(2))"\t"(log($5)/log(2))"\t"(log($6)/log(2))}' - > XR_ESAD_C_to_T_log2.txt
cut -f1,12-16 tmp.txt /home/jbarbour/final_ERCC2_paper/analysis/figure_5_esophageal_mutations/XR_bin_T_to_G/DHS_landscape_XR_seq_ESAD_T_to_G.txt |\
awk '{print $1"\t"(log($2)/log(2))"\t"(log($3)/log(2))"\t"(log($4)/log(2))"\t"(log($5)/log(2))"\t"(log($6)/log(2))}' - > XR_ESAD_T_to_G_log2.txt


