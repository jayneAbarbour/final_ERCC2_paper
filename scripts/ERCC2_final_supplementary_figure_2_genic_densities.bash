

cd /home/jbarbour/final_ERCC2_paper/analysis/supplementary_figure_2/genic_densities



awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_Other_obs_SNVs.txt | awk '{print $0 >> $4}' - | awk '{print $0 >> $4}' -
awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_Other_obs_SNVs.txt | awk '{print $0 >> $4}' -


for i in *trinuc.txt ;

do

sort -k 1,1 -k2,2n $i > ${i}_sorted.txt

intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/top_half_bladder_canonical_genes_whole.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > expressed_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/TSS_flank_expressed.txt -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > expressed_TSS_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/TES_flank_expressed.txt -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > expressed_TES_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/silent_bladder_canonical_genes_whole.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > silent_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/TSS_flank_silent.txt -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > silent_TSS_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/TES_flank_silent.txt -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > silent_TES_${i} ;

 done

declare -A fileList
for f in expressed_TSS_*_trinuc.txt ; do 
    fileList[${#fileList[@]}+1]=$(echo ${f%_t*});
done

declare -A fileList2
for f in ${fileList[@]} ; do
	fileList2[${#fileList2[@]}+1]=$(echo ${f#*S_});
done


for A in ${fileList2[@]} ; do
	paste expressed_${A}_trinuc.txt  expressed_TSS_${A}_trinuc.txt  expressed_TES_${A}_trinuc.txt  silent_${A}_trinuc.txt silent_TSS_${A}_trinuc.txt  silent_TES_${A}_trinuc.txt > Regions_observed_${A}.txt

	name=$(echo $A)

awk -v name=$name ' NR == 1 {print name"\t"$1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9}' Regions_observed_${A}.txt  > Genomic_regions_observed_${A}.txt ;

done


rm *sorted.txt
rm *_trinuc.txt
rm Regions*

unset fileList
unset fileList2

awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_Other_exp_SNVs.txt | awk '{print $0 >> $4}' -
awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_Other_exp_SNVs.txt | awk '{print $0 >> $4}' -


for i in *trinuc.txt ;

do

sort -k 1,1 -k2,2n $i > ${i}_sorted.txt

intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/top_half_bladder_canonical_genes_whole.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > expressed_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/TSS_flank_expressed.txt -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > expressed_TSS_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/TES_flank_expressed.txt -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > expressed_TES_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/silent_bladder_canonical_genes_whole.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > silent_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/TSS_flank_silent.txt -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > silent_TSS_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/TES_flank_silent.txt -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > silent_TES_${i} ;
 done



declare -A fileList
for f in expressed_TSS_*_trinuc.txt ; do 
    fileList[${#fileList[@]}+1]=$(echo ${f%_t*});
done

declare -A fileList2
for f in ${fileList[@]} ; do
	fileList2[${#fileList2[@]}+1]=$(echo ${f#*S_});
done


for A in ${fileList2[@]} ; do
	paste expressed_${A}_trinuc.txt  expressed_TSS_${A}_trinuc.txt  expressed_TES_${A}_trinuc.txt  silent_${A}_trinuc.txt silent_TSS_${A}_trinuc.txt  silent_TES_${A}_trinuc.txt > Regions_expected_${A}.txt

	name=$(echo $A)

awk -v name=$name ' NR == 1 {print name"\t"$1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9}' Regions_expected_${A}.txt  > Genomic_regions_expected_${A}.txt ;

done


rm *sorted.txt
rm *_trinuc.txt
rm Regions*

unset fileList
unset fileList2

cat *observed* > Observed_genomic_regions.txt
cat *expected* > Expected_genomic_regions.txt

{ printf 'Sample\tExpressed_gene_body_obs\tExpressed_TSS_flank_obs\tExpressed_TES_Flank_obs\tSilent_gene_body_obs\tSilent_TSS_flank_obs\tSilent_TES_Flank_obs\n'; cat Observed_genomic_regions.txt ; } > obs_tmp.txt
{ printf 'Sample\tExpressed_gene_body_exp\tExpressed_TSS_flank_exp\tExpressed_TES_Flank_exp\tSilent_gene_body_exp\tSilent_TSS_flank_exp\tSilent_TES_Flank_exp\n'; cat Expected_genomic_regions.txt ; } > exp_tmp.txt

Rscript ~/scripts/merge_obs_exp_gene_statistics.r

rm Genomic_regions_*
rm *_regions.txt
rm *_tmp.txt

sed -i 's/"//g' Gene_body_densities.txt
rename 's/Gene_body_densities.txt/Gene_body_densities_Other_SNVs.txt/' *.txt


rm tmp*

unset fileList
unset fileList2

##########################################

awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_APOBEC_obs_SNVs.txt | awk '{print $0 >> $4}' - | awk '{print $0 >> $4}' -
awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_APOBEC_obs_SNVs.txt | awk '{print $0 >> $4}' -


for i in *trinuc.txt ;

do

sort -k 1,1 -k2,2n $i > ${i}_sorted.txt

intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/top_half_bladder_canonical_genes_whole.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > expressed_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/TSS_flank_expressed.txt -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > expressed_TSS_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/TES_flank_expressed.txt -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > expressed_TES_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/silent_bladder_canonical_genes_whole.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > silent_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/TSS_flank_silent.txt -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > silent_TSS_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/TES_flank_silent.txt -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > silent_TES_${i} ;

 done
 
 
 

declare -A fileList
for f in expressed_TSS_*_trinuc.txt ; do 
    fileList[${#fileList[@]}+1]=$(echo ${f%_t*});
done

declare -A fileList2
for f in ${fileList[@]} ; do
	fileList2[${#fileList2[@]}+1]=$(echo ${f#*S_});
done


for A in ${fileList2[@]} ; do
	paste expressed_${A}_trinuc.txt  expressed_TSS_${A}_trinuc.txt  expressed_TES_${A}_trinuc.txt  silent_${A}_trinuc.txt silent_TSS_${A}_trinuc.txt  silent_TES_${A}_trinuc.txt > Regions_observed_${A}.txt

	name=$(echo $A)

awk -v name=$name ' NR == 1 {print name"\t"$1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9}' Regions_observed_${A}.txt  > Genomic_regions_observed_${A}.txt ;

done


rm *sorted.txt
rm *_trinuc.txt
rm Regions*

unset fileList
unset fileList2

awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_APOBEC_exp_SNVs.txt | awk '{print $0 >> $4}' -
awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_APOBEC_exp_SNVs.txt | awk '{print $0 >> $4}' -

for i in *trinuc.txt ;

do

sort -k 1,1 -k2,2n $i > ${i}_sorted.txt

intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/top_half_bladder_canonical_genes_whole.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > expressed_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/TSS_flank_expressed.txt -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > expressed_TSS_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/TES_flank_expressed.txt -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > expressed_TES_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/silent_bladder_canonical_genes_whole.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > silent_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/TSS_flank_silent.txt -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > silent_TSS_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/TES_flank_silent.txt -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > silent_TES_${i} ;
 done

declare -A fileList
for f in expressed_TSS_*_trinuc.txt ; do 
    fileList[${#fileList[@]}+1]=$(echo ${f%_t*});
done

declare -A fileList2
for f in ${fileList[@]} ; do
	fileList2[${#fileList2[@]}+1]=$(echo ${f#*S_});
done


for A in ${fileList2[@]} ; do
	paste expressed_${A}_trinuc.txt  expressed_TSS_${A}_trinuc.txt  expressed_TES_${A}_trinuc.txt  silent_${A}_trinuc.txt silent_TSS_${A}_trinuc.txt  silent_TES_${A}_trinuc.txt > Regions_expected_${A}.txt

	name=$(echo $A)

awk -v name=$name ' NR == 1 {print name"\t"$1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9}' Regions_expected_${A}.txt  > Genomic_regions_expected_${A}.txt ;

done


rm *sorted.txt
rm *_trinuc.txt
rm Regions*

unset fileList
unset fileList2

cat *observed* > Observed_genomic_regions.txt
cat *expected* > Expected_genomic_regions.txt

{ printf 'Sample\tExpressed_gene_body_obs\tExpressed_TSS_flank_obs\tExpressed_TES_Flank_obs\tSilent_gene_body_obs\tSilent_TSS_flank_obs\tSilent_TES_Flank_obs\n'; cat Observed_genomic_regions.txt ; } > obs_tmp.txt
{ printf 'Sample\tExpressed_gene_body_exp\tExpressed_TSS_flank_exp\tExpressed_TES_Flank_exp\tSilent_gene_body_exp\tSilent_TSS_flank_exp\tSilent_TES_Flank_exp\n'; cat Expected_genomic_regions.txt ; } > exp_tmp.txt

Rscript ~/scripts/merge_obs_exp_gene_statistics.r

rm Genomic_regions_*
rm *_regions.txt
rm *_tmp.txt

sed -i 's/"//g' Gene_body_densities.txt
rename 's/Gene_body_densities.txt/Gene_body_densities_APOBEC_SNVs.txt/' *.txt


rm tmp*

unset fileList
unset fileList2


