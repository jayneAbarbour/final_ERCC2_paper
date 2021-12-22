
cd /home/jbarbour/final_ERCC2_paper/data/mutation_data
cp /home/jbarbour/Data/ERCC2_paper/mutation_data/Bladder_mutant_IDs.txt ./
cp /home/jbarbour/Data/ERCC2_paper/mutation_data/Bladder_WT_IDs.txt ./

grep 'BLCA' ~/nas/Jason/Data/mutationDatabase/PCAWG/rmdup/PCAWG_all_snv_removedup.bed | grep -wFf Bladder_mutant_IDs.txt - | awk -F'\t' '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7 }' - > Bladder_ERCC2_mutant.bed
grep 'BLCA' ~/nas/Jason/Data/mutationDatabase/PCAWG/rmdup/PCAWG_all_snv_removedup.bed | grep -wFf Bladder_WT_IDs.txt - | awk -F'\t' '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7 }' - > Bladder_ERCC2_WT.bed

slopBed -i Bladder_ERCC2_mutant.bed -g /home/jbarbour/Data/hg19_reference/hg19.chrom.sizes -b 1 |\
fastaFromBed -fi /home/jbarbour/Data/hg19_reference/hg19.fa -bed - -tab -fo Bladder_ERCC2_mutant.fa
cut -f2 Bladder_ERCC2_mutant.fa | paste Bladder_ERCC2_mutant.bed - | awk 'IGNORECASE =1 { print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$5"\t"substr($8,1,1)"\t"substr($8,2,1)"\t"substr($8,3,1) }' - |\
awk 'IGNORECASE = 1 { if ($9 == $11) print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8 }' - | sort -k 1,1 -k2,2n - > Bladder_ERCC2_mutant_trinuc.bed

slopBed -i Bladder_ERCC2_WT.bed -g /home/jbarbour/Data/hg19_reference/hg19.chrom.sizes -b 1 |\
fastaFromBed -fi /home/jbarbour/Data/hg19_reference/hg19.fa -bed - -tab -fo Bladder_ERCC2_WT.fa
cut -f2 Bladder_ERCC2_WT.fa | paste Bladder_ERCC2_WT.bed - | awk 'IGNORECASE =1 { print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$5"\t"substr($8,1,1)"\t"substr($8,2,1)"\t"substr($8,3,1) }' - |\
awk 'IGNORECASE = 1 { if ($9 == $11) print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8 }' - | sort -k 1,1 -k2,2n - > Bladder_WT_trinuc.bed

rm *fa
sort -k 1,1 -k2,2n Bladder_ERCC2_WT.bed > Bladder_ERCC2_WT_sorted.bed 
sort -k 1,1 -k2,2n Bladder_ERCC2_mutant.bed > Bladder_ERCC2_mutant_sorted.bed 
rm Bladder_ERCC2_WT.bed
rm Bladder_ERCC2_mutant.bed

cd /home/jbarbour/Data/shuffled_100/PCAWG/part1/BLCA-US_tmp/

declare -a bladder_ERCC2_mutant_sample_list=(TCGA-DK-A1A7 TCGA-FD-A3N5 TCGA-FT-A3EE TCGA-BT-A3PJ)
declare -a bladder_ERCC2_WT_sample_list=(TCGA-FD-A3N6 TCGA-GD-A2C5 TCGA-BL-A13J TCGA-CF-A27C TCGA-BT-A20P TCGA-BT-A3PH TCGA-DK-A1AE TCGA-BT-A2LA TCGA-BT-A20Q TCGA-DK-A1AG TCGA-DK-A3IL TCGA-DK-A1A6 TCGA-DK-A1A5 TCGA-BT-A20T TCGA-CF-A3MF TCGA-BT-A20V TCGA-DK-A1AA TCGA-H4-A2HQ TCGA-C4-A0F7)

for i in "${bladder_ERCC2_mutant_sample_list[@]}"
do
   cat all_mutations_*"$i"*shuffled.bed >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/merged_shuffled_Bladder_ERCC2_mutant.bed
done

for i in "${bladder_ERCC2_WT_sample_list[@]}"
do
   cat all_mutations_*"$i"*shuffled.bed >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/merged_shuffled_Bladder_ERCC2_WT.bed
done

cd /home/jbarbour/final_ERCC2_paper/data/mutation_data

sort -k 1,1 -k2,2n merged_shuffled_Bladder_ERCC2_mutant.bed > merged_shuffled_Bladder_ERCC2_mutant_sorted.bed
sort -k 1,1 -k2,2n merged_shuffled_Bladder_ERCC2_WT.bed > merged_shuffled_Bladder_ERCC2_WT_sorted.bed
rm merged_shuffled_Bladder_ERCC2_mutant.bed
rm merged_shuffled_Bladder_ERCC2_WT.bed

slopBed -i merged_shuffled_Bladder_ERCC2_mutant_sorted.bed -g /home/bioinf/DB/hg19.genome.sizes -b 1 | fastaFromBed -fi ~/Data/hg19_reference/hg19.fa -bed - -tab -fo merged_shuffled_Bladder_ERCC2_mutant.fa
cut -f2 merged_shuffled_Bladder_ERCC2_mutant.fa | paste merged_shuffled_Bladder_ERCC2_mutant_sorted.bed - |  awk 'IGNORECASE =1 { print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$5"\t"substr($8,1,1)"\t"substr($8,2,1)"\t"substr($8,3,1) }' - |\
awk 'IGNORECASE = 1 { if ($9 == $11) print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8 }' - | sort -k 1,1 -k2,2n - > merged_shuffled_Bladder_mutant_trinuc.bed

slopBed -i merged_shuffled_Bladder_ERCC2_WT_sorted.bed -g /home/bioinf/DB/hg19.genome.sizes -b 1 | fastaFromBed -fi ~/Data/hg19_reference/hg19.fa -bed - -tab -fo merged_shuffled_Bladder_ERCC2_WT.fa
cut -f2 merged_shuffled_Bladder_ERCC2_WT.fa | paste merged_shuffled_Bladder_ERCC2_WT_sorted.bed - |  awk 'IGNORECASE =1 { print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$5"\t"substr($8,1,1)"\t"substr($8,2,1)"\t"substr($8,3,1) }' - |\
awk 'IGNORECASE = 1 { if ($9 == $11) print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8 }' - | sort -k 1,1 -k2,2n - > merged_shuffled_Bladder_WT_trinuc.bed

rm *fa

##
awk 'IGNORECASE =1 {if (($8 != "TCA" && $8 != "TCC" && $8 != "TCG" && $8 != "TCT" && $8 != "AGA" && $8 != "CGA" && $8 != "GGA" && $8 != "TGA" )) print $0}' Bladder_WT_trinuc.bed  > Bladder_WT_trinuc_Other.bed 
awk 'IGNORECASE =1 {if (($8 == "TCA" || $8 == "TCC" || $8 == "TCG" || $8 == "TCT" || $8 == "AGA" || $8 == "CGA" || $8 == "GGA" || $8 == "TGA" )) print $0}' Bladder_WT_trinuc.bed > Bladder_WT_trinuc_APOBEC.bed 
awk 'IGNORECASE =1 {if (($8 != "TCA" && $8 != "TCC" && $8 != "TCG" && $8 != "TCT" && $8 != "AGA" && $8 != "CGA" && $8 != "GGA" && $8 != "TGA" )) print $0}' merged_shuffled_Bladder_WT_trinuc.bed > merged_shuffled_Bladder_WT_trinuc_Other.bed 
awk 'IGNORECASE =1 {if (($8 == "TCA" || $8 == "TCC" || $8 == "TCG" || $8 == "TCT" || $8 == "AGA" || $8 == "CGA" || $8 == "GGA" || $8 == "TGA" )) print $0}' merged_shuffled_Bladder_WT_trinuc.bed > merged_shuffled_Bladder_WT_trinuc_APOBEC.bed 

awk 'IGNORECASE =1 {if (($8 == "TCA" || $8 == "TCC" || $8 == "TCG" || $8 == "TCT" || $8 == "AGA" || $8 == "CGA" || $8 == "GGA" || $8 == "TGA" )) print $0}' Bladder_ERCC2_mutant_trinuc.bed > Bladder_ERCC2_mutant_trinuc_APOBEC.bed 
awk 'IGNORECASE =1 {if (($8 != "TCA" && $8 != "TCC" && $8 != "TCG" && $8 != "TCT" && $8 != "AGA" && $8 != "CGA" && $8 != "GGA" && $8 != "TGA" )) print $0}' Bladder_ERCC2_mutant_trinuc.bed > Bladder_ERCC2_mutant_trinuc_Other.bed 
awk 'IGNORECASE =1 {if (($8 != "TCA" && $8 != "TCC" && $8 != "TCG" && $8 != "TCT" && $8 != "AGA" && $8 != "CGA" && $8 != "GGA" && $8 != "TGA" )) print $0}' merged_shuffled_Bladder_mutant_trinuc.bed > merged_shuffled_Bladder_mutant_trinuc_Other.bed 
awk 'IGNORECASE =1 {if (($8 == "TCA" || $8 == "TCC" || $8 == "TCG" || $8 == "TCT" || $8 == "AGA" || $8 == "CGA" || $8 == "GGA" || $8 == "TGA" )) print $0}' merged_shuffled_Bladder_mutant_trinuc.bed > merged_shuffled_Bladder_mutant_trinuc_APOBEC.bed 


#
mkdir tmp
cd tmp
awk '{print $0 >> $4}' ./../Bladder_ERCC2_mutant_sorted.bed
wc -l * | awk ' NR == 1 , NR == 7 {print $2"\t""Mutant""\t"$1}' - | { printf 'Sample\tERCC2_genotype\tAll_SNV_count\n'; cat - ; } > ./../Mut_SNV_count.txt
rm *

awk '{print $0 >> $4}' ./../Bladder_ERCC2_WT_sorted.bed
wc -l * | awk ' NR == 1 , NR == 87 {print $2"\t""WT""\t"$1}' - > ./../WT_SNV_count.txt
rm *

awk '{print $0 >> $4}' ./../Bladder_ERCC2_mutant_trinuc_APOBEC.bed
wc -l * | awk ' NR == 1 , NR == 7 {print $2"\t""Mutant""\t"$1}' - | { printf 'Sample\tERCC2_genotype\tAPOBEC_SNV_count\n'; cat - ; } > ./../Mut_APOBEC_count.txt
rm *

awk '{print $0 >> $4}' ./../Bladder_WT_trinuc_APOBEC.bed
wc -l * | awk ' NR == 1 , NR == 87 {print $2"\t""WT""\t"$1}' - > ./../WT_APOBEC_count.txt
rm *

awk '{print $0 >> $4}' ./../Bladder_ERCC2_mutant_trinuc_Other.bed
wc -l * | awk ' NR == 1 , NR == 7 {print $2"\t""Mutant""\t"$1}' - | { printf 'Sample\tERCC2_genotype\tOther_SNV_count\n'; cat - ; } > ./../Mut_Other_count.txt
rm *

awk '{print $0 >> $4}' ./../Bladder_WT_trinuc_Other.bed
wc -l * | awk ' NR == 1 , NR == 87 {print $2"\t""WT""\t"$1}' - > ./../WT_Other_count.txt
rm *
cd ..
rmdir tmp

cat Mut_APOBEC_count.txt WT_APOBEC_count.txt > APOBEC_count.txt 
cat Mut_SNV_count.txt WT_SNV_count.txt > SNV_count.txt
cat Mut_Other_count.txt WT_Other_count.txt > Other_count.txt

rm Mut*count.txt
rm WT*count.txt

paste SNV_count.txt APOBEC_count.txt Other_count.txt |\
awk '{print $1"\t"$2"\t"$3"\t"$6"\t"$9}' - > Bladder_cohort_SNV_count_information.tsv
rm *_count.txt

####################

awk '$2 ~ "Mutant" {print $0}' Bladder_cohort_SNV_count_information.tsv | sort -n -k3 - |\
awk ' NR == 1 {print $3}' - > lowest_total_SNV_count.txt

awk '$2 ~ "Mutant" {print $0}' Bladder_cohort_SNV_count_information.tsv | sort -n -k4 - |\
awk ' NR == 1 {print $4}' - > lowest_APOBEC_SNV_count.txt

awk '$2 ~ "Mutant" {print $0}' Bladder_cohort_SNV_count_information.tsv | sort -n -k5 - |\
awk ' NR == 1 {print $5}' - > lowest_Other_SNV_count.txt


## 12000 for all, #8000 for other

awk '$2 ~ "WT" {print $0}' Bladder_cohort_SNV_count_information.tsv |\
awk '$3 < 12000 {print $1}' - > WT_low_all_SNV_sample_IDs.txt

awk '$2 ~ "WT" {print $0}' Bladder_cohort_SNV_count_information.tsv |\
awk '$5 < 8000 {print $1}' - > WT_low_other_SNV_sample_IDs.txt

awk '$2 ~ "WT" {print $0}' Bladder_cohort_SNV_count_information.tsv |\
awk '$4 < 8000 {print $1}' - > WT_low_APOBEC_SNV_sample_IDs.txt

awk '$2 ~ "Mutant" {print $0}' Bladder_cohort_SNV_count_information.tsv |\
awk '$4 < 8000 {print $1}' - > Mutant_low_APOBEC_SNV_sample_IDs.txt

grep -wFf WT_low_all_SNV_sample_IDs.txt Bladder_WT_trinuc.bed  | awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""pooled_low_WT"}' -  > bladder_WT_all_obs_tmp.txt
grep -vwFf WT_low_all_SNV_sample_IDs.txt Bladder_WT_trinuc.bed | awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$4}' - >> bladder_WT_all_obs_tmp.txt

grep -wFf WT_low_other_SNV_sample_IDs.txt Bladder_WT_trinuc_Other.bed  | awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""pooled_low_WT"}' - > bladder_WT_Other_obs_tmp.txt
grep -vwFf WT_low_other_SNV_sample_IDs.txt Bladder_WT_trinuc_Other.bed | awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$4}' - >> bladder_WT_Other_obs_tmp.txt

grep -wFf WT_low_APOBEC_SNV_sample_IDs.txt Bladder_WT_trinuc_APOBEC.bed | awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""pooled_low_WT"}' - > bladder_WT_APOBEC_obs_tmp.txt
grep -vwFf WT_low_APOBEC_SNV_sample_IDs.txt Bladder_WT_trinuc_APOBEC.bed | awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$4}' - >> bladder_WT_APOBEC_obs_tmp.txt

grep -wFf WT_low_other_SNV_sample_IDs.txt merged_shuffled_Bladder_WT_trinuc_Other.bed | awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""pooled_low_WT"}' - > bladder_WT_Other_exp_tmp.txt
grep -vwFf WT_low_other_SNV_sample_IDs.txt merged_shuffled_Bladder_WT_trinuc_Other.bed | awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$4}' - >> bladder_WT_Other_exp_tmp.txt

grep -wFf WT_low_APOBEC_SNV_sample_IDs.txt merged_shuffled_Bladder_WT_trinuc_APOBEC.bed | awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""pooled_low_WT"}' - > bladder_WT_APOBEC_exp_tmp.txt
grep -vwFf WT_low_APOBEC_SNV_sample_IDs.txt merged_shuffled_Bladder_WT_trinuc_APOBEC.bed | awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$4}' - >> bladder_WT_APOBEC_exp_tmp.txt

grep -wFf WT_low_all_SNV_sample_IDs.txt merged_shuffled_Bladder_ERCC2_WT_sorted.bed | awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""pooled_low_WT"}' - > bladder_WT_all_exp_tmp.txt
grep -vwFf WT_low_all_SNV_sample_IDs.txt merged_shuffled_Bladder_ERCC2_WT_sorted.bed | awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$4}' - >> bladder_WT_all_exp_tmp.txt

paste WT_low_other_SNV_sample_IDs.txt WT_low_APOBEC_SNV_sample_IDs.txt Mutant_low_APOBEC_SNV_sample_IDs.txt |\
{ printf 'WT_Other_SNVs\tWT_APOBEC_SNVs\tMutant_APOBEC_SNVs\n'; cat - ; } > /home/jbarbour/final_ERCC2_paper/supplementary_tables/Supplementary_table_3_lowly_mutated_samples_used_pooling.txt


awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$4}' Bladder_ERCC2_mutant_trinuc.bed | sort -k 1,1 -k2,2n - > bladder_mutant_all_obs_SNVs.txt
awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$4}' Bladder_ERCC2_mutant_trinuc_Other.bed | sort -k 1,1 -k2,2n - > bladder_mutant_Other_obs_SNVs.txt
awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$4}' merged_shuffled_Bladder_mutant_trinuc_Other.bed | sort -k 1,1 -k2,2n - > bladder_mutant_Other_exp_SNVs.txt 
awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$4}' merged_shuffled_Bladder_ERCC2_mutant_sorted.bed | sort -k 1,1 -k2,2n - > bladder_mutant_all_exp_SNVs.txt

grep -wFf Mutant_low_APOBEC_SNV_sample_IDs.txt Bladder_ERCC2_mutant_trinuc_APOBEC.bed | awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""pooled_low_Mutant"}' - > bladder_mutant_APOBEC_obs_SNVs_tmp.txt
grep -vwFf Mutant_low_APOBEC_SNV_sample_IDs.txt Bladder_ERCC2_mutant_trinuc_APOBEC.bed | awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$4}' - >> bladder_mutant_APOBEC_obs_SNVs_tmp.txt

grep -wFf Mutant_low_APOBEC_SNV_sample_IDs.txt merged_shuffled_Bladder_mutant_trinuc_APOBEC.bed | awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""pooled_low_Mutant"}' - > bladder_mutant_APOBEC_exp_SNVs_tmp.txt
grep -vwFf Mutant_low_APOBEC_SNV_sample_IDs.txt merged_shuffled_Bladder_mutant_trinuc_APOBEC.bed | awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$4}' - >> bladder_mutant_APOBEC_exp_SNVs_tmp.txt

##
 
sort -k 1,1 -k2,2n bladder_WT_all_obs_tmp.txt | awk '{print $1"\t"$2"\t"$3"\t"$9"\t"$5"\t"$6"\t"$7"\t"$8"\t"$4}' - > bladder_WT_all_obs_SNVs.txt 
sort -k 1,1 -k2,2n bladder_WT_Other_obs_tmp.txt | awk '{print $1"\t"$2"\t"$3"\t"$9"\t"$5"\t"$6"\t"$7"\t"$8"\t"$4}' - > bladder_WT_Other_obs_SNVs.txt 
sort -k 1,1 -k2,2n bladder_WT_APOBEC_obs_tmp.txt | awk '{print $1"\t"$2"\t"$3"\t"$9"\t"$5"\t"$6"\t"$7"\t"$8"\t"$4}' - > bladder_WT_APOBEC_obs_SNVs.txt 
sort -k 1,1 -k2,2n bladder_WT_Other_exp_tmp.txt | awk '{print $1"\t"$2"\t"$3"\t"$9"\t"$5"\t"$6"\t"$7"\t"$8"\t"$4}' - > bladder_WT_Other_exp_SNVs.txt 
sort -k 1,1 -k2,2n bladder_WT_APOBEC_exp_tmp.txt | awk '{print $1"\t"$2"\t"$3"\t"$9"\t"$5"\t"$6"\t"$7"\t"$8"\t"$4}' - > bladder_WT_APOBEC_exp_SNVs.txt 
sort -k 1,1 -k2,2n bladder_WT_all_exp_tmp.txt | awk '{print $1"\t"$2"\t"$3"\t"$9"\t"$5"\t"$6"\t"$7"\t"$8"\t"$4}' - > bladder_WT_all_exp_SNVs.txt 

sort -k 1,1 -k2,2n bladder_mutant_APOBEC_obs_SNVs_tmp.txt | awk '{print $1"\t"$2"\t"$3"\t"$9"\t"$5"\t"$6"\t"$7"\t"$8"\t"$4}' - > bladder_mutant_APOBEC_obs_SNVs.txt 
sort -k 1,1 -k2,2n bladder_mutant_APOBEC_exp_SNVs_tmp.txt | awk '{print $1"\t"$2"\t"$3"\t"$9"\t"$5"\t"$6"\t"$7"\t"$8"\t"$4}' - > bladder_mutant_APOBEC_exp_SNVs.txt 

wait 
rm *tmp.txt

###

cd /home/jbarbour/final_ERCC2_paper/data/mutation_data

slopBed -i /home/bioinf/Data/WuSong/BLCA_Wu_mutations.bed -g /home/bioinf/DB/hg19.genome.sizes -b 1 | fastaFromBed -fi ~/Data/hg19_reference/hg19.fa -bed - -tab -fo BLCA_Wu_mutations.fa
cut -f2 BLCA_Wu_mutations.fa | paste /home/bioinf/Data/WuSong/BLCA_Wu_mutations.bed - |  awk 'IGNORECASE =1 { print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8 }' - |\
grep 'BL19' - | awk 'IGNORECASE =1 {if (($8 == "TCA" || $8 == "TCC" || $8 == "TCG" || $8 == "TCT" || $8 == "AGA" || $8 == "CGA" || $8 == "GGA" || $8 == "TGA" )) print $0}' - > /home/jbarbour/final_ERCC2_paper/data/mutation_data/Chinese_bladder_APOBEC_ERCC2.txt

cut -f2 BLCA_Wu_mutations.fa | paste /home/bioinf/Data/WuSong/BLCA_Wu_mutations.bed - |  awk 'IGNORECASE =1 { print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8 }' - |\
grep 'BL08' - | awk 'IGNORECASE =1 {if (($8 == "TCA" || $8 == "TCC" || $8 == "TCG" || $8 == "TCT" || $8 == "AGA" || $8 == "CGA" || $8 == "GGA" || $8 == "TGA" )) print $0}' - >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/Chinese_bladder_APOBEC_ERCC2.txt

awk 'IGNORECASE =1 {if (($8 == "TCA" || $8 == "TCC" || $8 == "TCG" || $8 == "TCT" || $8 == "AGA" || $8 == "CGA" || $8 == "GGA" || $8 == "TGA" )) print $0}' /home/jbarbour/nas/Jason/Data/mutationDatabase/BLCA_29535424/RJBNC2_SNVs+tri.bed >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/Chinese_bladder_APOBEC_ERCC2.txt


cut -f2 BLCA_Wu_mutations.fa | paste /home/bioinf/Data/WuSong/BLCA_Wu_mutations.bed - | grep 'BL19' - | awk 'IGNORECASE =1 {if (($8 != "TCA" && $8 != "TCC" && $8 != "TCG" && $8 != "TCT" && $8 != "AGA" && $8 != "CGA" && $8 != "GGA" && $8 != "TGA" )) print $0}' - > /home/jbarbour/final_ERCC2_paper/data/mutation_data/Chinese_bladder_Other_ERCC2.txt
cut -f2 BLCA_Wu_mutations.fa | paste /home/bioinf/Data/WuSong/BLCA_Wu_mutations.bed - | grep 'BL08' - | awk 'IGNORECASE =1 {if (($8 != "TCA" && $8 != "TCC" && $8 != "TCG" && $8 != "TCT" && $8 != "AGA" && $8 != "CGA" && $8 != "GGA" && $8 != "TGA" )) print $0}' - >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/Chinese_bladder_Other_ERCC2.txt
awk 'IGNORECASE =1 {if (($8 != "TCA" && $8 != "TCC" && $8 != "TCG" && $8 != "TCT" && $8 != "AGA" && $8 != "CGA" && $8 != "GGA" && $8 != "TGA" )) print $0}' /home/jbarbour/nas/Jason/Data/mutationDatabase/BLCA_29535424/RJBNC2_SNVs+tri.bed >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/Chinese_bladder_Other_ERCC2.txt


cd /home/jbarbour/nas/Jason/Data/mutationDatabase/BLCA_29535424/shuffle/

for i in *RJBNC2*shuffled.bed
do
   awk 'IGNORECASE =1 {if (($8 == "TCA" || $8 == "TCC" || $8 == "TCG" || $8 == "TCT" || $8 == "AGA" || $8 == "CGA" || $8 == "GGA" || $8 == "TGA" )) print $0}' $i >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/Chinese_bladder_APOBEC_ERCC2_shuffled.txt
done

for i in *RJBNC2*shuffled.bed
do
   awk 'IGNORECASE =1 {if (($8 != "TCA" && $8 != "TCC" && $8 != "TCG" && $8 != "TCT" && $8 != "AGA" && $8 != "CGA" && $8 != "GGA" && $8 != "TGA" )) print $0}' $i >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/Chinese_bladder_Other_ERCC2_shuffled.txt
done

cd /home/jbarbour/Data/shuffled_100/Other/WuSong_BLCA

for i in *BL19*shuffled.bed
do
   awk 'IGNORECASE =1 {if (($8 == "TCA" || $8 == "TCC" || $8 == "TCG" || $8 == "TCT" || $8 == "AGA" || $8 == "CGA" || $8 == "GGA" || $8 == "TGA" )) print $0}' $i >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/Chinese_bladder_APOBEC_ERCC2_shuffled.txt
done

for i in *BL19*shuffled.bed
do
   awk 'IGNORECASE =1 {if (($8 != "TCA" && $8 != "TCC" && $8 != "TCG" && $8 != "TCT" && $8 != "AGA" && $8 != "CGA" && $8 != "GGA" && $8 != "TGA" )) print $0}' $i >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/Chinese_bladder_Other_ERCC2_shuffled.txt
done

for i in *BL08*shuffled.bed
do
   awk 'IGNORECASE =1 {if (($8 == "TCA" || $8 == "TCC" || $8 == "TCG" || $8 == "TCT" || $8 == "AGA" || $8 == "CGA" || $8 == "GGA" || $8 == "TGA" )) print $0}' $i >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/Chinese_bladder_APOBEC_ERCC2_shuffled.txt
done

for i in *BL08*shuffled.bed
do
   awk 'IGNORECASE =1 {if (($8 != "TCA" && $8 != "TCC" && $8 != "TCG" && $8 != "TCT" && $8 != "AGA" && $8 != "CGA" && $8 != "GGA" && $8 != "TGA" )) print $0}' $i >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/Chinese_bladder_Other_ERCC2_shuffled.txt
done


cd /home/jbarbour/final_ERCC2_paper/data/mutation_data

rm BLCA_Wu_mutations.fa

sort -k 1,1 -k2,2n Chinese_bladder_APOBEC_ERCC2_shuffled.txt > Chinese_bladder_ERCC2_APOBEC_exp.bed
sort -k 1,1 -k2,2n Chinese_bladder_Other_ERCC2_shuffled.txt > Chinese_bladder_ERCC2_Other_exp.bed
sort -k 1,1 -k2,2n Chinese_bladder_APOBEC_ERCC2.txt > Chinese_bladder_ERCC2_APOBEC_obs.bed
sort -k 1,1 -k2,2n Chinese_bladder_Other_ERCC2.txt > Chinese_bladder_ERCC2_Other_obs.bed

rm Chinese_bladder_APOBEC_ERCC2_shuffled.txt
rm Chinese_bladder_Other_ERCC2_shuffled.txt
rm Chinese_bladder_APOBEC_ERCC2.txt
rm Chinese_bladder_Other_ERCC2.txt

cd /home/jbarbour/final_ERCC2_paper/data/mutation_data

rm /home/jbarbour/final_ERCC2_paper/data/mutation_data/Chinese_bladder_Other_WT.txt
rm /home/jbarbour/final_ERCC2_paper/data/mutation_data/Chinese_bladder_APOBEC_WT.txt

slopBed -i /home/bioinf/Data/WuSong/BLCA_Wu_mutations.bed -g /home/bioinf/DB/hg19.genome.sizes -b 1 | fastaFromBed -fi ~/Data/hg19_reference/hg19.fa -bed - -tab -fo BLCA_Wu_mutations.fa
cut -f2 BLCA_Wu_mutations.fa | paste /home/bioinf/Data/WuSong/BLCA_Wu_mutations.bed - | awk 'IGNORECASE =1 { print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$5"\t"substr($8,1,1)"\t"substr($8,2,1)"\t"substr($8,3,1) }' - |\
awk 'IGNORECASE = 1 { if ($9 == $11) print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8 }' - |grep -v 'BL19' - | grep -v 'BL08' -  | awk 'IGNORECASE =1 {if (($8 == "TCA" || $8 == "TCC" || $8 == "TCG" || $8 == "TCT" || $8 == "AGA" || $8 == "CGA" || $8 == "GGA" || $8 == "TGA" )) print $0}' - > /home/jbarbour/final_ERCC2_paper/data/mutation_data/Chinese_bladder_APOBEC_WT.txt

awk 'IGNORECASE =1 {if (($8 == "TCA" || $8 == "TCC" || $8 == "TCG" || $8 == "TCT" || $8 == "AGA" || $8 == "CGA" || $8 == "GGA" || $8 == "TGA" )) print $0}' /home/jbarbour/nas/Jason/Data/mutationDatabase/BLCA_29535424/RJBNC1_SNVs+tri.bed >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/Chinese_bladder_APOBEC_WT.txt
awk 'IGNORECASE =1 {if (($8 == "TCA" || $8 == "TCC" || $8 == "TCG" || $8 == "TCT" || $8 == "AGA" || $8 == "CGA" || $8 == "GGA" || $8 == "TGA" )) print $0}' /home/jbarbour/nas/Jason/Data/mutationDatabase/BLCA_29535424/RJBNC3_SNVs+tri.bed >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/Chinese_bladder_APOBEC_WT.txt
awk 'IGNORECASE =1 {if (($8 == "TCA" || $8 == "TCC" || $8 == "TCG" || $8 == "TCT" || $8 == "AGA" || $8 == "CGA" || $8 == "GGA" || $8 == "TGA" )) print $0}' /home/jbarbour/nas/Jason/Data/mutationDatabase/BLCA_29535424/RJBNC4_SNVs+tri.bed >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/Chinese_bladder_APOBEC_WT.txt
awk 'IGNORECASE =1 {if (($8 == "TCA" || $8 == "TCC" || $8 == "TCG" || $8 == "TCT" || $8 == "AGA" || $8 == "CGA" || $8 == "GGA" || $8 == "TGA" )) print $0}' /home/jbarbour/nas/Jason/Data/mutationDatabase/BLCA_29535424/RJBNC5_SNVs+tri.bed >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/Chinese_bladder_APOBEC_WT.txt
awk 'IGNORECASE =1 {if (($8 == "TCA" || $8 == "TCC" || $8 == "TCG" || $8 == "TCT" || $8 == "AGA" || $8 == "CGA" || $8 == "GGA" || $8 == "TGA" )) print $0}' /home/jbarbour/nas/Jason/Data/mutationDatabase/BLCA_29535424/RJBNC6_SNVs+tri.bed >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/Chinese_bladder_APOBEC_WT.txt

cut -f2 BLCA_Wu_mutations.fa | paste /home/bioinf/Data/WuSong/BLCA_Wu_mutations.bed - |grep -v 'BL19' - | grep -v 'BL08' - | awk 'IGNORECASE =1 {if (($8 != "TCA" && $8 != "TCC" && $8 != "TCG" && $8 != "TCT" && $8 != "AGA" && $8 != "CGA" && $8 != "GGA" && $8 != "TGA" )) print $0}' - > /home/jbarbour/final_ERCC2_paper/data/mutation_data/Chinese_bladder_Other_WT.txt
awk 'IGNORECASE =1 {if (($8 != "TCA" && $8 != "TCC" && $8 != "TCG" && $8 != "TCT" && $8 != "AGA" && $8 != "CGA" && $8 != "GGA" && $8 != "TGA" )) print $0}' /home/jbarbour/nas/Jason/Data/mutationDatabase/BLCA_29535424/RJBNC1_SNVs+tri.bed >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/Chinese_bladder_Other_WT.txt
awk 'IGNORECASE =1 {if (($8 != "TCA" && $8 != "TCC" && $8 != "TCG" && $8 != "TCT" && $8 != "AGA" && $8 != "CGA" && $8 != "GGA" && $8 != "TGA" )) print $0}' /home/jbarbour/nas/Jason/Data/mutationDatabase/BLCA_29535424/RJBNC3_SNVs+tri.bed >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/Chinese_bladder_Other_WT.txt
awk 'IGNORECASE =1 {if (($8 != "TCA" && $8 != "TCC" && $8 != "TCG" && $8 != "TCT" && $8 != "AGA" && $8 != "CGA" && $8 != "GGA" && $8 != "TGA" )) print $0}' /home/jbarbour/nas/Jason/Data/mutationDatabase/BLCA_29535424/RJBNC4_SNVs+tri.bed >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/Chinese_bladder_Other_WT.txt
awk 'IGNORECASE =1 {if (($8 != "TCA" && $8 != "TCC" && $8 != "TCG" && $8 != "TCT" && $8 != "AGA" && $8 != "CGA" && $8 != "GGA" && $8 != "TGA" )) print $0}' /home/jbarbour/nas/Jason/Data/mutationDatabase/BLCA_29535424/RJBNC5_SNVs+tri.bed >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/Chinese_bladder_Other_WT.txt
awk 'IGNORECASE =1 {if (($8 != "TCA" && $8 != "TCC" && $8 != "TCG" && $8 != "TCT" && $8 != "AGA" && $8 != "CGA" && $8 != "GGA" && $8 != "TGA" )) print $0}' /home/jbarbour/nas/Jason/Data/mutationDatabase/BLCA_29535424/RJBNC6_SNVs+tri.bed >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/Chinese_bladder_Other_WT.txt

cd /home/jbarbour/nas/Jason/Data/mutationDatabase/BLCA_29535424/shuffle/
unset bladder_ERCC2_WT_sample_list
declare -a bladder_ERCC2_WT_sample_list=(RJBNC1 RJBNC3 RJBNC4 RJBNC5 RJBNC6)

for i in "${bladder_ERCC2_WT_sample_list[@]}"
do
   awk 'IGNORECASE =1 {if (($8 == "TCA" || $8 == "TCC" || $8 == "TCG" || $8 == "TCT" || $8 == "AGA" || $8 == "CGA" || $8 == "GGA" || $8 == "TGA" )) print $0}' all_mutations_*"$i"*shuffled.bed >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/Chinese_bladder_APOBEC_WT_shuffled.txt
   awk 'IGNORECASE =1 {if (($8 != "TCA" && $8 != "TCC" && $8 != "TCG" && $8 != "TCT" && $8 != "AGA" && $8 != "CGA" && $8 != "GGA" && $8 != "TGA" )) print $0}' all_mutations_*"$i"*shuffled.bed >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/Chinese_bladder_Other_WT_shuffled.txt

done

cd /home/jbarbour/nas/Jason/Data/mutationDatabase/BLCA_29535424/shuffle/

unset bladder_ERCC2_WT_sample_list_Wu
declare -a bladder_ERCC2_WT_sample_list_Wu=(BL01 BL02 BL03 BL04 BL05 BL06 BL07 BL09 BL10 BL11 BL12 BL13 BL14 BL15 BL16 BL17 BL18 BL20 BL21 BL22 BL23 BL24 BL25 BL26 BL27 BL28 BL29 BL30 BL31 BL32 BL33 BL34 BL35 BL36 BL37 BL38 BL39 BL40 BL41 BL42 BL43 BL44 BL45 BL46 BL47 BL48 BL49 BL50 BL51 BL52 BL53 BL54 BL55 BL56 BL57 BL58 BL59 BL60 BL61 BL62 BL63 BL64 BL65)

cd /home/jbarbour/Data/shuffled_100/Other/WuSong_BLCA


for i in "${bladder_ERCC2_WT_sample_list_Wu[@]}"
do
   awk 'IGNORECASE =1 {if (($8 == "TCA" || $8 == "TCC" || $8 == "TCG" || $8 == "TCT" || $8 == "AGA" || $8 == "CGA" || $8 == "GGA" || $8 == "TGA" )) print $0}' all_mutations_*"$i"*shuffled.bed >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/Chinese_bladder_APOBEC_WT_shuffled.txt
   awk 'IGNORECASE =1 {if (($8 != "TCA" && $8 != "TCC" && $8 != "TCG" && $8 != "TCT" && $8 != "AGA" && $8 != "CGA" && $8 != "GGA" && $8 != "TGA" )) print $0}' all_mutations_*"$i"*shuffled.bed >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/Chinese_bladder_Other_WT_shuffled.txt
done


cd /home/jbarbour/final_ERCC2_paper/data/mutation_data/

sort -k 1,1 -k2,2n Chinese_bladder_Other_WT.txt > Chinese_bladder_WT_Other_obs.bed
sort -k 1,1 -k2,2n Chinese_bladder_APOBEC_WT.txt > Chinese_bladder_WT_APOBEC_obs.bed
sort -k 1,1 -k2,2n Chinese_bladder_APOBEC_WT_shuffled.txt > Chinese_bladder_WT_APOBEC_exp.bed
sort -k 1,1 -k2,2n Chinese_bladder_Other_WT_shuffled.txt > Chinese_WT_ERCC2_Other_exp.bed

rm Chinese_bladder_Other_WT.txt
rm Chinese_bladder_APOBEC_WT.txt
rm Chinese_bladder_APOBEC_WT_shuffled.txt
rm Chinese_bladder_Other_WT_shuffled.txt

cat Bladder_WT_trinuc_Other.bed Bladder_WT_trinuc_APOBEC.bed Chinese_bladder_WT_Other_obs.bed Chinese_bladder_WT_APOBEC_obs.bed | sort -k 1,1 -k2,2n - > Bladder_all_WT_trinuc.bed


########

{ printf 'pooled_low_Mutant\n'; cat Bladder_mutant_IDs.txt ; } > Bladder_mutant_IDs_with_pooled.txt
{ printf 'pooled_low_WT\n'; cat Bladder_WT_IDs.txt ; } > Bladder_WT_IDs_with_pooled.txt

cd /home/jbarbour/final_ERCC2_paper/data/mutation_data

grep 'TCGA-G3-A3CK' ~/nas/Jason/Data/mutationDatabase/PCAWG/rmdup/PCAWG_all_snv_removedup.bed > Liver_ERCC2_mutant_mutations.bed
grep 'DO45293' ~/nas/Jason/Data/mutationDatabase/PCAWG/rmdup/PCAWG_all_snv_removedup.bed >> Liver_ERCC2_mutant_mutations.bed
grep 'DO48721' ~/nas/Jason/Data/mutationDatabase/PCAWG/rmdup/PCAWG_all_snv_removedup.bed >> Liver_ERCC2_mutant_mutations.bed

grep 'LIHC-US' ~/nas/Jason/Data/mutationDatabase/PCAWG/rmdup/PCAWG_all_snv_removedup.bed | grep -v 'TCGA-G3-A3CK' - > Liver_ERCC2_wild_type_mutations.bed
grep 'LIRI-JP' ~/nas/Jason/Data/mutationDatabase/PCAWG/rmdup/PCAWG_all_snv_removedup.bed | grep -v 'DO45293' - | grep -v 'DO48721' -  >> Liver_ERCC2_wild_type_mutations.bed


declare -a liver_ERCC2_mutant_sample_list=(DO45293 TCGA-G3-A3CK DO48721)
declare -a liver_ERCC2_WT_sample_list=(DO23508 DO23509 DO23510 DO23512 DO23513 DO23514 DO23515 DO23516 DO23517 DO23518 DO23519 DO23520 DO23521 DO23522 DO23524 DO23525 DO23526 DO23527 DO23528 DO23529 DO23530 DO23532 DO23533 DO23534 DO23535 DO23536 DO23537 DO23538 DO23539 DO23540 DO23541 DO23542 DO23544 DO23545 DO23546 DO23547 DO23548 DO23549 DO23550 DO23551 DO23552 DO45091 DO45092 DO45093 DO45094 DO45095 DO45097 DO45099 DO45101 DO45103 DO45105 DO45107 DO45109 DO45111 DO45113 DO45115 DO45117 DO45119 DO45121 DO45123 DO45125 DO45127 DO45129 DO45131 DO45133 DO45135 DO45137 DO45139 DO45143 DO45145 DO45147 DO45149 DO45153 DO45155 DO45157 DO45159 DO45161 DO45163 DO45165 DO45167 DO45169 DO45171 DO45173 DO45175 DO45177 DO45179 DO45181 DO45183 DO45185 DO45187 DO45189 DO45191 DO45193 DO45195 DO45197 DO45199 DO45201 DO45203 DO45205 DO45207 DO45209 DO45211 DO45213 DO45215 DO45217 DO45219 DO45221 DO45223 DO45225 DO45227 DO45229 DO45231 DO45233 DO45235 DO45237 DO45239 DO45241 DO45243 DO45245 DO45247 DO45249 DO45251 DO45253 DO45255 DO45257 DO45259 DO45263 DO45265 DO45267 DO45269 DO45277 DO45283 DO45285 DO45287 DO45289 DO45291 DO45295 DO45297 DO45299 DO45301 DO45303 DO45305 DO45307 DO45309 DO48672 DO48674 DO48677 DO48679 DO48681 DO48682 DO48684 DO48686 DO48687 DO48689 DO48691 DO48692 DO48693 DO48694 DO48695 DO48697 DO48700 DO48701 DO48703 DO48704 DO48706 DO48709 DO48712 DO48715 DO48716 DO48717 DO48719 DO48720 DO48723 DO48725 DO48727 DO48728 DO48730 DO48732 DO48733 DO48736 DO48737 DO48738 DO48741 DO48742 DO48743 DO48747 DO48751 DO48753 DO48757 DO48759 DO48760 DO48761 DO50772 DO50774 DO50776 DO50778 DO50780 DO50783 DO50785 DO50787 DO50789 DO50791 DO50796 DO50798 DO50799 DO50800 DO50802 DO50803 DO50804 DO50805 DO50806 DO50807 DO50808 DO50809 DO50811 DO50813 DO50815 DO50816 DO50817 DO50818 DO50819 DO50820 DO50822 DO50825 DO50827 DO50829 DO50831 DO50832 DO50834 DO50837 DO50839 DO50840 DO50845 DO50848 DO50850 DO50851 DO50855 DO50857 DO50859 TCGA-BC-A10Q TCGA-BC-A216 TCGA-BC-A217 TCGA-BW-A5NO TCGA-BW-A5NP TCGA-BW-A5NQ TCGA-CC-5260 TCGA-CC-5261 TCGA-CC-5262 TCGA-CC-A1HT TCGA-DD-A1E9 TCGA-DD-A1EB TCGA-DD-A1ED TCGA-DD-A1EG TCGA-DD-A1EH TCGA-DD-A1EI TCGA-DD-A1EJ TCGA-DD-A1EL TCGA-DD-A3A6 TCGA-DD-A3A7 TCGA-DD-A3A8 TCGA-DD-A3A9 TCGA-DD-A4NA TCGA-DD-A4NB TCGA-DD-A4ND TCGA-DD-A4NE TCGA-DD-A4NG TCGA-ED-A459 TCGA-ED-A4XI TCGA-EP-A26S TCGA-EP-A2KA TCGA-EP-A2KB TCGA-EP-A3RK TCGA-ES-A2HS TCGA-ES-A2HT TCGA-FV-A23B TCGA-FV-A2QQ TCGA-FV-A3I0 TCGA-FV-A3I1 TCGA-FV-A3R2 TCGA-FV-A3R3 TCGA-FV-A495 TCGA-FV-A496 TCGA-FV-A4ZQ TCGA-G3-A25S TCGA-G3-A25T TCGA-G3-A25V TCGA-G3-A25W TCGA-G3-A25Y TCGA-G3-A5SL TCGA-HP-A5MZ TCGA-MR-A520 TCGA-PD-A5DF)
declare -a liver_ERCC2_WT_sample_list_dups=(DO23543 DO45096 DO45141 DO45151 DO45273 DO45281 DO50793 DO50814 DO50842 DO50844)

cd /home/jbarbour/Data/shuffled_100/dups/shuffled/LIRI-JP_tmp/

for i in "${liver_ERCC2_WT_sample_list_dups[@]}"
do
   cat all_mutations_*"$i"*shuffled.bed >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/merged_shuffled_Liver_ERCC2_WT.bed
done
cd /home/jbarbour/Data/shuffled_100/PCAWG/part2/LIHC-US_tmp
for i in "${liver_ERCC2_mutant_sample_list[@]}"
do
   cat all_mutations_*"$i"*shuffled.bed >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/merged_shuffled_Liver_ERCC2_mutant.bed
done

for i in "${liver_ERCC2_WT_sample_list[@]}"
do
   cat all_mutations_*"$i"*shuffled.bed >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/merged_shuffled_Liver_ERCC2_WT.bed
done

cd /home/jbarbour/Data/shuffled_100/PCAWG/part2/LIRI-JP_tmp

for i in "${liver_ERCC2_mutant_sample_list[@]}"
do
   cat all_mutations_*"$i"*shuffled.bed >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/merged_shuffled_Liver_ERCC2_mutant.bed
done

for i in "${liver_ERCC2_WT_sample_list[@]}"
do
   cat all_mutations_*"$i"*shuffled.bed >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/merged_shuffled_Liver_ERCC2_WT.bed
done

cd /home/jbarbour/final_ERCC2_paper/data/mutation_data/

sort -k 1,1 -k2,2n Liver_ERCC2_wild_type_mutations.bed > Liver_wild_type_mutations_sorted.bed 
sort -k 1,1 -k2,2n Liver_ERCC2_mutant_mutations.bed > Liver_ERCC2_mutant_mutations_sorted.bed 
sort -k 1,1 -k2,2n merged_shuffled_Liver_ERCC2_mutant.bed > merged_shuffled_Liver_ERCC2_mutant_sorted.bed  
grep -v 'DO48721' merged_shuffled_Liver_ERCC2_WT.bed | sort -k 1,1 -k2,2n - > merged_shuffled_Liver_WT_sorted.bed 

rm Liver_ERCC2_wild_type_mutations.bed
rm Liver_ERCC2_mutant_mutations.bed
rm merged_shuffled_Liver_ERCC2_mutant.bed
rm merged_shuffled_Liver_ERCC2_WT.bed
 
slopBed -i Liver_wild_type_mutations_sorted.bed -g /home/bioinf/DB/hg19.genome.sizes -b 1 | fastaFromBed -fi ~/Data/hg19_reference/hg19.fa -bed - -tab -fo Liver_WT_mutations.fa
cut -f2 Liver_WT_mutations.fa | paste Liver_wild_type_mutations_sorted.bed - | awk 'IGNORECASE =1 { print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$9 }' - |\
 sort -k 1,1 -k2,2n -  > Liver_wild_type_mutations_trinuc.bed

## Chinese bladder mutant

cd /home/jbarbour/final_ERCC2_paper/data/mutation_data/

cat bladder_mutant_APOBEC_obs_SNVs.txt bladder_mutant_Other_obs_SNVs.txt | awk '{print $1"\t"$2"\t"$3"\t"$9"\t"$5"\t"$6"\t"$7"\t"$8}' - | cat Chinese_bladder_ERCC2_APOBEC_obs.bed Chinese_bladder_ERCC2_Other_obs.bed - |\
awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8}' - |  sort -k 1,1 -k2,2n - > All_bladder_ERCC2_obs.txt
cat bladder_mutant_APOBEC_exp_SNVs.txt bladder_mutant_Other_exp_SNVs.txt | awk '{print $1"\t"$2"\t"$3"\t"$9"\t"$5"\t"$6"\t"$7"\t"$8}' - | cat Chinese_bladder_ERCC2_APOBEC_exp.bed Chinese_bladder_ERCC2_Other_exp.bed - |\
awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8}' - |  sort -k 1,1 -k2,2n - > All_bladder_ERCC2_exp.txt

awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7}' Liver_ERCC2_mutant_mutations_sorted.bed  | slopBed -i - -g /home/bioinf/DB/hg19.genome.sizes -b 1 > tmp.txt
fastaFromBed -fi ~/Data/hg19_reference/hg19.fa -bed tmp.txt -tab -fo tmp.fa
cut -f2 tmp.fa | paste tmp.txt - | awk 'IGNORECASE =1 { print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8}' - > Liver_ERCC2_trinuc_obs.txt

awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7}' merged_shuffled_Liver_ERCC2_mutant_sorted.bed  | slopBed -i - -g /home/bioinf/DB/hg19.genome.sizes -b 1 > tmp2.txt
fastaFromBed -fi ~/Data/hg19_reference/hg19.fa -bed tmp2.txt -tab -fo tmp2.fa
cut -f2 tmp2.fa | paste tmp2.txt - | awk 'IGNORECASE =1 { print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8}' - > Liver_ERCC2_trinuc_exp.txt


cat All_bladder_ERCC2_obs.txt Liver_ERCC2_trinuc_obs.txt | sort -k 1,1 -k2,2n - > All_ERCC2_obs.txt
cat All_bladder_ERCC2_exp.txt Liver_ERCC2_trinuc_exp.txt | sort -k 1,1 -k2,2n - > All_ERCC2_exp.txt


awk '{print $1"\t"$2"\t"$3"\t"$9"\t"$5"\t"$6"\t"$7"\t"$8}' bladder_WT_all_obs_SNVs.txt > tmp_obs.txt
awk '{print $1"\t"$2"\t"$3"\t"$9"\t"$5"\t"$6"\t"$7"\t"$8}' bladder_WT_all_exp_SNVs.txt > tmp_exp.txt

cat Chinese_bladder_WT_APOBEC_obs.bed Chinese_bladder_WT_Other_obs.bed tmp_obs.txt Liver_wild_type_mutations_sorted.bed |\
 sort -k 1,1 -k2,2n - > All_obs_WT.txt
cat Chinese_bladder_WT_APOBEC_exp.bed Chinese_WT_ERCC2_Other_exp.bed tmp_exp.txt merged_shuffled_Liver_WT_sorted.bed |\
 sort -k 1,1 -k2,2n - > All_exp_WT.txt

##

grep -wFf TCGA_bladder_mutant_IDs_uniq_to_exome.txt ~/nas/Jason/Data/mutationDatabase/WXS/TCGA_WXS_all.bed | awk ' ((length($5) == 1) && (length($6) == 1 ))' - |\
awk '{split($4,a,"-01"); print $1"\t"$2"\t"$3"\t"a[1]"\t"$5"\t"$6"\t"$7}' - | sort -k 1,1 -k2,2n - > TCGA_exome_mutant_uniq_to_exome.bed

grep -wFf TCGA_bladder_WT_IDs_uniq_to_exome.txt ~/nas/Jason/Data/mutationDatabase/WXS/TCGA_WXS_all.bed | awk ' ((length($5) == 1) && (length($6) == 1 ))' - |\
awk '{split($4,a,"-01"); print $1"\t"$2"\t"$3"\t"a[1]"\t"$5"\t"$6"\t"$7}' - | sort -k 1,1 -k2,2n - > TCGA_exome_WT_uniq_to_exome.bed

grep -wFf TCGA_bladder_ERCC2_all_IDs.txt ~/nas/Jason/Data/mutationDatabase/WXS/TCGA_WXS_all.bed | awk ' ((length($5) == 1) && (length($6) == 1 ))' - |\
awk '{split($4,a,"-01"); print $1"\t"$2"\t"$3"\t"a[1]"\t"$5"\t"$6"\t"$7}' - | sort -k 1,1 -k2,2n - > TCGA_exome_mutant_all.bed

grep -wFf TCGA_bladder_WT_all_IDs.txt ~/nas/Jason/Data/mutationDatabase/WXS/TCGA_WXS_all.bed | awk ' ((length($5) == 1) && (length($6) == 1 ))' - |\
awk '{split($4,a,"-01"); print $1"\t"$2"\t"$3"\t"a[1]"\t"$5"\t"$6"\t"$7}' - | sort -k 1,1 -k2,2n - > TCGA_exome_WT_all.bed


for f in TCGA_exome*.bed ; do
slopBed -i $f -g /home/jbarbour/Data/hg19_reference/hg19.chrom.sizes -b 1 |\
fastaFromBed -fi /home/jbarbour/Data/hg19_reference/hg19.fa -bed - -tab -fo ${f}.fa
cut -f2 ${f}.fa | paste $f - | bedtools sort -i - > ${f}.trinuc ;
rm ${f}.fa
done


awk 'IGNORECASE =1 {if (($8 != "TCA" && $8 != "TCC" && $8 != "TCG" && $8 != "TCT" && $8 != "AGA" && $8 != "CGA" && $8 != "GGA" && $8 != "TGA" )) print $0}' \
TCGA_exome_mutant_uniq_to_exome.bed.trinuc  | sort -k 1,1 -k2,2n - > Bladder_ERCC2_mutant_trinuc_Other_uniq_to_exome.bed 
awk 'IGNORECASE =1 {if (($8 == "TCA" || $8 == "TCC" || $8 == "TCG" || $8 == "TCT" || $8 == "AGA" || $8 == "CGA" || $8 == "GGA" || $8 == "TGA" )) print $0}' \
TCGA_exome_mutant_uniq_to_exome.bed.trinuc | sort -k 1,1 -k2,2n - > Bladder_ERCC2_mutant_trinuc_APOBEC_uniq_to_exome.bed 
awk 'IGNORECASE =1 {if (($8 != "TCA" && $8 != "TCC" && $8 != "TCG" && $8 != "TCT" && $8 != "AGA" && $8 != "CGA" && $8 != "GGA" && $8 != "TGA" )) print $0}' \
TCGA_exome_WT_uniq_to_exome.bed.trinuc  | sort -k 1,1 -k2,2n - > Bladder_ERCC2_WT_trinuc_Other_uniq_to_exome.bed 
awk 'IGNORECASE =1 {if (($8 == "TCA" || $8 == "TCC" || $8 == "TCG" || $8 == "TCT" || $8 == "AGA" || $8 == "CGA" || $8 == "GGA" || $8 == "TGA" )) print $0}' \
TCGA_exome_WT_uniq_to_exome.bed.trinuc | sort -k 1,1 -k2,2n - > Bladder_ERCC2_WT_trinuc_APOBEC_uniq_to_exome.bed 

awk 'IGNORECASE =1 {if (($8 != "TCA" && $8 != "TCC" && $8 != "TCG" && $8 != "TCT" && $8 != "AGA" && $8 != "CGA" && $8 != "GGA" && $8 != "TGA" )) print $0}' \
TCGA_exome_mutant_all.bed.trinuc  | sort -k 1,1 -k2,2n - > Bladder_ERCC2_mutant_trinuc_Other_all.bed 
awk 'IGNORECASE =1 {if (($8 == "TCA" || $8 == "TCC" || $8 == "TCG" || $8 == "TCT" || $8 == "AGA" || $8 == "CGA" || $8 == "GGA" || $8 == "TGA" )) print $0}' \
TCGA_exome_mutant_all.bed.trinuc | sort -k 1,1 -k2,2n - > Bladder_ERCC2_mutant_trinuc_APOBEC_all.bed 
awk 'IGNORECASE =1 {if (($8 != "TCA" && $8 != "TCC" && $8 != "TCG" && $8 != "TCT" && $8 != "AGA" && $8 != "CGA" && $8 != "GGA" && $8 != "TGA" )) print $0}' \
TCGA_exome_WT_all.bed.trinuc  | sort -k 1,1 -k2,2n - > Bladder_ERCC2_WT_trinuc_Other_uniq_all.bed 
awk 'IGNORECASE =1 {if (($8 == "TCA" || $8 == "TCC" || $8 == "TCG" || $8 == "TCT" || $8 == "AGA" || $8 == "CGA" || $8 == "GGA" || $8 == "TGA" )) print $0}' \
TCGA_exome_WT_all.bed.trinuc | sort -k 1,1 -k2,2n - > Bladder_ERCC2_WT_trinuc_APOBEC_uniq_all.bed 

#CRC PCAWG observed

grep 'COAD-US' /home/jbarbour/nas/Jason/Data/mutationDatabase/PCAWG/rmdup/PCAWG_all_snv_removedup.bed > colorectal_PCAWG.txt
grep 'READ-US' /home/jbarbour/nas/Jason/Data/mutationDatabase/PCAWG/rmdup/PCAWG_all_snv_removedup.bed >> colorectal_PCAWG.txt

grep 'TCGA-AD-6964' colorectal_PCAWG.txt > colorectal_PCAWG_MSI.txt
grep 'TCGA-D5-6540' colorectal_PCAWG.txt >> colorectal_PCAWG_MSI.txt
grep 'TCGA-AA-A01R' colorectal_PCAWG.txt >> colorectal_PCAWG_MSI.txt
grep 'TCGA-A6-6781' colorectal_PCAWG.txt >> colorectal_PCAWG_MSI.txt
grep 'TCGA-QG-A5Z2' colorectal_PCAWG.txt >> colorectal_PCAWG_MSI.txt
grep 'TCGA-AD-A5EJ' colorectal_PCAWG.txt >> colorectal_PCAWG_MSI.txt

sort -k 1,1 -k2,2n colorectal_PCAWG_MSI.txt > colorectal_PCAWG_MSI_sorted.txt
rm colorectal_PCAWG_MSI.txt

##

grep -v 'TCGA-AD-6964' colorectal_PCAWG.txt | grep -v 'TCGA-D5-6540' - | grep -v 'TCGA-AA-A01R' - | grep -v 'TCGA-EI-6917' - | grep -v 'TCGA-AA-A00N' - | grep -v 'TCGA-AA-3555' - | grep -v 'TCGA-A6-6141' - | grep -v 'TCGA-AA-3977' - |\
grep -v 'TCGA-F5-6814' - | grep -v 'TCGA-CA-6718' | grep -v 'TCGA-A6-6781' - | grep -v 'TCGA-QG-A5Z2' - | grep -v 'TCGA-AD-A5EJ' - | sort -k 1,1 -k2,2n - > colorectal_PCAWG_MSS_sorted.txt
rm colorectal_PCAWG.txt

##

declare -a MSS_CRC_sample_list=(TCGA-A6-2680 TCGA-A6-2681 TCGA-A6-2683 TCGA-A6-3807 TCGA-A6-A565 TCGA-A6-A566 TCGA-A6-A567 TCGA-A6-A56B TCGA-AA-3514 TCGA-AA-3518 TCGA-AA-3529 TCGA-AA-3534 TCGA-AA-3664 TCGA-AA-3666 TCGA-AA-3685 TCGA-AA-3956 TCGA-AA-3994 TCGA-AA-A00R TCGA-AA-A01S TCGA-AA-A01T TCGA-AA-A01V TCGA-AA-A01X TCGA-AA-A02O TCGA-AA-A02Y TCGA-AD-A5EK TCGA-AF-2689 TCGA-AF-2691 TCGA-AG-3574 TCGA-AG-3582 TCGA-AG-3593 TCGA-AG-3727 TCGA-AG-3885 TCGA-AG-3890 TCGA-AG-3896 TCGA-AG-3901 TCGA-AG-4007 TCGA-AG-4008 TCGA-AG-4015 TCGA-AG-A032 TCGA-AY-A54L TCGA-CA-6717 TCGA-NH-A50T TCGA-NH-A50V TCGA-QG-A5YV TCGA-QG-A5YW TCGA-QG-A5YX TCGA-QG-A5Z1 )  
declare -a MSI_CRC_sample_list=(TCGA-AD-6964 TCGA-D5-6540 TCGA-AA-A01R TCGA-A6-6781 TCGA-QG-A5Z2 TCGA-AD-A5EJ)


cd /home/jbarbour/Data/shuffled_100/PCAWG/part2/COAD-US_tmp

for i in "${MSS_CRC_sample_list[@]}"
do
   cat all_mutations_*"$i"*shuffled.bed >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/merged_shuffled_colorectal_PCAWG_MSS.bed
done

for i in "${MSI_CRC_sample_list[@]}"
do
   cat all_mutations_*"$i"*shuffled.bed >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/merged_shuffled_colorectal_PCAWG_MSI.bed
done

cd /home/jbarbour/Data/shuffled_100/PCAWG/part3/READ-US_tmp

for i in "${MSS_CRC_sample_list[@]}"
do
   cat all_mutations_*"$i"*shuffled.bed >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/merged_shuffled_colorectal_PCAWG_MSS.bed
done

for i in "${MSI_CRC_sample_list[@]}"
do
   cat all_mutations_*"$i"*shuffled.bed >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/merged_shuffled_colorectal_PCAWG_MSI.bed
done

cd /home/jbarbour/final_ERCC2_paper/data/mutation_data/

sort -k 1,1 -k2,2n merged_shuffled_colorectal_PCAWG_MSS.bed > merged_shuffled_colorectal_PCAWG_MSS_sorted.bed
sort -k 1,1 -k2,2n merged_shuffled_colorectal_PCAWG_MSI.bed > merged_shuffled_colorectal_PCAWG_MSI_sorted.bed

rm merged_shuffled_colorectal_PCAWG_MSS.bed
rm merged_shuffled_colorectal_PCAWG_MSI.bed

grep -v total Bladder_cohort_SNV_count_information.tsv > SNV_mutation_count.txt

## Melanoma and Esophagus

cd /home/jbarbour/final_ERCC2_paper/data/mutation_data

grep 'ESAD' ~/nas/Jason/Data/mutationDatabase/PCAWG/rmdup/PCAWG_all_snv_removedup.bed | awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7}' - > ESAD.bed &

grep 'MELA' ~/nas/Jason/Data/mutationDatabase/PCAWG/rmdup/PCAWG_all_snv_removedup.bed | awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7}' - > MELA.bed
grep 'SKCM' ~/nas/Jason/Data/mutationDatabase/PCAWG/rmdup/PCAWG_all_snv_removedup.bed | awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7}' - >> MELA.bed

slopBed -i ESAD.bed -g /home/jbarbour/Data/hg19_reference/hg19.chrom.sizes -b 1 |\
fastaFromBed -fi /home/jbarbour/Data/hg19_reference/hg19.fa -bed - -tab -fo ESAD.fa
cut -f2 ESAD.fa | paste ESAD.bed - | sort -k 1,1 -k2,2n - > ESAD_trinuc.bed

rm ESAD.bed
rm ESAD.fa

slopBed -i MELA.bed -g /home/jbarbour/Data/hg19_reference/hg19.chrom.sizes -b 1 |\
fastaFromBed -fi /home/jbarbour/Data/hg19_reference/hg19.fa -bed - -tab -fo MELA.fa
cut -f2 MELA.fa | paste MELA.bed -  | sort -k 1,1 -k2,2n - > MELA_trinuc.bed

rm MELA.bed
rm MELA.fa


cd /home/jbarbour/Data/shuffled_100/PCAWG/part1/ESAD-UK_tmp/

for i in *.shuffled.bed
do
   cat $i >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/merged_shuffled_ESAD.bed
done


cd /home/jbarbour/Data/shuffled_100/PCAWG/part3/SKCM-US_tmp/

for i in *.shuffled.bed
do
   cat $i >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/merged_shuffled_MELA.bed
done

##

cd /home/jbarbour/Data/shuffled_100/PCAWG/part2/MELA-AU_tmp/

for i in *.shuffled.bed
do
   cat $i >> /home/jbarbour/final_ERCC2_paper/data/mutation_data/merged_shuffled_MELA.bed
done


cd /home/jbarbour/final_ERCC2_paper/data/mutation_data

sort -k 1,1 -k2,2n merged_shuffled_ESAD.bed > merged_shuffled_ESAD_sorted.bed 
sort -k 1,1 -k2,2n merged_shuffled_MELA.bed > merged_shuffled_MELA_sorted.bed 


awk 'IGNORECASE = 1 {if (($5 == "t" && $6 == "g" ) || ($5 == "a" && $6 == "c")) print $0}' ESAD_trinuc.bed > ESAD_T_to_G_obs.txt
awk 'IGNORECASE = 1 {if (($5 == "t" && $6 == "g" ) || ($5 == "a" && $6 == "c")) print $0}' merged_shuffled_ESAD_sorted.bed  > ESAD_T_to_G_exp.txt

awk 'IGNORECASE = 1 {if (($5 == "c" && $6 == "t") || ($5 == "g" && $6 == "a" )) print $0}' ESAD_trinuc.bed > ESAD_C_to_T_obs.txt
awk 'IGNORECASE = 1 {if (($5 == "c" && $6 == "t") || ($5 == "g" && $6 == "a" )) print $0}' merged_shuffled_ESAD_sorted.bed  > ESAD_C_to_T_exp.txt














