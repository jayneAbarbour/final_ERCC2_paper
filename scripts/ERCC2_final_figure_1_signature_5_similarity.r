library(MutationalPatterns)
setwd("/home/jbarbour/final_ERCC2_paper/analysis/figure_1_signature_5_similarity")

tmp <- read.delim("reference_signatures.txt", header = TRUE)

All_mutant <- read.delim("All_mutant2Getz.txt", header = FALSE)  
All_WT <- read.delim("All_WT2Getz.txt", header = FALSE)    
APOBEC_mutant <- read.delim("APOBEC_mutant2Getz.txt", header = FALSE)    
APOBEC_WT <- read.delim("APOBEC_WT2Getz.txt", header = FALSE)    
Other_Mutant <- read.delim("Other_Mutant2Getz.txt", header = FALSE)    
Other_WT <- read.delim("Other_WT2Getz.txt", header = FALSE)  

tmp$All_mutant_weighted <- apply(All_mutant[,1:4], 1, mean)
tmp$All_WT_weighted <- apply(All_WT[,1:15], 1, mean)
tmp$APOBEC_mutant_weighted <- apply(APOBEC_mutant[,1:2], 1, mean)
tmp$APOBEC_WT_weighted <- apply(APOBEC_WT[,1:9], 1, mean)
tmp$Other_Mutant_weighted <- apply(Other_Mutant[,1:4], 1, mean)
tmp$Other_WT_weighted <- apply(Other_WT[,1:11], 1, mean)

fun <- function(x) {
  cos_sim(cosmic_sig, x)}


cosmic_sig <- tmp[,3]
TCGA.130.Signature.5 <- apply(tmp[,12:17], 2, fun)

cosmic_sig <- tmp[,4]
DFCI.MSK.50.Signature.5 <- apply(tmp[,12:17], 2, fun)

cosmic_sig <- tmp[,5]
BGI.99.C.T_CpG.Signature.5 <- apply(tmp[,12:17], 2, fun)

cosmic_sig <- tmp[,6]
COMB.279.Signature.5 <- apply(tmp[,12:17], 2, fun)

cosmic_sig <- tmp[,7]
COMB.MI.242.Signature.5 <- apply(tmp[,12:17], 2, fun)

cosmic_sig <- tmp[,8]
TCGA.130.DFCI.MSK.50.Signature.5 <- apply(tmp[,12:17], 2, fun)

cosmic_sig <- tmp[,9]
COSMIC.Signature.2 <- apply(tmp[,12:17], 2, fun)

cosmic_sig <- tmp[,10]
COSMIC.Signature.5 <- apply(tmp[,12:17], 2, fun)

cosmic_sig <- tmp[,11]
COSMIC.Signature.13 <- apply(tmp[,12:17], 2, fun)

write.table(rbind(TCGA.130.Signature.5, DFCI.MSK.50.Signature.5, BGI.99.C.T_CpG.Signature.5, COMB.279.Signature.5,COMB.MI.242.Signature.5,TCGA.130.DFCI.MSK.50.Signature.5, COSMIC.Signature.5, COSMIC.Signature.2, COSMIC.Signature.13 ),
            "Signatures_cosine_similarity.txt", sep = '\t', col.names = NA)


