
cd /home/jbarbour/final_ERCC2_paper/annotations

bedtools map -a /home/bioinf/DB/filtered_1kb_bins.bed -b /home/jbarbour/final_ERCC2_paper/data/XPD.bedgraph -c 4 -o mean > filtered_1kb_bins+XPD.txt

sort -n -k5 filtered_1kb_bins+XPD.txt | awk 'NR == 1 , NR == 193393 {print $0}' - | sort -k1,1 -k2,2n - > XPD_bin_1.bed
sort -n -k5 filtered_1kb_bins+XPD.txt | awk 'NR == 193394 , NR == 386787 {print $0}' - | sort -k1,1 -k2,2n - > XPD_bin_2.bed
sort -n -k5 filtered_1kb_bins+XPD.txt | awk 'NR == 386788 , NR == 580181 {print $0}' - | sort -k1,1 -k2,2n - > XPD_bin_3.bed
sort -n -k5 filtered_1kb_bins+XPD.txt | awk 'NR == 580182 , NR == 773575 {print $0}' - | sort -k1,1 -k2,2n - > XPD_bin_4.bed
sort -n -k5 filtered_1kb_bins+XPD.txt | awk 'NR == 773576 , NR == 966966 {print $0}' - | sort -k1,1 -k2,2n - > XPD_bin_5.bed

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_4_XPD_bins

bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_4_XPD_bins.bash \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_Other_obs_SNVs.txt \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_Other_obs_SNVs.txt \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_Other_exp_SNVs.txt \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_Other_exp_SNVs.txt \
XPD 

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_4_XPD_bins
grep pooled_low_Mutant /home/jbarbour/Data/ERCC2_TCGA_only/XPD_XPB_ChIP/XPD_bins/run/DHS_landscape_XPD.txt > tmp.txt
grep TCGA-DK-A1A7 /home/jbarbour/Data/ERCC2_TCGA_only/XPD_XPB_ChIP/XPD_bins/run/DHS_landscape_XPD.txt >> tmp.txt
grep TCGA-FD-A3N5 /home/jbarbour/Data/ERCC2_TCGA_only/XPD_XPB_ChIP/XPD_bins/run/DHS_landscape_XPD.txt >> tmp.txt
grep TCGA-FT-A3EE /home/jbarbour/Data/ERCC2_TCGA_only/XPD_XPB_ChIP/XPD_bins/run/DHS_landscape_XPD.txt >> tmp.txt
grep TCGA-BT-A3PJ /home/jbarbour/Data/ERCC2_TCGA_only/XPD_XPB_ChIP/XPD_bins/run/DHS_landscape_XPD.txt >> tmp.txt

cut -f1,12-16 tmp.txt |awk '{print $1"\t"(log($2)/log(2))"\t"(log($3)/log(2))"\t"(log($4)/log(2))"\t"(log($5)/log(2))"\t"(log($6)/log(2))}' - > XPD_landscape_Other_SNVs_mutant_Log2.txt
rm tmp.txt

grep -v pooled_low_Mutant /home/jbarbour/Data/ERCC2_TCGA_only/XPD_XPB_ChIP/XPD_bins/run/DHS_landscape_XPD.txt | grep -v TCGA-DK-A1A7 - | grep -v TCGA-FD-A3N5 - | grep -v TCGA-FT-A3EE - | grep -v TCGA-BT-A3PJ - |\
cut -f1,12-16 - | awk '{print $1"\t"(log($2)/log(2))"\t"(log($3)/log(2))"\t"(log($4)/log(2))"\t"(log($5)/log(2))"\t"(log($6)/log(2))}' - > XPD_landscape_Other_SNVs_WT_Log2.txt
























