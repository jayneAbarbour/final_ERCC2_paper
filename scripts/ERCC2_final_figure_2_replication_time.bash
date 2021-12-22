
cd /home/jbarbour/final_ERCC2_paper/analysis/figure_2_replication_time
rm *
awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_all_obs_SNVs.txt | awk '{print $0 >> $4}' -
awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_all_obs_SNVs.txt | awk '{print $0 >> $4}' -
for i in *trinuc.txt ;

do

sort -k 1,1 -k2,2n $i > ${i}_sorted.txt

intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_1_sorted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_1_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_2_sorted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_2_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_3_sorted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_3_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_4_sorted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_4_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_5_sorted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_5_${i} ;

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
	paste bin_1_${A}_trinuc.txt  bin_2_${A}_trinuc.txt  bin_3_${A}_trinuc.txt  bin_4_${A}_trinuc.txt bin_5_${A}_trinuc.txt > Rep_bins_observed_${A}.txt

	name=$(echo $A)

awk -v name=$name ' NR == 1 {print name"\t"$1"\t"$2"\t"$3"\t"$4"\t"$5}' Rep_bins_observed_${A}.txt  > Rep_time_bins_observed_${A}.txt ;

done

unset fileList
unset fileList2

rm Rep_bins_*
rm bin_*
rm *_trinuc.txt
rm *_sorted.txt

##

awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_all_exp_SNVs.txt | awk '{print $0 >> $4}' -
awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_all_exp_SNVs.txt | awk '{print $0 >> $4}' - 

for i in *trinuc.txt ;

do


sort -k 1,1 -k2,2n $i > ${i}_sorted.txt

intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_1_sorted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_1_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_2_sorted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_2_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_3_sorted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_3_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_4_sorted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_4_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_5_sorted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_5_${i} ;

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
	paste bin_1_${A}_trinuc.txt  bin_2_${A}_trinuc.txt  bin_3_${A}_trinuc.txt  bin_4_${A}_trinuc.txt bin_5_${A}_trinuc.txt > Rep_bins_expected_${A}.txt

	name=$(echo $A)

awk -v name=$name ' NR == 1 {print name"\t"$1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"$10}' Rep_bins_expected_${A}.txt  > Rep_time_bins_expected_${A}.txt ;

done

cat Rep_time_bins_observed* > Observed_rep_bins.txt
cat Rep_time_bins_expected* > Expected_rep_bins.txt

{ printf 'Sample\tBin_1_obs_counts\tBin_2_obs_counts\tBin_3_obs_counts\tBin_4_obs_counts\tBin_5_obs_counts\n'; cat Observed_rep_bins.txt ; } > obs_tmp.txt
{ printf 'Sample\tBin_1_sim_counts\tBin_2_sim_counts\tBin_3_sim_counts\tBin_4_sim_counts\tBin_5_sim_counts\n'; cat Expected_rep_bins.txt ; } > exp_tmp.txt

Rscript /home/jbarbour/final_ERCC2_paper/scripts/Merge_rep_time_obs_exp.r

rm Rep_*
rm *trinuc*

sed -i 's/"//g' Replication_time.txt

rename 's/Replication_time.txt/Replication_time_all_SNVs.txt/' Replication_time.txt

rm *tmp*
rm *bins.txt

unset fileList
unset fileList2

############################################################################################################################################

awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_Other_obs_SNVs.txt | awk '{print $0 >> $4}' -
awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_Other_obs_SNVs.txt | awk '{print $0 >> $4}' -
  
for i in *trinuc.txt ;

do

sort -k 1,1 -k2,2n $i > ${i}_sorted.txt

intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_1_sorted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_1_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_2_sorted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_2_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_3_sorted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_3_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_4_sorted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_4_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_5_sorted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_5_${i} ;

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
	paste bin_1_${A}_trinuc.txt  bin_2_${A}_trinuc.txt  bin_3_${A}_trinuc.txt  bin_4_${A}_trinuc.txt bin_5_${A}_trinuc.txt > Rep_bins_observed_${A}.txt

	name=$(echo $A)

awk -v name=$name ' NR == 1 {print name"\t"$1"\t"$2"\t"$3"\t"$4"\t"$5}' Rep_bins_observed_${A}.txt  > Rep_time_bins_observed_${A}.txt ;

done

unset fileList
unset fileList2

rm Rep_bins_*
rm bin_*
rm *_trinuc.txt
rm *_sorted.txt

##

awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_Other_exp_SNVs.txt  | awk '{print $0 >> $4}' -
awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_Other_exp_SNVs.txt  | awk '{print $0 >> $4}' -
 
for i in *trinuc.txt ;

do



sort -k 1,1 -k2,2n $i > ${i}_sorted.txt

intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_1_sorted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_1_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_2_sorted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_2_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_3_sorted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_3_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_4_sorted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_4_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_5_sorted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_5_${i} ;

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
	paste bin_1_${A}_trinuc.txt  bin_2_${A}_trinuc.txt  bin_3_${A}_trinuc.txt  bin_4_${A}_trinuc.txt bin_5_${A}_trinuc.txt > Rep_bins_expected_${A}.txt

	name=$(echo $A)

awk -v name=$name ' NR == 1 {print name"\t"$1"\t"$2"\t"$3"\t"$4"\t"$5}' Rep_bins_expected_${A}.txt  > Rep_time_bins_expected_${A}.txt ;

done

cat Rep_time_bins_observed* > Observed_rep_bins.txt
cat Rep_time_bins_expected* > Expected_rep_bins.txt

{ printf 'Sample\tBin_1_obs_counts\tBin_2_obs_counts\tBin_3_obs_counts\tBin_4_obs_counts\tBin_5_obs_counts\n'; cat Observed_rep_bins.txt ; } > obs_tmp.txt
{ printf 'Sample\tBin_1_sim_counts\tBin_2_sim_counts\tBin_3_sim_counts\tBin_4_sim_counts\tBin_5_sim_counts\n'; cat Expected_rep_bins.txt ; } > exp_tmp.txt
Rscript /home/jbarbour/final_ERCC2_paper/scripts/Merge_rep_time_obs_exp.r

rm Rep_*
rm *trinuc*

sed -i 's/"//g' Replication_time.txt

rename 's/Replication_time.txt/Replication_time_other_SNVs.txt/' Replication_time.txt

rm *tmp*
rm *bins.txt

unset fileList
unset fileList2

###############################################################################################

awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_APOBEC_obs_SNVs.txt | awk '{print $0 >> $4}' -
awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_APOBEC_obs_SNVs.txt | awk '{print $0 >> $4}' -
for i in *trinuc.txt ;

do
sort -k 1,1 -k2,2n $i > ${i}_sorted.txt

intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_1_sorted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_1_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_2_sorted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_2_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_3_sorted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_3_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_4_sorted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_4_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_5_sorted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_5_${i} ;

 
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
	paste bin_1_${A}_trinuc.txt  bin_2_${A}_trinuc.txt  bin_3_${A}_trinuc.txt  bin_4_${A}_trinuc.txt bin_5_${A}_trinuc.txt > Rep_bins_observed_${A}.txt

	name=$(echo $A)

awk -v name=$name ' NR == 1 {print name"\t"$1"\t"$2"\t"$3"\t"$4"\t"$5}' Rep_bins_observed_${A}.txt  > Rep_time_bins_observed_${A}.txt ;

done

unset fileList
unset fileList2

rm Rep_bins_*
rm bin_*
rm *_trinuc.txt
rm *_sorted.txt

##

awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_APOBEC_exp_SNVs.txt  | awk '{print $0 >> $4}' -
awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_APOBEC_exp_SNVs.txt  | awk '{print $0 >> $4}' -

for i in *trinuc.txt ;

do

sort -k 1,1 -k2,2n $i > ${i}_sorted.txt

intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_1_sorted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_1_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_2_sorted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_2_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_3_sorted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_3_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_4_sorted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_4_${i} ;
intersectBed -a ${i}_sorted.txt -b /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_5_sorted.bed -sorted -c | awk ' { SUM += $8 } END {print SUM}' - > bin_5_${i} ;

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
	paste bin_1_${A}_trinuc.txt  bin_2_${A}_trinuc.txt  bin_3_${A}_trinuc.txt  bin_4_${A}_trinuc.txt bin_5_${A}_trinuc.txt > Rep_bins_expected_${A}.txt

	name=$(echo $A)

awk -v name=$name ' NR == 1 {print name"\t"$1"\t"$2"\t"$3"\t"$4"\t"$5}' Rep_bins_expected_${A}.txt  > Rep_time_bins_expected_${A}.txt ;

done

cat Rep_time_bins_observed* > Observed_rep_bins.txt
cat Rep_time_bins_expected* > Expected_rep_bins.txt

{ printf 'Sample\tBin_1_obs_counts\tBin_2_obs_counts\tBin_3_obs_counts\tBin_4_obs_counts\tBin_5_obs_counts\n'; cat Observed_rep_bins.txt ; } > obs_tmp.txt
{ printf 'Sample\tBin_1_sim_counts\tBin_2_sim_counts\tBin_3_sim_counts\tBin_4_sim_counts\tBin_5_sim_counts\n'; cat Expected_rep_bins.txt ; } > exp_tmp.txt
Rscript /home/jbarbour/final_ERCC2_paper/scripts/Merge_rep_time_obs_exp.r

rm Rep_*
rm *trinuc*

sed -i 's/"//g' Replication_time.txt

rename 's/Replication_time.txt/Replication_time_APOBEC_SNVs.txt/' Replication_time.txt

rm *tmp*
rm *bins.txt

unset fileList
unset fileList2