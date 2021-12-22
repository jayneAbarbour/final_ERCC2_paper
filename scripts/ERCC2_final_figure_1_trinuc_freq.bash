

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq


cd /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_Mutant
rm *
awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7"\t"$8}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_all_obs_SNVs.txt |\
awk '{print $0 >> $4}' -

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT
rm *
awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7"\t"$8}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_all_obs_SNVs.txt |\
awk '{print $0 >> $4}' -

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_Mutant
rm *
awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7"\t"$8}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_APOBEC_obs_SNVs.txt |\
awk '{print $0 >> $4}' -

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT
rm *
awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7"\t"$8}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_APOBEC_obs_SNVs.txt |\
awk '{print $0 >> $4}' - 

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant
rm *
awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7"\t"$8}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_Other_obs_SNVs.txt |\
awk '{print $0 >> $4}' -

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT
rm *
awk '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7"\t"$8}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_Other_obs_SNVs.txt |\
awk '{print $0 >> $4}' -

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/non_pooled_version/All_Mutant
rm *
awk '{print $1"\t"$2"\t"$3"\t"$9"_trinuc.txt""\t"$5"\t"$6"\t"$7"\t"$8}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_all_obs_SNVs.txt |\
awk '{print $0 >> $4}' -

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/non_pooled_version/All_WT
rm *
awk '{print $1"\t"$2"\t"$3"\t"$9"_trinuc.txt""\t"$5"\t"$6"\t"$7"\t"$8}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_all_obs_SNVs.txt |\
awk '{print $0 >> $4}' -

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/non_pooled_version/APOBEC_Mutant
rm *
awk '{print $1"\t"$2"\t"$3"\t"$9"_trinuc.txt""\t"$5"\t"$6"\t"$7"\t"$8}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_APOBEC_obs_SNVs.txt |\
awk '{print $0 >> $4}' -

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/non_pooled_version/APOBEC_WT
rm *
awk '{print $1"\t"$2"\t"$3"\t"$9"_trinuc.txt""\t"$5"\t"$6"\t"$7"\t"$8}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_APOBEC_obs_SNVs.txt |\
awk '{print $0 >> $4}' -

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/non_pooled_version/Other_Mutant
rm *
awk '{print $1"\t"$2"\t"$3"\t"$9"_trinuc.txt""\t"$5"\t"$6"\t"$7"\t"$8}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_Other_obs_SNVs.txt |\
awk '{print $0 >> $4}' -

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/non_pooled_version/Other_WT
rm *
awk '{print $1"\t"$2"\t"$3"\t"$9"_trinuc.txt""\t"$5"\t"$6"\t"$7"\t"$8}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_Other_obs_SNVs.txt |\
awk '{print $0 >> $4}' -

################################################################################

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version
bash /home/jbarbour/final_ERCC2_paper/scripts/trinuc_freq_all_samples+ID.bash


cd /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/non_pooled_version
bash /home/jbarbour/final_ERCC2_paper/scripts/trinuc_freq_all_samples+ID.bash





