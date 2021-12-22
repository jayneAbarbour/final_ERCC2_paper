
cd /home/jbarbour/Data/shuffled_100/PCAWG/part2/COAD-US_tmp

declare -a MSS_CRC_sample_list=(TCGA-A6-2680 TCGA-A6-2681 TCGA-A6-2683 TCGA-A6-3807 TCGA-A6-A565 TCGA-A6-A566 TCGA-A6-A567 TCGA-A6-A56B TCGA-AA-3514 TCGA-AA-3518 TCGA-AA-3529 TCGA-AA-3534 TCGA-AA-3664 TCGA-AA-3666 TCGA-AA-3685 TCGA-AA-3956 TCGA-AA-3994 TCGA-AA-A00R TCGA-AA-A01S TCGA-AA-A01T TCGA-AA-A01V TCGA-AA-A01X TCGA-AA-A02O TCGA-AA-A02Y TCGA-AD-A5EK TCGA-AF-2689 TCGA-AF-2691 TCGA-AG-3574 TCGA-AG-3582 TCGA-AG-3593 TCGA-AG-3727 TCGA-AG-3885 TCGA-AG-3890 TCGA-AG-3896 TCGA-AG-3901 TCGA-AG-4007 TCGA-AG-4008 TCGA-AG-4015 TCGA-AG-A032 TCGA-AY-A54L TCGA-CA-6717 TCGA-NH-A50T TCGA-NH-A50V TCGA-QG-A5YV TCGA-QG-A5YW TCGA-QG-A5YX TCGA-QG-A5Z1 )  
declare -a MSI_CRC_sample_list=(TCGA-AD-6964 TCGA-D5-6540 TCGA-AA-A01R TCGA-A6-6781 TCGA-QG-A5Z2 TCGA-AD-A5EJ)


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
