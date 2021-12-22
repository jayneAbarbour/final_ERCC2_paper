

cd /home/jbarbour/final_ERCC2_paper/analysis/supplementary_figure_2/DHS_slope
rm *

awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_Other_obs_SNVs.txt| awk '{print $0 >> $4}' -
awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_Other_obs_SNVs.txt| awk '{print $0 >> $4}' -

for i in *trinuc.txt ;

do


sort -k 1,1 -k2,2n $i > ${i}_sorted.txt

intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_mapped_genes+CBS_removed_bin_1.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_1_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_mapped_genes+CBS_removed_bin_2.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_2_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_mapped_genes+CBS_removed_bin_3.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_3_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_mapped_genes+CBS_removed_bin_4.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_4_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_mapped_genes+CBS_removed_bin_5.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_5_${i} ;

 done


declare -A fileList
for f in bin_3_*_trinuc.txt ; do 
    fileList[${#fileList[@]}+1]=$(echo ${f%_t*});
done

declare -A fileList2
for f in ${fileList[@]} ; do
	fileList2[${#fileList2[@]}+1]=$(echo ${f#*3_});
done


for A in ${fileList2[@]} ; do
	paste bin_1_${A}_trinuc.txt  bin_2_${A}_trinuc.txt  bin_3_${A}_trinuc.txt  bin_4_${A}_trinuc.txt bin_5_${A}_trinuc.txt > DHS_bins_observed_${A}.txt

	name=$(echo $A)

awk -v name=$name ' NR == 1 {print name"\t"$1"\t"$2"\t"$3"\t"$4"\t"$5}' DHS_bins_observed_${A}.txt  > DHS_time_bins_observed_${A}.txt ;

done

unset fileList
unset fileList2

rm DHS_bins_*
rm bin_*
rm *_trinuc.txt
rm *_sorted.txt

##############################################################################

awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_Other_exp_SNVs.txt| awk '{print $0 >> $4}' -
awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_Other_exp_SNVs.txt| awk '{print $0 >> $4}' -
for i in *trinuc.txt ;

do

sort -k 1,1 -k2,2n $i > ${i}_sorted.txt

intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_mapped_genes+CBS_removed_bin_1.bed -sorted -c | awk ' { SUM += $8 } END {print (SUM/100)}' - > bin_1_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_mapped_genes+CBS_removed_bin_2.bed -sorted -c | awk ' { SUM += $8 } END {print (SUM/100)}' - > bin_2_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_mapped_genes+CBS_removed_bin_3.bed -sorted -c | awk ' { SUM += $8 } END {print (SUM/100)}' - > bin_3_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_mapped_genes+CBS_removed_bin_4.bed -sorted -c | awk ' { SUM += $8 } END {print (SUM/100)}' - > bin_4_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/bladder_mapped_genes+CBS_removed_bin_5.bed -sorted -c | awk ' { SUM += $8 } END {print (SUM/100)}' - > bin_5_${i} ;

 done

declare -A fileList
for f in bin_3_*_trinuc.txt ; do 
    fileList[${#fileList[@]}+1]=$(echo ${f%_t*});
done

declare -A fileList2
for f in ${fileList[@]} ; do
	fileList2[${#fileList2[@]}+1]=$(echo ${f#*3_});
done

for A in ${fileList2[@]} ; do
	paste bin_1_${A}_trinuc.txt  bin_2_${A}_trinuc.txt  bin_3_${A}_trinuc.txt  bin_4_${A}_trinuc.txt bin_5_${A}_trinuc.txt > DHS_bins_expected_${A}.txt

	name=$(echo $A)

awk -v name=$name ' NR == 1 {print name"\t"$1"\t"$2"\t"$3"\t"$4"\t"$5}' DHS_bins_expected_${A}.txt  > DHS_time_bins_expected_${A}.txt ;

done

cat DHS_time_bins_observed* > Observed_DHS_bins.txt
cat DHS_time_bins_expected* > Expected_DHS_bins.txt

{ printf 'Sample\tBin_1_obs\tBin_2_obs\tBin_3_obs\tBin_4_obs\tBin_5_obs\n'; cat Observed_DHS_bins.txt ; } > obs_tmp.txt
{ printf 'Sample\tBin_1_sim\tBin_2_sim\tBin_3_sim\tBin_4_sim\tBin_5_sim\n'; cat Expected_DHS_bins.txt ; } > exp_tmp.txt

Rscript /home/jbarbour/scripts/Merge_obs_exp_3.r

rm DHS_time*
rm DHS_bins*
rm *trinuc*

sed -i 's/"//g' DHS_landscape.txt

rename s/DHS_landscape/DHS_landscape_DHS/ DHS_landscape.txt

rm *tmp*
rm *bins.txt

unset fileList
unset fileList2




