

## Promoters

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_3_running_DHS_profiles/DHS_profile_plots_2.5_kb/promoter/Mutant/Other
rm *
/home/jbarbour/final_ERCC2_paper/scripts/profile_plot_unequal_region_size_binned.bash \
/home/jbarbour/final_ERCC2_paper/annotations/bladder_promoter_TSS.bed \
1 2500 2500 2500 \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_Other_obs_SNVs.txt \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_Other_exp_SNVs.txt \
Mutant_Other_promoter &

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_3_running_DHS_profiles/DHS_profile_plots_2.5_kb/promoter/Mutant/APOBEC
rm *
/home/jbarbour/final_ERCC2_paper/scripts/profile_plot_unequal_region_size_binned.bash \
/home/jbarbour/final_ERCC2_paper/annotations/bladder_promoter_TSS.bed \
1 2500 2500 2500 \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_APOBEC_obs_SNVs.txt \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_APOBEC_exp_SNVs.txt \
Mutant_APOBEC_promoter &

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_3_running_DHS_profiles/DHS_profile_plots_2.5_kb/promoter/WT/Other
rm *
/home/jbarbour/final_ERCC2_paper/scripts/profile_plot_unequal_region_size_binned.bash \
/home/jbarbour/final_ERCC2_paper/annotations/bladder_promoter_TSS.bed \
1 2500 2500 2500 \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_Other_obs_SNVs.txt  \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_Other_exp_SNVs.txt \
WT_Other_promoter &

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_3_running_DHS_profiles/DHS_profile_plots_2.5_kb/promoter/WT/APOBEC
rm *
/home/jbarbour/final_ERCC2_paper/scripts/profile_plot_unequal_region_size_binned.bash \
/home/jbarbour/final_ERCC2_paper/annotations/bladder_promoter_TSS.bed \
1 2500 2500 2500 \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_APOBEC_obs_SNVs.txt \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_APOBEC_exp_SNVs.txt \
WT_APOBEC_promoter &

## Enhancers
cd /home/jbarbour/final_ERCC2_paper/analysis/figure_3_running_DHS_profiles/DHS_profile_plots_2.5_kb/enhancer/Mutant/Other
rm *
/home/jbarbour/final_ERCC2_paper/scripts/profile_plot_unequal_region_size_binned_no_direction.bash \
/home/jbarbour/final_ERCC2_paper/annotations/bladder_enhancer_centre.bed \
1 2500 2500 2500 \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_Other_obs_SNVs.txt \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_Other_exp_SNVs.txt \
Mutant_Other_enhancer &

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_3_running_DHS_profiles/DHS_profile_plots_2.5_kb/enhancer/Mutant/APOBEC
rm *
/home/jbarbour/final_ERCC2_paper/scripts/profile_plot_unequal_region_size_binned_no_direction.bash \
/home/jbarbour/final_ERCC2_paper/annotations/bladder_enhancer_centre.bed \
1 2500 2500 2500 \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_APOBEC_obs_SNVs.txt \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_APOBEC_exp_SNVs.txt \
Mutant_APOBEC_enhancer &


cd /home/jbarbour/final_ERCC2_paper/analysis/figure_3_running_DHS_profiles/DHS_profile_plots_2.5_kb/enhancer/WT/Other
rm *
/home/jbarbour/final_ERCC2_paper/scripts/profile_plot_unequal_region_size_binned_no_direction.bash \
/home/jbarbour/final_ERCC2_paper/annotations/bladder_enhancer_centre.bed \
1 2500 2500 2500 \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_Other_obs_SNVs.txt  \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_Other_exp_SNVs.txt \
WT_Other_enhancer &

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_3_running_DHS_profiles/DHS_profile_plots_2.5_kb/enhancer/WT/APOBEC
rm *
/home/jbarbour/final_ERCC2_paper/scripts/profile_plot_unequal_region_size_binned_no_direction.bash \
/home/jbarbour/final_ERCC2_paper/annotations/bladder_enhancer_centre.bed \
1 2500 2500 2500 \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_APOBEC_obs_SNVs.txt \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_APOBEC_exp_SNVs.txt \
WT_APOBEC_enhancer &


## Insulators
cd /home/jbarbour/final_ERCC2_paper/analysis/figure_3_running_DHS_profiles/DHS_profile_plots_2.5_kb/insulators/Mutant/Other
rm *
/home/jbarbour/final_ERCC2_paper/scripts/profile_plot_unequal_region_size_binned.bash \
/home/jbarbour/final_ERCC2_paper/annotations/bladder_CBS.bed \
39 2500 2500 2500 \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_Other_obs_SNVs.txt \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_Other_exp_SNVs.txt \
Mutant_Other_insulators &

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_3_running_DHS_profiles/DHS_profile_plots_2.5_kb/insulators/Mutant/APOBEC
rm *
/home/jbarbour/final_ERCC2_paper/scripts/profile_plot_unequal_region_size_binned.bash \
/home/jbarbour/final_ERCC2_paper/annotations/bladder_CBS.bed \
39 2500 2500 2500 \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_APOBEC_obs_SNVs.txt \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_APOBEC_exp_SNVs.txt \
Mutant_APOBEC_insulators &


cd /home/jbarbour/final_ERCC2_paper/analysis/figure_3_running_DHS_profiles/DHS_profile_plots_2.5_kb/insulators/WT/Other
rm *
/home/jbarbour/final_ERCC2_paper/scripts/profile_plot_unequal_region_size_binned.bash \
/home/jbarbour/final_ERCC2_paper/annotations/bladder_CBS.bed \
39 2500 2500 2500 \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_Other_obs_SNVs.txt  \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_Other_exp_SNVs.txt \
WT_Other_insulators &

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_3_running_DHS_profiles/DHS_profile_plots_2.5_kb/insulators/WT/APOBEC
rm *
/home/jbarbour/final_ERCC2_paper/scripts/profile_plot_unequal_region_size_binned.bash \
/home/jbarbour/final_ERCC2_paper/annotations/bladder_CBS.bed \
39 2500 2500 2500 \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_APOBEC_obs_SNVs.txt \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_APOBEC_exp_SNVs.txt \
WT_APOBEC_insulators &






















































