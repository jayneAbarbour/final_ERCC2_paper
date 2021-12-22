
table_1_1 <- read.delim("Supplementary_table_1_tmp.txt", header = TRUE, check.names = FALSE)
table_1_2 <- read.delim("cohort_mutation_counts.txt", header = TRUE, check.names = FALSE)

write.table(merge(table_1_1, table_1_2, by.x = "Sample", by.y = "Sample"), "Supplementary_table_1_WGS_XPD_mutations.txt", sep = '\t', row.names = FALSE)

WGS <- read.delim("WGS_seq_samples.txt", header = TRUE)
WXS <- read.delim("ERCC2_WXS.txt", header = TRUE)
phenotype <- read.delim("Phenotype.txt", header = TRUE)

phenotype2 <- subset(phenotype, select = c(1,2,4,5))

names(phenotype2)[names(phenotype2) == "submitter_id.samples.."] <- "Sample"
names(phenotype2)[names(phenotype2) == "diagnosis_subtype"] <- "Dianosis Subtype"
names(phenotype2)[names(phenotype2) == "gender.demographic"] <- "Sex"
names(phenotype2)[names(phenotype2) == "age_at_initial_pathologic_diagnosis"] <- "Age at Diagnosis"


tmp1 <- merge(phenotype2, WXS, by.x = "Sample", by.y = "Sample")

tmp2 <- merge(WXS, WGS, by.x = "Sample", by.y = "Sample", all.x = TRUE)

table <- merge(tmp1, tmp2, by.x = "Sample", by.y = "Sample", all.y = TRUE)

write.table(table, "Supplementary_table_2_TCGA-BLCA_cohort_information.txt", sep = '\t', row.names = FALSE)

