
cd /home/jbarbour/final_ERCC2_paper/analysis/figure_4_XR_bins


bedtools map -a /home/bioinf/DB/filtered_1kb_bins.bed -b /home/jbarbour/Data/ERCC2_TCGA_only/XR_seq/GMCisP_XR3h_Rep1_sorted.bg -c 4 -o mean |\
bedtools map -a - -b /home/jbarbour/Data/ERCC2_TCGA_only/XR_seq/GMCisP_XR3h_Rep2_sorted.bg -c 4 -o mean |\
bedtools map -a - -b /home/jbarbour/Data/ERCC2_TCGA_only/XR_seq/OXP_XR_Rep1_sorted.bg -c 4 -o mean |\
bedtools map -a - -b /home/jbarbour/Data/ERCC2_TCGA_only/XR_seq/OXP_XR_Rep2_sorted.bg -c 4 -o mean | awk '{print $1"\t"$2"\t"$3"\t"(($5+$6+$7+$8)/4)}' - > filtered_1kb_bins+mean_XR_seq.txt

sort -n -k4 filtered_1kb_bins+mean_XR_seq.txt | awk 'NR == 1 , NR == 193393 {print $0}' - | sort -k1,1 -k2,2n - > XR_seq_bin_1.bed
sort -n -k4 filtered_1kb_bins+mean_XR_seq.txt | awk 'NR == 193394 , NR == 386787 {print $0}' - | sort -k1,1 -k2,2n - > XR_seq_bin_2.bed
sort -n -k4 filtered_1kb_bins+mean_XR_seq.txt | awk 'NR == 386788 , NR == 580181 {print $0}' - | sort -k1,1 -k2,2n - > XR_seq_bin_3.bed
sort -n -k4 filtered_1kb_bins+mean_XR_seq.txt | awk 'NR == 580182 , NR == 773575 {print $0}' - | sort -k1,1 -k2,2n - > XR_seq_bin_4.bed
sort -n -k4 filtered_1kb_bins+mean_XR_seq.txt | awk 'NR == 773576 , NR == 966966 {print $0}' - | sort -k1,1 -k2,2n - > XR_seq_bin_5.bed

cp XR_seq_bin_*.bed /home/jbarbour/final_ERCC2_paper/annotations/

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_4_XR_bins
bash ~/scripts/ERCC2_final_XR_seq_bins.bash \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_Other_obs_SNVs.txt \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_Other_obs_SNVs.txt \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_Other_exp_SNVs.txt \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_Other_exp_SNVs.txt \
XR_seq 

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_4_XR_bins
grep pooled_low_Mutant /home/jbarbour/final_ERCC2_paper/analysis/figure_4_XR_bins/DHS_landscape_XR_seq.txt > tmp.txt
grep TCGA-DK-A1A7 /home/jbarbour/final_ERCC2_paper/analysis/figure_4_XR_bins/DHS_landscape_XR_seq.txt >> tmp.txt
grep TCGA-FD-A3N5 /home/jbarbour/final_ERCC2_paper/analysis/figure_4_XR_bins/DHS_landscape_XR_seq.txt >> tmp.txt
grep TCGA-FT-A3EE /home/jbarbour/final_ERCC2_paper/analysis/figure_4_XR_bins/DHS_landscape_XR_seq.txt >> tmp.txt
grep TCGA-BT-A3PJ /home/jbarbour/final_ERCC2_paper/analysis/figure_4_XR_bins/DHS_landscape_XR_seq.txt >> tmp.txt

cut -f1,12-16 tmp.txt > XR_seq_landscape_Other_SNVs_mutant.txt
rm tmp.txt

grep -v pooled_low_Mutant /home/jbarbour/final_ERCC2_paper/analysis/figure_4_XR_bins/DHS_landscape_XR_seq.txt | grep -v TCGA-DK-A1A7 - | grep -v TCGA-FD-A3N5 - | grep -v TCGA-FT-A3EE - | grep -v TCGA-BT-A3PJ - | cut -f1,12-16 - > XR_seq_landscape_Other_SNVs_WT.txt

















