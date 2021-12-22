

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_2_genic_mutation_densities
rm *

awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_all_obs_SNVs.txt | awk '{print $0 >> $4}' -
awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_all_obs_SNVs.txt | awk '{print $0 >> $4}' -
for i in *trinuc.txt ;

do

sort -k 1,1 -k2,2n $i > ${i}_sorted.txt

intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/Coding_Exons_hg19.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > exon_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/UTR_5prime_hg19.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > exon_5prime_UTR_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/UTR_3prime_hg19.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > exon_3prime_UTR_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/Introns_hg19.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > intron_${i} ;
intersectBed -v -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/All_genic_hg19.bed -sorted | wc -l > non_genic_${i} ;

 done

declare -A fileList
for f in intron_*_trinuc.txt ; do 
    fileList[${#fileList[@]}+1]=$(echo ${f%_t*});
done

declare -A fileList2
for f in ${fileList[@]} ; do
	fileList2[${#fileList2[@]}+1]=$(echo ${f#*n_});
done


for A in ${fileList2[@]} ; do
	paste exon_${A}_trinuc.txt  exon_3prime_UTR_${A}_trinuc.txt  exon_5prime_UTR_${A}_trinuc.txt  intron_${A}_trinuc.txt non_genic_${A}_trinuc.txt > Regions_observed_${A}.txt

	name=$(echo $A)

awk -v name=$name ' NR == 1 {print name"\t"$1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8}' Regions_observed_${A}.txt  > Genomic_regions_observed_${A}.txt ;

done

rm *sorted.txt
rm *_trinuc.txt
rm Regions*

unset fileList
unset fileList2

##

awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_all_exp_SNVs.txt| awk '{print $0 >> $4}' -
awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_all_exp_SNVs.txt| awk '{print $0 >> $4}' -
for i in *trinuc.txt ;

do

sort -k 1,1 -k2,2n $i > ${i}_sorted.txt

intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/Coding_Exons_hg19.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > exon_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/UTR_5prime_hg19.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > exon_5prime_UTR_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/UTR_3prime_hg19.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > exon_3prime_UTR_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/Introns_hg19.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > intron_${i} ;
intersectBed -v -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/All_genic_hg19.bed -sorted | wc -l > non_genic_${i} ;
 done



declare -A fileList
for f in intron_*_trinuc.txt ; do 
    fileList[${#fileList[@]}+1]=$(echo ${f%_t*});
done

declare -A fileList2
for f in ${fileList[@]} ; do
	fileList2[${#fileList2[@]}+1]=$(echo ${f#*n_});
done


for A in ${fileList2[@]} ; do
	paste exon_${A}_trinuc.txt  exon_3prime_UTR_${A}_trinuc.txt  exon_5prime_UTR_${A}_trinuc.txt  intron_${A}_trinuc.txt non_genic_${A}_trinuc.txt > Regions_observed_${A}.txt

	name=$(echo $A)

awk -v name=$name ' NR == 1 {print name"\t"$1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8}' Regions_observed_${A}.txt  > Genomic_regions_expected_${A}.txt ;

done

rm Regions*
rm *sorted.txt
rm *_trinuc.txt

cat *observed* > Observed_genomic_regions.txt
cat *expected* > Expected_genomic_regions.txt

{ printf 'Sample\tExon_obs_count\tUTR_3_obs_count\tUTR_5_obs_count\tIntron_obs_count\tNon_gene_obs_count\n'; cat Observed_genomic_regions.txt ; } > obs_tmp.txt
{ printf 'Sample\tExon_sim_count\tUTR_3_sim_count\tUTR_5_sim_count\tIntron_sim_count\tNon_gene_sim_count\n'; cat Expected_genomic_regions.txt ; } > exp_tmp.txt

Rscript /home/jbarbour/scripts/merge_obs_exp_genes.r

rm Genomic_regions_*
rm *_regions.txt
rm *_tmp.txt

sed -i 's/"//g' Gene_body_densities.txt
rename 's/Gene_body_densities.txt/Gene_body_densities_all_SNVs.txt/' *.txt


rm tmp*

unset fileList
unset fileList2

##############################################################################

awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_Other_obs_SNVs.txt | awk '{print $0 >> $4}' -
awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_Other_obs_SNVs.txt | awk '{print $0 >> $4}' -
for i in *trinuc.txt ;

do

sort -k 1,1 -k2,2n $i > ${i}_sorted.txt

intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/Coding_Exons_hg19.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > exon_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/UTR_5prime_hg19.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > exon_5prime_UTR_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/UTR_3prime_hg19.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > exon_3prime_UTR_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/Introns_hg19.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > intron_${i} ;
intersectBed -v -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/All_genic_hg19.bed -sorted | wc -l > non_genic_${i} ;

 done


declare -A fileList
for f in intron_*_trinuc.txt ; do 
    fileList[${#fileList[@]}+1]=$(echo ${f%_t*});
done

declare -A fileList2
for f in ${fileList[@]} ; do
	fileList2[${#fileList2[@]}+1]=$(echo ${f#*n_});
done


for A in ${fileList2[@]} ; do
	paste exon_${A}_trinuc.txt  exon_3prime_UTR_${A}_trinuc.txt  exon_5prime_UTR_${A}_trinuc.txt  intron_${A}_trinuc.txt non_genic_${A}_trinuc.txt > Regions_observed_${A}.txt

	name=$(echo $A)

awk -v name=$name ' NR == 1 {print name"\t"$1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8}' Regions_observed_${A}.txt  > Genomic_regions_observed_${A}.txt ;

done

rm *sorted.txt
rm *_trinuc.txt
rm Regions*

unset fileList
unset fileList2

##

awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_Other_exp_SNVs.txt | awk '{print $0 >> $4}' -
awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_Other_exp_SNVs.txt | awk '{print $0 >> $4}' -
for i in *trinuc.txt ;

do

sort -k 1,1 -k2,2n $i > ${i}_sorted.txt

intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/Coding_Exons_hg19.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > exon_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/UTR_5prime_hg19.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > exon_5prime_UTR_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/UTR_3prime_hg19.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > exon_3prime_UTR_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/Introns_hg19.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > intron_${i} ;
intersectBed -v -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/All_genic_hg19.bed -sorted | wc -l > non_genic_${i} ;
 done

declare -A fileList
for f in intron_*_trinuc.txt ; do 
    fileList[${#fileList[@]}+1]=$(echo ${f%_t*});
done

declare -A fileList2
for f in ${fileList[@]} ; do
	fileList2[${#fileList2[@]}+1]=$(echo ${f#*n_});
done


for A in ${fileList2[@]} ; do
	paste exon_${A}_trinuc.txt  exon_3prime_UTR_${A}_trinuc.txt  exon_5prime_UTR_${A}_trinuc.txt  intron_${A}_trinuc.txt non_genic_${A}_trinuc.txt > Regions_observed_${A}.txt

	name=$(echo $A)

awk -v name=$name ' NR == 1 {print name"\t"$1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8}' Regions_observed_${A}.txt  > Genomic_regions_expected_${A}.txt ;

done


rm Regions*
rm *sorted.txt
rm *_trinuc.txt

cat *observed* > Observed_genomic_regions.txt
cat *expected* > Expected_genomic_regions.txt

{ printf 'Sample\tExon_obs_count\tUTR_3_obs_count\tUTR_5_obs_count\tIntron_obs_count\tNon_gene_obs_count\n'; cat Observed_genomic_regions.txt ; } > obs_tmp.txt
{ printf 'Sample\tExon_sim_count\tUTR_3_sim_count\tUTR_5_sim_count\tIntron_sim_count\tNon_gene_sim_count\n'; cat Expected_genomic_regions.txt ; } > exp_tmp.txt

Rscript /home/jbarbour/scripts/merge_obs_exp_genes.r

rm Genomic_regions_*
rm *_regions.txt
rm *_tmp.txt

sed -i 's/"//g' Gene_body_densities.txt
rename 's/Gene_body_densities.txt/Gene_body_densities_Other_SNVs.txt/' *.txt


rm tmp*

unset fileList
unset fileList2


##############################################################################

awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_APOBEC_obs_SNVs.txt | awk '{print $0 >> $4}' -
awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_APOBEC_obs_SNVs.txt | awk '{print $0 >> $4}' -

for i in *trinuc.txt ;

do

sort -k 1,1 -k2,2n $i > ${i}_sorted.txt

intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/Coding_Exons_hg19.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > exon_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/UTR_5prime_hg19.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > exon_5prime_UTR_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/UTR_3prime_hg19.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > exon_3prime_UTR_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/Introns_hg19.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > intron_${i} ;
intersectBed -v -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/All_genic_hg19.bed -sorted | wc -l > non_genic_${i} ;

 done

declare -A fileList
for f in intron_*_trinuc.txt ; do 
    fileList[${#fileList[@]}+1]=$(echo ${f%_t*});
done

declare -A fileList2
for f in ${fileList[@]} ; do
	fileList2[${#fileList2[@]}+1]=$(echo ${f#*n_});
done


for A in ${fileList2[@]} ; do
	paste exon_${A}_trinuc.txt  exon_3prime_UTR_${A}_trinuc.txt  exon_5prime_UTR_${A}_trinuc.txt  intron_${A}_trinuc.txt non_genic_${A}_trinuc.txt > Regions_observed_${A}.txt

	name=$(echo $A)

awk -v name=$name ' NR == 1 {print name"\t"$1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8}' Regions_observed_${A}.txt  > Genomic_regions_observed_${A}.txt ;

done

rm *sorted.txt
rm *_trinuc.txt
rm Regions*

unset fileList
unset fileList2

##

awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_APOBEC_exp_SNVs.txt | awk '{print $0 >> $4}' -
awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_APOBEC_exp_SNVs.txt | awk '{print $0 >> $4}' -
for i in *trinuc.txt ;

do

sort -k 1,1 -k2,2n $i > ${i}_sorted.txt

intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/Coding_Exons_hg19.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > exon_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/UTR_5prime_hg19.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > exon_5prime_UTR_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/UTR_3prime_hg19.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > exon_3prime_UTR_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/Introns_hg19.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > intron_${i} ;
intersectBed -v -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/All_genic_hg19.bed -sorted | wc -l > non_genic_${i} ;
 done

declare -A fileList
for f in intron_*_trinuc.txt ; do 
    fileList[${#fileList[@]}+1]=$(echo ${f%_t*});
done

declare -A fileList2
for f in ${fileList[@]} ; do
	fileList2[${#fileList2[@]}+1]=$(echo ${f#*n_});
done


for A in ${fileList2[@]} ; do
	paste exon_${A}_trinuc.txt  exon_3prime_UTR_${A}_trinuc.txt  exon_5prime_UTR_${A}_trinuc.txt  intron_${A}_trinuc.txt non_genic_${A}_trinuc.txt > Regions_observed_${A}.txt

	name=$(echo $A)

awk -v name=$name ' NR == 1 {print name"\t"$1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8}' Regions_observed_${A}.txt  > Genomic_regions_expected_${A}.txt ;

done


rm Regions*
rm *sorted.txt
rm *_trinuc.txt

cat *observed* > Observed_genomic_regions.txt
cat *expected* > Expected_genomic_regions.txt

{ printf 'Sample\tExon_obs_count\tUTR_3_obs_count\tUTR_5_obs_count\tIntron_obs_count\tNon_gene_obs_count\n'; cat Observed_genomic_regions.txt ; } > obs_tmp.txt
{ printf 'Sample\tExon_sim_count\tUTR_3_sim_count\tUTR_5_sim_count\tIntron_sim_count\tNon_gene_sim_count\n'; cat Expected_genomic_regions.txt ; } > exp_tmp.txt

Rscript /home/jbarbour/scripts/merge_obs_exp_genes.r

rm Genomic_regions_*
rm *_regions.txt
rm *_tmp.txt

sed -i 's/"//g' Gene_body_densities.txt
rename 's/Gene_body_densities.txt/Gene_body_densities_APOBEC_SNVs.txt/' *.txt


rm tmp*

unset fileList
unset fileList2






















