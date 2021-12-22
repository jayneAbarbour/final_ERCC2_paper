

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_3_CBS_flank_boxplot

bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_3_CBS_flank_analysis.bash \
/home/jbarbour/final_ERCC2_paper/annotations/Katainen_CBS_motifs.bed \
/home/jbarbour/final_ERCC2_paper/annotations/Katainen_CBS_motifs.bed_Flank.bed \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/All_obs_WT.txt \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/All_exp_WT.txt

rename s/CBS_mutation_density_results/CBS_mutation_density_results_WT/ CBS_mutation_density_results.tsv
rename s/Flank_mutation_density_results/Flank_mutation_density_results_WT/ Flank_mutation_density_results.tsv


cd /home/jbarbour/final_ERCC2_paper/analysis/figure_3_CBS_flank_boxplot

bash /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_3_CBS_flank_analysis.bash \
/home/jbarbour/final_ERCC2_paper/annotations/Katainen_CBS_motifs.bed \
/home/jbarbour/final_ERCC2_paper/annotations/Katainen_CBS_motifs.bed_Flank.bed \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/All_ERCC2_obs.txt \
/home/jbarbour/final_ERCC2_paper/data/mutation_data/All_ERCC2_exp.txt

rename s/CBS_mutation_density_results/CBS_mutation_density_results_Mutant/ CBS_mutation_density_results.tsv
rename s/Flank_mutation_density_results/Flank_mutation_density_results_Mutant/ Flank_mutation_density_results.tsv































