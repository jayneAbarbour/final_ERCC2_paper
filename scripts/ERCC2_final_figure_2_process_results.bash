
## Values for slopes

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_2_process_results
rm *
awk '{sum+=$4} END { print "Rep_bin_1""\t"sum/ NR}' /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_1_sorted.bed > Rep_time_bin_values.txt
awk '{sum+=$4} END { print "Rep_bin_2""\t"sum/ NR}' /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_2_sorted.bed >> Rep_time_bin_values.txt
awk '{sum+=$4} END { print "Rep_bin_3""\t"sum/ NR}' /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_3_sorted.bed >> Rep_time_bin_values.txt
awk '{sum+=$4} END { print "Rep_bin_4""\t"sum/ NR}' /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_4_sorted.bed >> Rep_time_bin_values.txt
awk '{sum+=$4} END { print "Rep_bin_5""\t"sum/ NR}' /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_5_sorted.bed >> Rep_time_bin_values.txt

awk '{sum+=$4} END { print "DHS_bin_1""\t"sum/ NR}' /home/jbarbour/annotations/bladder/DHS_bins/bladder_mapped_bin_1.bed > DHS_bin_values.txt
awk '{sum+=$4} END { print "DHS_bin_2""\t"sum/ NR}' /home/jbarbour/annotations/bladder/DHS_bins/bladder_mapped_bin_2.bed >> DHS_bin_values.txt
awk '{sum+=$4} END { print "DHS_bin_3""\t"sum/ NR}' /home/jbarbour/annotations/bladder/DHS_bins/bladder_mapped_bin_3.bed >> DHS_bin_values.txt
awk '{sum+=$4} END { print "DHS_bin_4""\t"sum/ NR}' /home/jbarbour/annotations/bladder/DHS_bins/bladder_mapped_bin_4.bed >> DHS_bin_values.txt
awk '{sum+=$4} END { print "DHS_bin_5""\t"sum/ NR}' /home/jbarbour/annotations/bladder/DHS_bins/bladder_mapped_bin_5.bed >> DHS_bin_values.txt

# processing genic densities

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_2_genic_mutation_densities

grep pooled_low_Mutant Gene_body_densities_APOBEC_SNVs.txt > tmp.txt
grep TCGA-DK-A1A7 Gene_body_densities_APOBEC_SNVs.txt >> tmp.txt
grep TCGA-FD-A3N5 Gene_body_densities_APOBEC_SNVs.txt >> tmp.txt
grep TCGA-FT-A3EE Gene_body_densities_APOBEC_SNVs.txt >> tmp.txt
grep TCGA-BT-A3PJ Gene_body_densities_APOBEC_SNVs.txt >> tmp.txt

cut -f1,12-16 tmp.txt | awk '{print $1"\t"(log($2)/log(2))"\t"(log($3)/log(2))"\t"(log($4)/log(2))"\t"(log($5)/log(2))"\t"(log($6)/log(2))}' - \
> /home/jbarbour/final_ERCC2_paper/analysis/figure_2_process_results/Gene_body_densities_APOBEC_SNVs_mutant_log2.txt
rm tmp.txt

grep -v pooled_low_Mutant Gene_body_densities_APOBEC_SNVs.txt | grep -v TCGA-DK-A1A7 - | grep -v TCGA-FD-A3N5 - | grep -v TCGA-FT-A3EE - | grep -v TCGA-BT-A3PJ - | cut -f1,12-16 - |\
 awk '{print $1"\t"(log($2)/log(2))"\t"(log($3)/log(2))"\t"(log($4)/log(2))"\t"(log($5)/log(2))"\t"(log($6)/log(2))}' - > /home/jbarbour/final_ERCC2_paper/analysis/figure_2_process_results/Gene_body_densities_APOBEC_SNVs_WT_log2.txt

grep pooled_low_Mutant Gene_body_densities_Other_SNVs.txt > tmp.txt
grep TCGA-DK-A1A7 Gene_body_densities_Other_SNVs.txt >> tmp.txt
grep TCGA-FD-A3N5 Gene_body_densities_Other_SNVs.txt >> tmp.txt
grep TCGA-FT-A3EE Gene_body_densities_Other_SNVs.txt >> tmp.txt
grep TCGA-BT-A3PJ Gene_body_densities_Other_SNVs.txt >> tmp.txt

cut -f1,12-16 tmp.txt | awk '{print $1"\t"(log($2)/log(2))"\t"(log($3)/log(2))"\t"(log($4)/log(2))"\t"(log($5)/log(2))"\t"(log($6)/log(2))}' - \
> /home/jbarbour/final_ERCC2_paper/analysis/figure_2_process_results/Gene_body_densities_Other_SNVs_mutant_log2.txt
rm tmp.txt

grep -v pooled_low_Mutant Gene_body_densities_Other_SNVs.txt | grep -v TCGA-DK-A1A7 - | grep -v TCGA-FD-A3N5 - | grep -v TCGA-FT-A3EE - | grep -v TCGA-BT-A3PJ - | cut -f1,12-16 - \
| awk '{print $1"\t"(log($2)/log(2))"\t"(log($3)/log(2))"\t"(log($4)/log(2))"\t"(log($5)/log(2))"\t"(log($6)/log(2))}' - > /home/jbarbour/final_ERCC2_paper/analysis/figure_2_process_results/Gene_body_densities_Other_SNVs_WT_log2.txt


# processing replication time

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_2_replication_time

grep pooled_low_Mutant Replication_time_APOBEC_SNVs.txt > tmp.txt
grep TCGA-DK-A1A7 Replication_time_APOBEC_SNVs.txt >> tmp.txt
grep TCGA-FD-A3N5 Replication_time_APOBEC_SNVs.txt >> tmp.txt
grep TCGA-FT-A3EE Replication_time_APOBEC_SNVs.txt >> tmp.txt
grep TCGA-BT-A3PJ Replication_time_APOBEC_SNVs.txt >> tmp.txt

cut -f1,12-16 tmp.txt | awk '{print $1"\t"(log($2)/log(2))"\t"(log($3)/log(2))"\t"(log($4)/log(2))"\t"(log($5)/log(2))"\t"(log($6)/log(2))}' - \
> /home/jbarbour/final_ERCC2_paper/analysis/figure_2_process_results/Replication_time_APOBEC_SNVs_mutant_log2.txt
rm tmp.txt

grep -v pooled_low_Mutant Replication_time_APOBEC_SNVs.txt | grep -v TCGA-DK-A1A7 - | grep -v TCGA-FD-A3N5 - | grep -v TCGA-FT-A3EE - | grep -v TCGA-BT-A3PJ - | cut -f1,12-16 - |\
 awk '{print $1"\t"(log($2)/log(2))"\t"(log($3)/log(2))"\t"(log($4)/log(2))"\t"(log($5)/log(2))"\t"(log($6)/log(2))}' - > /home/jbarbour/final_ERCC2_paper/analysis/figure_2_process_results/Replication_time_APOBEC_SNVs_WT_log2.txt

grep pooled_low_Mutant Replication_time_other_SNVs.txt > tmp.txt
grep TCGA-DK-A1A7 Replication_time_other_SNVs.txt >> tmp.txt
grep TCGA-FD-A3N5 Replication_time_other_SNVs.txt >> tmp.txt
grep TCGA-FT-A3EE Replication_time_other_SNVs.txt >> tmp.txt
grep TCGA-BT-A3PJ Replication_time_other_SNVs.txt >> tmp.txt

cut -f1,12-16 tmp.txt | awk '{print $1"\t"(log($2)/log(2))"\t"(log($3)/log(2))"\t"(log($4)/log(2))"\t"(log($5)/log(2))"\t"(log($6)/log(2))}' - \
> /home/jbarbour/final_ERCC2_paper/analysis/figure_2_process_results/Replication_time_Other_SNVs_mutant_log2.txt
rm tmp.txt

grep -v pooled_low_Mutant Replication_time_other_SNVs.txt | grep -v TCGA-DK-A1A7 - | grep -v TCGA-FD-A3N5 - | grep -v TCGA-FT-A3EE - | grep -v TCGA-BT-A3PJ - | cut -f1,12-16 - |\
awk '{print $1"\t"(log($2)/log(2))"\t"(log($3)/log(2))"\t"(log($4)/log(2))"\t"(log($5)/log(2))"\t"(log($6)/log(2))}' - >  /home/jbarbour/final_ERCC2_paper/analysis/figure_2_process_results/Replication_time_Other_SNVs_WT_log2.txt

# processing DHS

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_2_DHS/APOBEC

grep pooled_low_Mutant DHS_landscape_APOBEC.txt > tmp.txt
grep TCGA-DK-A1A7 DHS_landscape_APOBEC.txt >> tmp.txt
grep TCGA-FD-A3N5 DHS_landscape_APOBEC.txt >> tmp.txt
grep TCGA-FT-A3EE DHS_landscape_APOBEC.txt >> tmp.txt
grep TCGA-BT-A3PJ DHS_landscape_APOBEC.txt >> tmp.txt
 
cut -f1,12-16 tmp.txt | awk '{print $1"\t"(log($2)/log(2))"\t"(log($3)/log(2))"\t"(log($4)/log(2))"\t"(log($5)/log(2))"\t"(log($6)/log(2))}' - \
> /home/jbarbour/final_ERCC2_paper/analysis/figure_2_process_results/DHS_landscape_APOBEC_SNVs_mutant_log2.txt
rm tmp.txt

grep -v pooled_low_Mutant DHS_landscape_APOBEC.txt | grep -v TCGA-DK-A1A7 - | grep -v TCGA-FD-A3N5 - | grep -v TCGA-FT-A3EE - | grep -v TCGA-BT-A3PJ - | cut -f1,12-16 - |\
awk '{print $1"\t"(log($2)/log(2))"\t"(log($3)/log(2))"\t"(log($4)/log(2))"\t"(log($5)/log(2))"\t"(log($6)/log(2))}' - > /home/jbarbour/final_ERCC2_paper/analysis/figure_2_process_results/DHS_landscape_APOBEC_SNVs_WT_log2.txt


cd /home/jbarbour/final_ERCC2_paper/analysis/figure_2_DHS/Other

grep TCGA-DK-A1A7 DHS_landscape_DHS.txt > tmp.txt
grep TCGA-FD-A3N5 DHS_landscape_DHS.txt >> tmp.txt
grep TCGA-FT-A3EE DHS_landscape_DHS.txt >> tmp.txt
grep TCGA-BT-A3PJ DHS_landscape_DHS.txt >> tmp.txt

cut -f1,12-16 tmp.txt | awk '{print $1"\t"(log($2)/log(2))"\t"(log($3)/log(2))"\t"(log($4)/log(2))"\t"(log($5)/log(2))"\t"(log($6)/log(2))}' - \
> /home/jbarbour/final_ERCC2_paper/analysis/figure_2_process_results/DHS_landscape_Other_SNVs_mutant_log2.txt
rm tmp.txt

grep -v pooled_low_Mutant DHS_landscape_DHS.txt | grep -v TCGA-DK-A1A7 - | grep -v TCGA-FD-A3N5 - | grep -v TCGA-FT-A3EE - | grep -v TCGA-BT-A3PJ - | cut -f1,12-16 - |\
awk '{print $1"\t"(log($2)/log(2))"\t"(log($3)/log(2))"\t"(log($4)/log(2))"\t"(log($5)/log(2))"\t"(log($6)/log(2))}' - > /home/jbarbour/final_ERCC2_paper/analysis/figure_2_process_results/DHS_landscape_Other_SNVs_WT_log2.txt

# Processing open close

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_2_open_close

grep pooled_low_Mutant Open_close_analysis_APOBEC_SNVs.txt > tmp.txt
grep TCGA-DK-A1A7 Open_close_analysis_APOBEC_SNVs.txt >> tmp.txt
grep TCGA-FD-A3N5 Open_close_analysis_APOBEC_SNVs.txt >> tmp.txt
grep TCGA-FT-A3EE Open_close_analysis_APOBEC_SNVs.txt >> tmp.txt
grep TCGA-BT-A3PJ Open_close_analysis_APOBEC_SNVs.txt >> tmp.txt

cut -f1,14-19 tmp.txt | awk '{print $1"\t"(log($2)/log(2))"\t"(log($3)/log(2))"\t"(log($4)/log(2))"\t"(log($5)/log(2))"\t"(log($6)/log(2))"\t"(log($7)/log(2))}' - \
> /home/jbarbour/final_ERCC2_paper/analysis/figure_2_process_results/Open_close_analysis_APOBEC_SNVs_mutant_log2.txt
rm tmp.txt

grep -v pooled_low_Mutant Open_close_analysis_APOBEC_SNVs.txt | grep -v TCGA-DK-A1A7 - | grep -v TCGA-FD-A3N5 - | grep -v TCGA-FT-A3EE - | grep -v TCGA-BT-A3PJ - | cut -f1,14-19 - |\
awk '{print $1"\t"(log($2)/log(2))"\t"(log($3)/log(2))"\t"(log($4)/log(2))"\t"(log($5)/log(2))"\t"(log($6)/log(2))"\t"(log($7)/log(2))}' - > /home/jbarbour/final_ERCC2_paper/analysis/figure_2_process_results/Open_close_analysis_APOBEC_SNVs_WT_log2.txt


grep pooled_low_Mutant Open_close_analysis_Other_SNVs.txt > tmp.txt
grep TCGA-DK-A1A7 Open_close_analysis_Other_SNVs.txt >> tmp.txt
grep TCGA-FD-A3N5 Open_close_analysis_Other_SNVs.txt >> tmp.txt
grep TCGA-FT-A3EE Open_close_analysis_Other_SNVs.txt >> tmp.txt
grep TCGA-BT-A3PJ Open_close_analysis_Other_SNVs.txt >> tmp.txt

cut -f1,14-19 tmp.txt | awk '{print $1"\t"(log($2)/log(2))"\t"(log($3)/log(2))"\t"(log($4)/log(2))"\t"(log($5)/log(2))"\t"(log($6)/log(2))"\t"(log($7)/log(2))}' - \
 > /home/jbarbour/final_ERCC2_paper/analysis/figure_2_process_results/Open_close_analysis_Other_SNVs_mutant_log2.txt
rm tmp.txt

grep -v pooled_low_Mutant Open_close_analysis_Other_SNVs.txt | grep -v TCGA-DK-A1A7 - | grep -v TCGA-FD-A3N5 - | grep -v TCGA-FT-A3EE - | grep -v TCGA-BT-A3PJ - | cut -f1,14-19 - |\
awk '{print $1"\t"(log($2)/log(2))"\t"(log($3)/log(2))"\t"(log($4)/log(2))"\t"(log($5)/log(2))"\t"(log($6)/log(2))"\t"(log($7)/log(2))}' - > /home/jbarbour/final_ERCC2_paper/analysis/figure_2_process_results/Open_close_analysis_Other_SNVs_WT_log2.txt


