setwd("/home/jbarbour/final_ERCC2_paper/analysis/figure_4_XPD_coverage_trinuc")
library(MutationalPatterns)
fun <- function(x) {
  cos_sim(sig, x)}

sigs <- t(read.delim("XPD_signature.txt"))

sig <- sigs[,1]
WT_XPD_bin1 <- apply(sigs[,1:4], 2, fun)

sig <- sigs[,2]
WT_XPD_bin5 <- apply(sigs[,1:4], 2, fun)

sig <- sigs[,3]
Mut_XPD_bin1 <- apply(sigs[,1:4], 2, fun)

sig <- sigs[,4]
Mut_XPD_bin5 <- apply(sigs[,1:4], 2, fun)

write.table(rbind(WT_XPD_bin1, WT_XPD_bin5, Mut_XPD_bin1 , Mut_XPD_bin5  ), "cosine_similarity_XPD_coverage_against_each_other.txt", sep = '\t')


cosmic <- read.delim("/home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37_reordered.txt")
Other_mutant <- read.delim("/home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/non_pooled_version/Other_Mutant_non_pooled_trinuc_freq.txt")
Other_WT <- read.delim("/home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/non_pooled_version/Other_WT_non_pooled_trinuc_freq.txt")

sig <- rowMeans(Other_mutant)
Other_mut_mean_sig <- apply(sigs[,1:4], 2, fun)

sig <- rowMeans(Other_WT)
Other_WT_mean_sig <- apply(sigs[,1:4], 2, fun)

sig <- cosmic[,6]
COSMIC_5 <- apply(sigs[,1:4], 2, fun)

write.table(rbind(Other_mut_mean_sig, Other_WT_mean_sig,COSMIC_5  ), "cosine_similarity_XPD_against_COSMIC.txt", sep = '\t')

