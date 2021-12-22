
cd /home/jbarbour/final_ERCC2_paper/analysis/supplementary_figure_2/DHS_slope

grep TCGA-DK-A1A7 DHS_landscape_DHS.txt >> tmp.txt
grep TCGA-FD-A3N5 DHS_landscape_DHS.txt >> tmp.txt
grep TCGA-FT-A3EE DHS_landscape_DHS.txt >> tmp.txt
grep TCGA-BT-A3PJ DHS_landscape_DHS.txt >> tmp.txt

cut -f1,12-16 tmp.txt | awk '{print $1"\t"(log($2)/log(2))"\t"(log($3)/log(2))"\t"(log($4)/log(2))"\t"(log($5)/log(2))"\t"(log($6)/log(2))}' - \
> /home/jbarbour/final_ERCC2_paper/analysis/supplementary_figure_2/DHS_landscape_Other_SNVs_CBS_genes_removed_mutant_log2.txt
rm tmp.txt

grep -v pooled_low_Mutant DHS_landscape_DHS.txt | grep -v TCGA-DK-A1A7 - | grep -v TCGA-FD-A3N5 - | grep -v TCGA-FT-A3EE - | grep -v TCGA-BT-A3PJ - | cut -f1,12-16 - |\
awk '{print $1"\t"(log($2)/log(2))"\t"(log($3)/log(2))"\t"(log($4)/log(2))"\t"(log($5)/log(2))"\t"(log($6)/log(2))}' - > /home/jbarbour/final_ERCC2_paper/analysis/supplementary_figure_2/DHS_landscape_Other_SNVs_CBS_genes_removed_WT_log2.txt

awk '{print $5"\t"($3-$2)}' /home/jbarbour/final_ERCC2_paper/annotations/bladder_mapped_genes+CBS_removed_bin_1.bed |\
awk '{sum+=$1 ; sum2+=$2} END { print "DHS_bin_1""\t"(sum)"\t"(sum2)}' - | awk '{print ($1"\t"($2/$3)*1000)}' - > ./../DHS_genes_CBS_removed_slope.txt
awk '{print $5"\t"($3-$2)}' /home/jbarbour/final_ERCC2_paper/annotations/bladder_mapped_genes+CBS_removed_bin_2.bed |\
awk '{sum+=$1 ; sum2+=$2} END { print "DHS_bin_1""\t"(sum)"\t"(sum2)}' - | awk '{print ($1"\t"($2/$3)*1000)}' - >> ./../DHS_genes_CBS_removed_slope.txt
awk '{print $5"\t"($3-$2)}' /home/jbarbour/final_ERCC2_paper/annotations/bladder_mapped_genes+CBS_removed_bin_3.bed |\
awk '{sum+=$1 ; sum2+=$2} END { print "DHS_bin_1""\t"(sum)"\t"(sum2)}' - | awk '{print ($1"\t"($2/$3)*1000)}' - >> ./../DHS_genes_CBS_removed_slope.txt
awk '{print $5"\t"($3-$2)}' /home/jbarbour/final_ERCC2_paper/annotations/bladder_mapped_genes+CBS_removed_bin_4.bed |\
awk '{sum+=$1 ; sum2+=$2} END { print "DHS_bin_1""\t"(sum)"\t"(sum2)}' - | awk '{print ($1"\t"($2/$3)*1000)}' - >> ./../DHS_genes_CBS_removed_slope.txt
awk '{print $5"\t"($3-$2)}' /home/jbarbour/final_ERCC2_paper/annotations/bladder_mapped_genes+CBS_removed_bin_5.bed |\
awk '{sum+=$1 ; sum2+=$2} END { print "DHS_bin_1""\t"(sum)"\t"(sum2)}' - | awk '{print ($1"\t"($2/$3)*1000)}' - >> ./../DHS_genes_CBS_removed_slope.txt


cd /home/jbarbour/final_ERCC2_paper/analysis/supplementary_figure_2/genic_densities


grep TCGA-DK-A1A7 Gene_body_densities_Other_SNVs.txt > tmp.txt
grep TCGA-FD-A3N5 Gene_body_densities_Other_SNVs.txt >> tmp.txt
grep TCGA-FT-A3EE Gene_body_densities_Other_SNVs.txt >> tmp.txt
grep TCGA-BT-A3PJ Gene_body_densities_Other_SNVs.txt >> tmp.txt


cut -f1,14-19 tmp.txt  |\
awk '{print $1"\t"(log($2)/log(2))"\t"(log($3)/log(2))"\t"(log($4)/log(2))"\t"(log($5)/log(2))"\t"(log($6)/log(2))"\t"(log($7)/log(2))}' - > /home/jbarbour/final_ERCC2_paper/analysis/supplementary_figure_2/Genic_densities_log2_Other_mutant.txt

grep -v pooled_low_Mutant Gene_body_densities_Other_SNVs.txt | grep -v TCGA-DK-A1A7 - | grep -v TCGA-FD-A3N5 - | grep -v TCGA-FT-A3EE - | grep -v TCGA-BT-A3PJ - | cut -f1,14-19 - |\
awk '{print $1"\t"(log($2)/log(2))"\t"(log($3)/log(2))"\t"(log($4)/log(2))"\t"(log($5)/log(2))"\t"(log($6)/log(2))"\t"(log($7)/log(2))}' - > /home/jbarbour/final_ERCC2_paper/analysis/supplementary_figure_2/Genic_densities_log2_Other_WT.txt

##

grep pooled_low_Mutant Gene_body_densities_APOBEC_SNVs.txt > tmp.txt
grep TCGA-DK-A1A7 Gene_body_densities_APOBEC_SNVs.txt >> tmp.txt
grep TCGA-FD-A3N5 Gene_body_densities_APOBEC_SNVs.txt >> tmp.txt
grep TCGA-FT-A3EE Gene_body_densities_APOBEC_SNVs.txt >> tmp.txt
grep TCGA-BT-A3PJ Gene_body_densities_APOBEC_SNVs.txt >> tmp.txt

cut -f1,14-19 tmp.txt |\
awk '{print $1"\t"(log($2)/log(2))"\t"(log($3)/log(2))"\t"(log($4)/log(2))"\t"(log($5)/log(2))"\t"(log($6)/log(2))"\t"(log($7)/log(2))}' - > /home/jbarbour/final_ERCC2_paper/analysis/supplementary_figure_2/Genic_densities_log2_APOBEC_mutant_log2.txt
rm tmp.txt

grep -v pooled_low_Mutant Gene_body_densities_APOBEC_SNVs.txt | grep -v TCGA-DK-A1A7 - | grep -v TCGA-FD-A3N5 - | grep -v TCGA-FT-A3EE - | grep -v TCGA-BT-A3PJ - | cut -f1,14-19 - |\
awk '{print $1"\t"(log($2)/log(2))"\t"(log($3)/log(2))"\t"(log($4)/log(2))"\t"(log($5)/log(2))"\t"(log($6)/log(2))"\t"(log($7)/log(2))}' - > /home/jbarbour/final_ERCC2_paper/analysis/supplementary_figure_2/Gene_body_densities_APOBEC_SNVs_WT_log2.txt



