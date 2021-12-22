



obs_tmp1 <- read.delim("obs_tmp1.txt", header = TRUE)
obs_tmp2 <- read.delim("obs_tmp2.txt", header = TRUE)
obs_tmp3 <- read.delim("obs_tmp3.txt", header = TRUE)
exp_tmp1 <- read.delim("exp_tmp1.txt", header = TRUE)
exp_tmp2 <- read.delim("exp_tmp2.txt", header = TRUE)
exp_tmp3 <- read.delim("exp_tmp3.txt", header = TRUE)


APOBEC <- merge(obs_tmp1, exp_tmp1, by.x="Sample", by.y = "Sample")
Other <- merge(obs_tmp2, exp_tmp2, by.x="Sample", by.y = "Sample")
All <- merge(obs_tmp3, exp_tmp3, by.x="Sample", by.y = "Sample")


APOBEC$Obs_exp_Open <- APOBEC$Open_obs / (APOBEC$Open_exp/100)
APOBEC$Obs_exp_Closed <- APOBEC$Closed_obs / (APOBEC$Closed_exp/100)

APOBEC$Obs_exp_Open_CBS_subtract <- APOBEC$Open_CSB_subtract_obs / (APOBEC$Open_CSB_subtract_exp/100)
APOBEC$Obs_exp_Closed_CBS_subtract <- APOBEC$Closed_CSB_subtract_obs / (APOBEC$Closed_CSB_subtract_exp/100)

APOBEC$Obs_exp_Open_CSB_gene_subtract <- APOBEC$Open_CSB_gene_subtract_obs / (APOBEC$Open_CSB_gene_subtract_exp/100)
APOBEC$Obs_exp_Closed_CSB_gene_subtract <- APOBEC$Closed_CSB_gene_subtract_obs / (APOBEC$Closed_CSB_gene_subtract_exp/100)

#
Other$Obs_exp_Open <- Other$Open_obs / (Other$Open_exp/100)
Other$Obs_exp_Closed <- Other$Closed_obs / (Other$Closed_exp/100)

Other$Obs_exp_Open_CBS_subtract <- Other$Open_CSB_subtract_obs / (Other$Open_CSB_subtract_exp/100)
Other$Obs_exp_Closed_CBS_subtract <- Other$Closed_CSB_subtract_obs / (Other$Closed_CSB_subtract_exp/100)

Other$Obs_exp_Open_CSB_gene_subtract <- Other$Open_CSB_gene_subtract_obs / (Other$Open_CSB_gene_subtract_exp/100)
Other$Obs_exp_Closed_CSB_gene_subtract <- Other$Closed_CSB_gene_subtract_obs / (Other$Closed_CSB_gene_subtract_exp/100)


#
All$Obs_exp_Open <- All$Open_obs / (All$Open_exp/100)
All$Obs_exp_Closed <- All$Closed_obs / (All$Closed_exp/100)

All$Obs_exp_Open_CBS_subtract <- All$Open_CSB_subtract_obs / (All$Open_CSB_subtract_exp/100)
All$Obs_exp_Closed_CBS_subtract <- All$Closed_CSB_subtract_obs / (All$Closed_CSB_subtract_exp/100)

All$Obs_exp_Open_CSB_gene_subtract <- All$Open_CSB_gene_subtract_obs / (All$Open_CSB_gene_subtract_exp/100)
All$Obs_exp_Closed_CSB_gene_subtract <- All$Closed_CSB_gene_subtract_obs / (All$Closed_CSB_gene_subtract_exp/100)


write.table(All, "Open_close_analysis_all_SNVs.txt", sep = '\t', row.names = FALSE)	
write.table(Other, "Open_close_analysis_Other_SNVs.txt", sep = '\t', row.names = FALSE)
write.table(APOBEC, "Open_close_analysis_APOBEC_SNVs.txt", sep = '\t', row.names = FALSE)	
	
	
	
	




