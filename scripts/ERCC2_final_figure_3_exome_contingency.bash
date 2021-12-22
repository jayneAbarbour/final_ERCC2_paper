
cd /home/jbarbour/final_ERCC2_paper/analysis/figure_3_exome_contingency
rm *
zcat /home/jbarbour/Data/ERCC2_TCGA_only/supplementary_tables/mc3_BLCA_mc3.txt.gz | awk -F'\t' '{split($1,a,"-"); print "chr"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"a[1]"-"a[2]"-"a[3]}' - |\
awk '{if (length($4) == 1 && length($5) == 1 ) print $0}' - > Bladder_exome_SNV.bed


grep -f /home/jbarbour/Data/ERCC2_TCGA_only/sample_annotations/Exome_contingency_Mutant_Samples.txt Bladder_exome_SNV.bed |\
intersectBed -a ~/annotations/Katainen_nature_CBS.txt -b - -c | awk '{sum+=$5;} END{print sum;}' - > Mutant_inside_CBS.txt

grep -f /home/jbarbour/Data/ERCC2_TCGA_only/sample_annotations/Exome_contingency_WT_Samples.txt Bladder_exome_SNV.bed |\
intersectBed -a ~/annotations/Katainen_nature_CBS.txt -b - -c | awk '{sum+=$5;} END{print sum;}' - > WT_inside_CBS.txt

grep -f /home/jbarbour/Data/ERCC2_TCGA_only/sample_annotations/Exome_contingency_Mutant_Samples.txt Bladder_exome_SNV.bed |\
intersectBed -v -a - -b ~/annotations/Katainen_nature_CBS.txt | wc -l > Mutant_outside_CBS.txt

grep -f /home/jbarbour/Data/ERCC2_TCGA_only/sample_annotations/Exome_contingency_WT_Samples.txt Bladder_exome_SNV.bed |\
intersectBed -v -a - -b ~/annotations/Katainen_nature_CBS.txt | wc -l > WT_outside_CBS.txt

paste WT_inside_CBS.txt WT_outside_CBS.txt | { printf 'WT\t'; paste - ; } > tmp1.txt
paste Mutant_inside_CBS.txt Mutant_outside_CBS.txt | { printf 'Mutat\t'; paste - ; } > tmp2.txt

cat tmp1.txt tmp2.txt | { printf '\tInside\tOutside\n'; paste - ; } > exome_contingency_results.tsv
rm *.txt