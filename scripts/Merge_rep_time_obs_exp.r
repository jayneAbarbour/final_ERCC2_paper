exp <- read.delim("exp_tmp.txt", header = TRUE)
obs <- read.delim("obs_tmp.txt", header = TRUE)
merged <- merge(obs, exp, by.x = "Sample", by.y = "Sample")

merged$Bin_1_exp_ratio <- merged$Bin_1_obs_counts / (merged$Bin_1_sim_counts / 100)
merged$Bin_2_obs_exp_ratio <- merged$Bin_2_obs_counts / (merged$Bin_2_sim_counts / 100)
merged$Bin_3_obs_exp_ratio <- merged$Bin_3_obs_counts / (merged$Bin_3_sim_counts / 100)
merged$Bin_4_obs_exp_ratio <- merged$Bin_4_obs_counts / (merged$Bin_4_sim_counts / 100)
merged$Bin_5_obs_exp_ratio <- merged$Bin_5_obs_counts / (merged$Bin_5_sim_counts / 100)


write.table(merged, "Replication_time.txt", sep = '\t', row.names = FALSE)