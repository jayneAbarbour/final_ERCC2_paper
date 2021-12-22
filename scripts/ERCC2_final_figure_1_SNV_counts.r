library(dplyr)
library(forcats)
library(reshape)


setwd("/home/jbarbour/final_ERCC2_paper/analysis/figure_1_SNV_counts")

PCAWG <- read.delim("/home/jbarbour/final_ERCC2_paper/data/mutation_data/PCAWG_counts.tsv", header = TRUE)
PCAWG_del <- read.delim("/home/jbarbour/final_ERCC2_paper/data/mutation_data/deletion_count.txt", header = TRUE)
PCAWG_ins <- read.delim("/home/jbarbour/final_ERCC2_paper/data/mutation_data/insertion_count.txt", header = TRUE)
##
cohort <- read.delim("/home/jbarbour/final_ERCC2_paper/data/mutation_data/Cohort_info.txt", header = TRUE)
snvs <- read.delim("/home/jbarbour/final_ERCC2_paper/data/mutation_data/Bladder_cohort_SNV_count_information.tsv", header = TRUE)
tmp <- merge(cohort, snvs, by.x="sample_ID_2", by.y = "Sample")


PCAWG_indel <- merge(PCAWG_ins,PCAWG_del, by.x = "Sample", by.y = "Sample")
Wu_indel <- read.delim("/home/jbarbour/final_ERCC2_paper/data/mutation_data/WuSong_indel_count.txt", header = TRUE)
indels <- rbind(PCAWG_indel, Wu_indel)

data <- subset(merge(tmp, indels, by.x="Sample_ID_1", by.y = "Sample"), select = c(2,3,5:10))


tmp2 <- merge(tmp, indels, by.x="Sample_ID_1", by.y = "Sample")

write.table(data, "Cohort_mutation_information.txt", sep ='\t', row.names = FALSE)
write.table(arrange(data, ERCC2_genotype, desc(All_SNV_count)), "Bladder_mutation_count_stacked_plots.txt", row.names = FALSE, sep ='\t')


