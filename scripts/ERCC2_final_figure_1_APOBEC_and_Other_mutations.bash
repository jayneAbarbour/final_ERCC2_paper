

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_1_SNV_count

grep -v 'total' /home/jbarbour/final_ERCC2_paper/data/mutation_data/Bladder_cohort_SNV_count_information.tsv > Bladder_SNV_count.txt

Rscript /home/jbarbour/final_ERCC2_paper/scripts/ERCC2_final_figure_1_sort_SNV_count.r







