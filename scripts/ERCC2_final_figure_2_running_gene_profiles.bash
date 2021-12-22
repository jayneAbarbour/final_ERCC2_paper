
# expressed
cd /home/jbarbour/final_ERCC2_paper/analysis/figure_2_gene_profiles/expressed/Mutant/Other
/home/jbarbour/final_ERCC2_paper/scripts/profile_plot_unequal_region_size_binned.bash \
/home/jbarbour/annotations/bladder/top_half_bladder_canonical_genes_whole.bed \
150 2500 2500 50 \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_Other_obs_SNVs.txt \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_Other_exp_SNVs.txt \
Mutant_Other_expressed &

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_2_gene_profiles/expressed/Mutant/APOBEC
/home/jbarbour/final_ERCC2_paper/scripts/profile_plot_unequal_region_size_binned.bash \
/home/jbarbour/annotations/bladder/top_half_bladder_canonical_genes_whole.bed \
150 2500 2500 50 \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_APOBEC_obs_SNVs.txt \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_APOBEC_exp_SNVs.txt \
Mutant_APOBEC_expressed &

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_2_gene_profiles/expressed/WT/Other
/home/jbarbour/final_ERCC2_paper/scripts/profile_plot_unequal_region_size_binned.bash \
/home/jbarbour/annotations/bladder/top_half_bladder_canonical_genes_whole.bed \
150 2500 2500 50 \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_Other_obs_SNVs.txt  \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_Other_exp_SNVs.txt \
WT_Other_expressed &

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_2_gene_profiles/expressed/WT/APOBEC
/home/jbarbour/final_ERCC2_paper/scripts/profile_plot_unequal_region_size_binned.bash \
/home/jbarbour/annotations/bladder/top_half_bladder_canonical_genes_whole.bed \
150 2500 2500 50 \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_APOBEC_obs_SNVs.txt \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_APOBEC_exp_SNVs.txt \
WT_APOBEC_expressed &

# silent
cd /home/jbarbour/final_ERCC2_paper/analysis/figure_2_gene_profiles/silent/Mutant/Other
/home/jbarbour/final_ERCC2_paper/scripts/profile_plot_unequal_region_size_binned.bash \
/home/jbarbour/annotations/bladder/silent_bladder_canonical_genes_whole.bed \
150 2500 2500 50 \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_Other_obs_SNVs.txt \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_Other_exp_SNVs.txt \
Mutant_Other_silent &

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_2_gene_profiles/silent/Mutant/APOBEC
/home/jbarbour/final_ERCC2_paper/scripts/profile_plot_unequal_region_size_binned.bash \
/home/jbarbour/annotations/bladder/silent_bladder_canonical_genes_whole.bed \
150 2500 2500 50 \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_APOBEC_obs_SNVs.txt \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_APOBEC_exp_SNVs.txt \
Mutant_All_silent &

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_2_gene_profiles/silent/WT/Other
/home/jbarbour/final_ERCC2_paper/scripts/profile_plot_unequal_region_size_binned.bash \
/home/jbarbour/annotations/bladder/silent_bladder_canonical_genes_whole.bed \
150 2500 2500 50 \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_Other_obs_SNVs.txt  \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_Other_exp_SNVs.txt \
WT_Other_silent &

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_2_gene_profiles/silent/WT/APOBEC
/home/jbarbour/final_ERCC2_paper/scripts/profile_plot_unequal_region_size_binned.bash \
/home/jbarbour/annotations/bladder/silent_bladder_canonical_genes_whole.bed \
150 2500 2500 50 \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_APOBEC_obs_SNVs.txt \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_APOBEC_exp_SNVs.txt \
WT_APOBEC_silent &

 





  
     







