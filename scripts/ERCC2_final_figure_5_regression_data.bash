
cd /home/jbarbour/final_ERCC2_paper/analysis/figure_5_regression_data
  
intersectBed -a /home/jbarbour/annotations/Katainen_nature_CBS.txt -b /home/jbarbour/final_ERCC2_paper/data/mutation_data/All_ERCC2_obs.txt -c |\
awk -F'\t' '{if ($5 == 0) print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t""0"; else print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t""1";}' - |\
intersectBed -a - -b /home/jbarbour/annotations/hg19_annotations/All_genic_hg19.bed -c |\
awk -F'\t' '{if ($7 == 0) print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""0"; else print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""1";}' - > CBS_XPD_mutant_SNVs.bed

intersectBed -a /home/jbarbour/annotations/Katainen_nature_CBS.txt -b /home/jbarbour/final_ERCC2_paper/data/mutation_data/ESAD_trinuc.bed -c |\
awk -F'\t' '{if ($5 == 0) print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t""0"; else print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t""1";}' - |\
intersectBed -a - -b /home/jbarbour/annotations/hg19_annotations/All_genic_hg19.bed -c |\
awk -F'\t' '{if ($7 == 0) print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""0"; else print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""1";}' - > CBS_ESAD_SNVs.bed

intersectBed -a /home/jbarbour/annotations/Katainen_nature_CBS.txt -b /home/jbarbour/final_ERCC2_paper/data/mutation_data/MELA_trinuc.bed  -c |\
awk -F'\t' '{if ($5 == 0) print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t""0"; else print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t""1";}' - |\
intersectBed -a - -b /home/jbarbour/annotations/hg19_annotations/All_genic_hg19.bed -c |\
awk -F'\t' '{if ($7 == 0) print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""0"; else print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""1";}' -  > CBS_MELA_SNVs.bed

bedtools slop -i CBS_XPD_mutant_SNVs.bed -g ~/Data/hg19_reference/hg19.chrom.sizes -b 150 > CBS_XPD_mutant_SNV_extended.bed
bedtools slop -i CBS_ESAD_SNVs.bed -g ~/Data/hg19_reference/hg19.chrom.sizes -b 150 > CBS_ESAD_SNV_extended.bed
bedtools slop -i CBS_MELA_SNVs.bed -g ~/Data/hg19_reference/hg19.chrom.sizes -b 150 > CBS_MELA_SNV_extended.bed

sort -k 1,1 -k2,2n CBS_XPD_mutant_SNV_extended.bed | bedtools map -a - -b /home/jbarbour/final_ERCC2_paper/annotations/replication_time.sorted.bg -c 4 -o mean |\
bedtools map -a - -b /home/jbarbour/final_ERCC2_paper/data/XPD_L2R_input.bg.sorted.bedgraph -c 4 -o mean |\
bedtools map -a - -b /home/jbarbour/final_ERCC2_paper/data/ENCODE_L2R_bedgraph/CTCF_liver_L2R.bg.sorted.bedgraph  -c 4 -o mean |\
bedtools map -a - -b /home/jbarbour/final_ERCC2_paper/data/ENCODE_L2R_bedgraph/DHS_liver.bg.sorted.bedgraph -c 4 -o mean |\
bedtools map -a - -b /home/jbarbour/final_ERCC2_paper/data/ENCODE_L2R_bedgraph/POLR2A_liver_L2R.bg.sorted.bedgraph  -c 4 -o mean |\
awk -F'\t' '{print $1":"$2"-"$3"_"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"$10"\t"$11"\t"$12}' - |\
{ printf 'Motif\tNumber_mutations\tBinary_mutations\tBinary_Genic\tRep_Time\tXPD\tCTCF\tDHS\tPOLR2A\n'; cat - ; } > CBS_XPD+features_extended.tsv

sort -k 1,1 -k2,2n CBS_MELA_SNV_extended.bed | bedtools map -a - -b /home/jbarbour/final_ERCC2_paper/annotations/replication_time.sorted.bg -c 4 -o mean |\
bedtools map -a - -b /home/jbarbour/final_ERCC2_paper/data/XPD_L2R_input.bg.sorted.bedgraph -c 4 -o mean |\
bedtools map -a - -b /home/jbarbour/final_ERCC2_paper/data/ENCODE_L2R_bedgraph/CTCF_skin_1_L2R.bg.sorted.bedgraph -c 4 -o mean |\
bedtools map -a - -b /home/jbarbour/final_ERCC2_paper/data/ENCODE_L2R_bedgraph/CTCF_skin_2_L2R.bg.sorted.bedgraph -c 4 -o mean |\
bedtools map -a - -b /home/jbarbour/final_ERCC2_paper/data/ENCODE_L2R_bedgraph/CTCF_skin_3_L2R.bg.sorted.bedgraph -c 4 -o mean |\
bedtools map -a - -b /home/jbarbour/final_ERCC2_paper/data/ENCODE_L2R_bedgraph/CTCF_skin_4_L2R.bg.sorted.bedgraph -c 4 -o mean |\
bedtools map -a - -b /home/jbarbour/final_ERCC2_paper/data/ENCODE_L2R_bedgraph/DHS_skin_3.bg.sorted.bedgraph -c 4 -o mean |\
bedtools map -a - -b /home/jbarbour/final_ERCC2_paper/data/ENCODE_L2R_bedgraph/POLR2A_skin_1_L2R.bg.sorted.bedgraph -c 4 -o mean |\
bedtools map -a - -b /home/jbarbour/final_ERCC2_paper/data/ENCODE_L2R_bedgraph/POLR2A_skin_2_L2R.bg.sorted.bedgraph -c 4 -o mean |\
awk -F'\t' '{print $1":"$2"-"$3"_"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"(($10+$11+$12+$13)/4)"\t"$14"\t"(($15+$16)/2)}' - |\
{ printf 'Motif\tNumber_mutations\tBinary_mutations\tBinary_Genic\tRep_Time\tXPD\tCTCF\tDHS\tPOLR2A\n'; cat - ; } > CBS_MELA+features_extended.tsv

sort -k 1,1 -k2,2n CBS_ESAD_SNV_extended.bed | bedtools map -a - -b /home/jbarbour/Data/ERCC2_TCGA_only/updated_regression/replication_time.sorted.bg -c 4 -o mean |\
bedtools map -a - -b /home/jbarbour/Data/ERCC2_TCGA_only/updated_regression/XPD_L2R.bg.sorted.bg -c 4 -o mean |\
bedtools map -a - -b /home/jbarbour/final_ERCC2_paper/data/ENCODE_L2R_bedgraph/CTCF_gastroeso_1_L2R.bg.sorted.bedgraph  -c 4 -o mean |\
bedtools map -a - -b /home/jbarbour/final_ERCC2_paper/data/ENCODE_L2R_bedgraph/CTCF_gastroeso_2_L2R.bg.sorted.bedgraph -c 4 -o mean |\
bedtools map -a - -b /home/jbarbour/final_ERCC2_paper/data/ENCODE_L2R_bedgraph/CTCF_gastroeso_3_L2R.bg.sorted.bedgraph -c 4 -o mean |\
bedtools map -a - -b /home/jbarbour/final_ERCC2_paper/data/ENCODE_L2R_bedgraph/CTCF_gastroeso_4_L2R.bg.sorted.bedgraph -c 4 -o mean |\
bedtools map -a - -b /home/jbarbour/final_ERCC2_paper/data/ENCODE_L2R_bedgraph/DHS_eso_1.bg.sorted.bedgraph -c 4 -o mean |\
bedtools map -a - -b /home/jbarbour/final_ERCC2_paper/data/ENCODE_L2R_bedgraph/DHS_eso_2.bg.sorted.bedgraph -c 4 -o mean |\
bedtools map -a - -b /home/jbarbour/final_ERCC2_paper/data/ENCODE_L2R_bedgraph/DHS_eso_3.bg.sorted.bedgraph -c 4 -o mean |\
bedtools map -a - -b /home/jbarbour/final_ERCC2_paper/data/ENCODE_L2R_bedgraph/POLR2A_gastroeso_1_L2R.bg.sorted.bedgraph -c 4 -o mean |\
bedtools map -a - -b /home/jbarbour/final_ERCC2_paper/data/ENCODE_L2R_bedgraph/POLR2A_gastroeso_2_L2R.bg.sorted.bedgraph -c 4 -o mean |\
bedtools map -a - -b /home/jbarbour/final_ERCC2_paper/data/ENCODE_L2R_bedgraph/POLR2A_gastroeso_3_L2R.bg.sorted.bedgraph -c 4 -o mean |\
awk -F'\t' '{print $1":"$2"-"$3"_"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"(($10+$11+$12+$13)/4)"\t"(($14+$15+$16)/3)"\t"(($17+$18+$19)/3)}' - |\
{ printf 'Motif\tNumber_mutations\tBinary_mutations\tBinary_Genic\tRep_Time\tXPD\tCTCF\tDHS\tPOLR2A\n'; cat - ; } > CBS_ESAD+features_extended.tsv
 


  
  
  
  

  
  









