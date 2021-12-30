
library(pheatmap)
library(dplyr)
library(RColorBrewer)

XPD <- read.delim("/home/jbarbour/final_ERCC2_paper/analysis/figure_4_XPD_ChIP/XPD_profile_plot.tsv", header = TRUE)
XPB <- read.delim("/home/jbarbour/final_ERCC2_paper/analysis/figure_4_XPB_ChIP/XPB_profile_plot.tsv", header = TRUE)

XPD_ordered <- XPD %>% arrange(desc(X2_fwd_region), .by_group = TRUE)
XPB_ordered <- XPB %>% arrange(desc(X2_fwd_region), .by_group = TRUE)

my.breaks <- c(seq(-5, 4, by=0.1)) 

tiff("/home/jbarbour/final_ERCC2_paper/analysis/figure_4_XPD_ChIP/XPD_heatmap.tiff")
pheatmap(XPD_ordered, cluster_rows = FALSE, cluster_cols = FALSE, breaks = my.breaks, labels_row = "", labels_col = "")
dev.off()

tiff("/home/jbarbour/final_ERCC2_paper/analysis/figure_4_XPB_ChIP/XPB_heatmap.tiff")
pheatmap(XPB_ordered, cluster_rows = FALSE, cluster_cols = FALSE, breaks = my.breaks, labels_row = "", labels_col = "")
dev.off()

