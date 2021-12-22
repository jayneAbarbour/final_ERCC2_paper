

setwd("/home/jbarbour/final_ERCC2_paper/analysis/figure_1_mutation_windows/")

all <- read.delim("bladder_all_windows.txt", header = TRUE, check.names = FALSE, row.names = 1)
APOBEC <- read.delim("bladder_APOBEC_windows.txt", header = TRUE, check.names = FALSE, row.names = 1)
other <- read.delim("bladder_Other_windows.txt", header = TRUE, check.names = FALSE, row.names = 1)
annot <- read.delim("/home/jbarbour/final_ERCC2_paper/annotations/anot.txt", header = FALSE, row.names = 1)

IDS <- row.names(t(other))
pca <- prcomp(t(other), center = TRUE, scale = TRUE) 
ERCC2<- c(rep("Mutant", 6), rep("WT",16))

PCA_Other <- as.data.frame(pca$x)
PCA_Other_2 <- (cbind(rownames(PCA_Other), PCA_Other))
write.table(PCA_Other_2, "PCA_Other.txt", sep = '\t', row.names = FALSE)

IDS <- row.names(t(all))
pca <- prcomp(t(all), center = TRUE, scale = TRUE) 
ERCC2<- c(rep("Mutant", 6), rep("WT",25))

PCA_all <- as.data.frame(pca$x)
PCA_all_2 <- (cbind(rownames(PCA_all), PCA_all))
write.table(PCA_all_2, "PCA_all.txt", sep = '\t', row.names = FALSE)

IDS <- row.names(t(APOBEC))
pca <- prcomp(t(APOBEC), center = TRUE, scale = TRUE) 
ERCC2<- c(rep("Mutant", 3), rep("WT",18))

PCA_APOBEC <- as.data.frame(pca$x)
PCA_APOBEC_2 <- (cbind(rownames(PCA_APOBEC), PCA_APOBEC))
write.table(PCA_APOBEC_2, "PCA_APOBEC.txt", sep = '\t', row.names = FALSE)



