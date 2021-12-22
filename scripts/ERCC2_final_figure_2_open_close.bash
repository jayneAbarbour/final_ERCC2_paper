
cd /home/jbarbour/final_ERCC2_paper/analysis/figure_2_open_close
rm *

awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_all_obs_SNVs.txt | awk '{print $0 >> $4}' -
awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_all_obs_SNVs.txt | awk '{print $0 >> $4}' -
for i in *trinuc.txt ;

do

sort -k 1,1 -k2,2n $i > ${i}_sorted.txt

intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_open.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > open_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_closed.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' -  > closed_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_open_CBS_subtracted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' -  > open_CBS_subtracted_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_closed_CBS_subtracted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > closed_CBS_subtracted_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_open_CBS+genes_subtracted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > open_CBS+genes_subtracted_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_closed_CBS+genes_subtracted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > closed_CBS+genes_subtracted_${i} ;

 done

declare -A fileList
for f in  open_CBS_subtracted_*_trinuc.txt ; do 
    fileList[${#fileList[@]}+1]=$(echo ${f%_t*});
done

declare -A fileList2
for f in ${fileList[@]} ; do
	fileList2[${#fileList2[@]}+1]=$(echo ${f#*d_});
done

for A in ${fileList2[@]} ; do
	paste open_${A}_trinuc.txt closed_${A}_trinuc.txt open_CBS_subtracted_${A}_trinuc.txt closed_CBS_subtracted_${A}_trinuc.txt  open_CBS+genes_subtracted_${A}_trinuc.txt closed_CBS+genes_subtracted_${A}_trinuc.txt >  Regions_observed_${A}.txt 

	name=$(echo $A)

awk -v name=$name ' NR == 1 {print name"\t"$1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6}' Regions_observed_${A}.txt  > Genomic_regions_observed_${A}.txt ;

done


rm *sorted.txt
rm *_trinuc.txt
rm Regions*

unset fileList
unset fileList2

##

awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_all_exp_SNVs.txt | awk '{print $0 >> $4}' -
awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_all_exp_SNVs.txt | awk '{print $0 >> $4}' -
for i in *trinuc.txt ;

do

sort -k 1,1 -k2,2n $i > ${i}_sorted.txt

intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_open.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > open_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_closed.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' -  > closed_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_open_CBS_subtracted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' -  > open_CBS_subtracted_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_closed_CBS_subtracted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > closed_CBS_subtracted_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_open_CBS+genes_subtracted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > open_CBS+genes_subtracted_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_closed_CBS+genes_subtracted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > closed_CBS+genes_subtracted_${i} ;

 done

declare -A fileList
for f in  open_CBS_subtracted_*_trinuc.txt ; do 
    fileList[${#fileList[@]}+1]=$(echo ${f%_t*});
done

declare -A fileList2
for f in ${fileList[@]} ; do
	fileList2[${#fileList2[@]}+1]=$(echo ${f#*d_});
done

for A in ${fileList2[@]} ; do
	paste open_${A}_trinuc.txt closed_${A}_trinuc.txt open_CBS_subtracted_${A}_trinuc.txt closed_CBS_subtracted_${A}_trinuc.txt  open_CBS+genes_subtracted_${A}_trinuc.txt closed_CBS+genes_subtracted_${A}_trinuc.txt >  Regions_expected_${A}.txt 

	name=$(echo $A)

awk -v name=$name ' NR == 1 {print name"\t"$1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6}' Regions_expected_${A}.txt  > Genomic_regions_expected_${A}.txt ;

done




rm Regions*
rm *sorted.txt
rm *_trinuc.txt

cat *observed* > Observed_genomic_regions.txt
cat *expected* > Expected_genomic_regions.txt

{ printf 'Sample\tOpen_obs\tClosed_obs\tOpen_CSB_subtract_obs\tClosed_CSB_subtract_obs\tOpen_CSB_gene_subtract_obs\tClosed_CSB_gene_subtract_obs\n'; cat Observed_genomic_regions.txt ; } > obs_tmp3.txt
{ printf 'Sample\tOpen_exp\tClosed_exp\tOpen_CSB_subtract_exp\tClosed_CSB_subtract_exp\tOpen_CSB_gene_subtract_exp\tClosed_CSB_gene_subtract_exp\n'; cat Expected_genomic_regions.txt ; } > exp_tmp3.txt


rm Genomic_regions_*
rm *_regions.txt
rm *_tmp.txt

##############################################################################

awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_Other_obs_SNVs.txt | awk '{print $0 >> $4}' -
awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_Other_obs_SNVs.txt | awk '{print $0 >> $4}' -

for i in *trinuc.txt ;

do

sort -k 1,1 -k2,2n $i > ${i}_sorted.txt

intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_open.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > open_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_closed.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' -  > closed_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_open_CBS_subtracted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' -  > open_CBS_subtracted_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_closed_CBS_subtracted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > closed_CBS_subtracted_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_open_CBS+genes_subtracted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > open_CBS+genes_subtracted_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_closed_CBS+genes_subtracted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > closed_CBS+genes_subtracted_${i} ;

 done

declare -A fileList
for f in  open_CBS_subtracted_*_trinuc.txt ; do 
    fileList[${#fileList[@]}+1]=$(echo ${f%_t*});
done

declare -A fileList2
for f in ${fileList[@]} ; do
	fileList2[${#fileList2[@]}+1]=$(echo ${f#*d_});
done

for A in ${fileList2[@]} ; do
	paste open_${A}_trinuc.txt closed_${A}_trinuc.txt open_CBS_subtracted_${A}_trinuc.txt closed_CBS_subtracted_${A}_trinuc.txt  open_CBS+genes_subtracted_${A}_trinuc.txt closed_CBS+genes_subtracted_${A}_trinuc.txt >  Regions_observed_${A}.txt 

	name=$(echo $A)

awk -v name=$name ' NR == 1 {print name"\t"$1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6}' Regions_observed_${A}.txt  > Genomic_regions_observed_${A}.txt ;

done


rm *sorted.txt
rm *_trinuc.txt
rm Regions*

unset fileList
unset fileList2

##

awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_Other_exp_SNVs.txt | awk '{print $0 >> $4}' -
awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_Other_exp_SNVs.txt | awk '{print $0 >> $4}' 
for i in *trinuc.txt ;

do

sort -k 1,1 -k2,2n $i > ${i}_sorted.txt

intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_open.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > open_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_closed.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' -  > closed_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_open_CBS_subtracted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' -  > open_CBS_subtracted_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_closed_CBS_subtracted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > closed_CBS_subtracted_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_open_CBS+genes_subtracted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > open_CBS+genes_subtracted_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_closed_CBS+genes_subtracted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > closed_CBS+genes_subtracted_${i} ;

 done

declare -A fileList
for f in  open_CBS_subtracted_*_trinuc.txt ; do 
    fileList[${#fileList[@]}+1]=$(echo ${f%_t*});
done

declare -A fileList2
for f in ${fileList[@]} ; do
	fileList2[${#fileList2[@]}+1]=$(echo ${f#*d_});
done

for A in ${fileList2[@]} ; do
	paste open_${A}_trinuc.txt closed_${A}_trinuc.txt open_CBS_subtracted_${A}_trinuc.txt closed_CBS_subtracted_${A}_trinuc.txt  open_CBS+genes_subtracted_${A}_trinuc.txt closed_CBS+genes_subtracted_${A}_trinuc.txt >  Regions_expected_${A}.txt 

	name=$(echo $A)

awk -v name=$name ' NR == 1 {print name"\t"$1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6}' Regions_expected_${A}.txt  > Genomic_regions_expected_${A}.txt ;

done


rm *sorted.txt
rm *_trinuc.txt
rm Regions*

unset fileList
unset fileList2

rm Regions*
rm *sorted.txt
rm *_trinuc.txt

cat Genomic_regions_observed* > Observed_genomic_regions.txt
cat Genomic_regions_expected* > Expected_genomic_regions.txt


{ printf 'Sample\tOpen_obs\tClosed_obs\tOpen_CSB_subtract_obs\tClosed_CSB_subtract_obs\tOpen_CSB_gene_subtract_obs\tClosed_CSB_gene_subtract_obs\n'; cat Observed_genomic_regions.txt ; } > obs_tmp2.txt
{ printf 'Sample\tOpen_exp\tClosed_exp\tOpen_CSB_subtract_exp\tClosed_CSB_subtract_exp\tOpen_CSB_gene_subtract_exp\tClosed_CSB_gene_subtract_exp\n'; cat Expected_genomic_regions.txt ; } > exp_tmp2.txt


rm Genomic_regions_*
rm *_regions.txt
rm *_tmp.txt

unset fileList
unset fileList2


##############################################################################

awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_APOBEC_obs_SNVs.txt | awk '{print $0 >> $4}' -
awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_APOBEC_obs_SNVs.txt | awk '{print $0 >> $4}' -

for i in *trinuc.txt ;

do

sort -k 1,1 -k2,2n $i > ${i}_sorted.txt

intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_open.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > open_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_closed.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' -  > closed_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_open_CBS_subtracted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' -  > open_CBS_subtracted_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_closed_CBS_subtracted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > closed_CBS_subtracted_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_open_CBS+genes_subtracted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > open_CBS+genes_subtracted_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_closed_CBS+genes_subtracted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > closed_CBS+genes_subtracted_${i} ;

 done

declare -A fileList
for f in  open_CBS_subtracted_*_trinuc.txt ; do 
    fileList[${#fileList[@]}+1]=$(echo ${f%_t*});
done

declare -A fileList2
for f in ${fileList[@]} ; do
	fileList2[${#fileList2[@]}+1]=$(echo ${f#*d_});
done

for A in ${fileList2[@]} ; do
	paste open_${A}_trinuc.txt closed_${A}_trinuc.txt open_CBS_subtracted_${A}_trinuc.txt closed_CBS_subtracted_${A}_trinuc.txt  open_CBS+genes_subtracted_${A}_trinuc.txt closed_CBS+genes_subtracted_${A}_trinuc.txt >  Regions_observed_${A}.txt 

	name=$(echo $A)

awk -v name=$name ' NR == 1 {print name"\t"$1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6}' Regions_observed_${A}.txt  > Genomic_regions_observed_${A}.txt ;

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

intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_open.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > open_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_closed.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' -  > closed_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_open_CBS_subtracted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' -  > open_CBS_subtracted_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_closed_CBS_subtracted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > closed_CBS_subtracted_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_open_CBS+genes_subtracted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > open_CBS+genes_subtracted_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_closed_CBS+genes_subtracted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > closed_CBS+genes_subtracted_${i} ;

done

declare -A fileList
for f in  open_CBS_subtracted_*_trinuc.txt ; do 
    fileList[${#fileList[@]}+1]=$(echo ${f%_t*});
done

declare -A fileList2
for f in ${fileList[@]} ; do
	fileList2[${#fileList2[@]}+1]=$(echo ${f#*d_});
done

for A in ${fileList2[@]} ; do
	paste open_${A}_trinuc.txt closed_${A}_trinuc.txt open_CBS_subtracted_${A}_trinuc.txt closed_CBS_subtracted_${A}_trinuc.txt  open_CBS+genes_subtracted_${A}_trinuc.txt closed_CBS+genes_subtracted_${A}_trinuc.txt >  Regions_expected_${A}.txt 

	name=$(echo $A)

awk -v name=$name ' NR == 1 {print name"\t"$1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6}' Regions_expected_${A}.txt  > Genomic_regions_expected_${A}.txt ;

done


rm Regions*
rm *sorted.txt
rm *_trinuc.txt

cat Genomic_regions_observed* > Observed_genomic_regions.txt
cat Genomic_regions_expected* > Expected_genomic_regions.txt


{ printf 'Sample\tOpen_obs\tClosed_obs\tOpen_CSB_subtract_obs\tClosed_CSB_subtract_obs\tOpen_CSB_gene_subtract_obs\tClosed_CSB_gene_subtract_obs\n'; cat Observed_genomic_regions.txt ; } > obs_tmp1.txt
{ printf 'Sample\tOpen_exp\tClosed_exp\tOpen_CSB_subtract_exp\tClosed_CSB_subtract_exp\tOpen_CSB_gene_subtract_exp\tClosed_CSB_gene_subtract_exp\n'; cat Expected_genomic_regions.txt ; } > exp_tmp1.txt


rm Genomic_regions_*
rm *_regions.txt


Rscript /home/jbarbour/final_ERCC2_paper/scripts/processing_open_close.r

rm *tmp*




















