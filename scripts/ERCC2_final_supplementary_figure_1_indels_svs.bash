

## Indels

cd /home/jbarbour/final_ERCC2_paper/analysis/supplementary_figure_1_indel_sv/indels
rm *
zcat /home/jbarbour/final_ERCC2_paper/data/mutation_data/TCGA-BLCA.mutect2_snv.tsv.gz | tail -n+2 - |\
awk -F'\t' '{print $3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$1}' - |\
awk '{split($6,a,"-"); print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"a[1]"-"a[2]"-"a[3] }' - |awk '{print $0 >> $6}' 

for f in TCGA-* ; do name=$(echo $f)
 awk -F'\t' 'length($4) > 1 {print $0}' $f | wc -l | awk -v name=$name '{print name"\t"$1}' - >> deletion_count.txt;
 awk -F'\t' 'length($5) > 1 {print $0}' $f | wc -l | awk -v name=$name '{print name"\t"$1}' - >> insertion_count.txt;
rm $f ; done

grep -wFf /home/jbarbour/final_ERCC2_paper/data/mutation_data/Bladder_mutant_IDs.txt insertion_count.txt | { printf 'Sample\tSmall_Insertion\n'; cat - ; } > ./../Mutant_insertion.txt
grep -wFf /home/jbarbour/final_ERCC2_paper/data/mutation_data/Bladder_mutant_IDs.txt deletion_count.txt | { printf 'Sample\tSmall_Deletion\n'; cat - ; } > ./../Mutant_deletion.txt

grep -wFf /home/jbarbour/final_ERCC2_paper/data/mutation_data/Bladder_WT_IDs.txt insertion_count.txt | { printf 'Sample\tSmall_Insertion\n'; cat - ; } > ./../WT_insertion.txt
grep -wFf /home/jbarbour/final_ERCC2_paper/data/mutation_data/Bladder_WT_IDs.txt deletion_count.txt | { printf 'Sample\tSmall_Deletion\n'; cat - ; } > ./../WT_deletion.txt


## SVs

cd /home/jbarbour/final_ERCC2_paper/analysis/supplementary_figure_1_indel_sv/svs

grep -wFf /home/jbarbour/final_ERCC2_paper/data/mutation_data/Bladder_mutant_IDs.txt /home/jbarbour/final_ERCC2_paper/data/mutation_data/TCGA_SVs.bedpe > tmp.txt
grep -wFf /home/jbarbour/final_ERCC2_paper/data/mutation_data/Bladder_WT_IDs.txt /home/jbarbour/final_ERCC2_paper/data/mutation_data/TCGA_SVs.bedpe >> tmp.txt

awk '{print $0 >> $12}' tmp.txt
rm tmp.txt

for f in * ;
do wc -l $f > ${f}_total.txt ;
awk '$10 == "DEL" {print}' $f | wc -l - > ${f}_deletions.txt ;
awk '$10 == "DUP" {print}' $f | wc -l - > ${f}_duplication.txt ;
awk '$10 == "h2hINV" {print}' $f | wc -l - > ${f}_h2h_inversion.txt ;
awk '$10 == "t2tINV" {print}' $f | wc -l - > ${f}_t2t_inversion.txt ;
awk '$10 == "TRA" {print}' $f | wc -l - > ${f}_translocations.txt ;
done
 
declare -A fileList
for f in *_duplication.txt ; do 
    fileList[${#fileList[@]}+1]=$(echo ${f%_du*});
done

for A in ${fileList[@]} ; do

name=$(echo $A)

awk -v name=$name ' NR == 1 {print name"\t"$1}' ${A}_total.txt > total_${A}.txt ;
awk -v name=$name ' NR == 1 {print name"\t"$1}' ${A}_t2t_inversion.txt > inversion_t2t_${A}.txt ;
awk -v name=$name ' NR == 1 {print name"\t"$1}' ${A}_h2h_inversion.txt > inversion_h2h_${A}.txt ;
awk -v name=$name ' NR == 1 {print name"\t"$1}' ${A}_translocations.txt > translocations_${A}.txt ;
awk -v name=$name ' NR == 1 {print name"\t"$1}' ${A}_duplication.txt > duplication_${A}.txt ;

done	

cat total* >> total_SVs.txt
cat inversion_t2t* >> inversion_t2t_SVs.txt
cat inversion_h2h* >> inversion_h2h_SVs.txt
cat translocations* >> translocations_SVs.txt
cat duplication* >> duplication_SVs.txt


rm TCGA*
rm total_TC* 
rm inversion_t2t_TC* 
rm inversion_h2h_TC* 
rm translocations_TC* 
rm duplication_TC* 

for f in *_SVs.txt ; do 
grep -wFf /home/jbarbour/final_ERCC2_paper/data/mutation_data/Bladder_mutant_IDs.txt $f > Mutant_${f}.txt ;
grep -wFf /home/jbarbour/final_ERCC2_paper/data/mutation_data/Bladder_WT_IDs.txt $f > WT_${f}.txt ;
done

paste WT_total_SVs.txt.txt WT_duplication_SVs.txt.txt WT_inversion_h2h_SVs.txt.txt WT_inversion_t2t_SVs.txt.txt WT_translocations_SVs.txt.txt |\
awk ' {print $2"\t"$4"\t"$6"\t"$8"\t"$10}' - > ./../WT_SVs_summary.txt 

paste Mutant_total_SVs.txt.txt Mutant_duplication_SVs.txt.txt Mutant_inversion_h2h_SVs.txt.txt Mutant_inversion_t2t_SVs.txt.txt Mutant_translocations_SVs.txt.txt |\
awk ' {print $2"\t"$4"\t"$6"\t"$8"\t"$10}' - > ./../Mutant_SVs_summary.txt 































