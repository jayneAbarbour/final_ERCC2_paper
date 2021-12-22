
cd /home/jbarbour/final_ERCC2_paper/data/
bigwigCompare -b1 GSM1092545_xpd_fragments.bigWig -b2 GSM1092546_xpd_input_fragments.bigWig -of bigwig -o XPD_L2R_input.bw --skipZeroOverZero -p 12
bigwigCompare -b1 GSM1092544_xpb_fragments.bigWig -b2 GSM1092546_xpb_input_fragments.bigWig -of bigwig -o XPB_L2R_input.bw --skipZeroOverZero -p 12 
bigwigCompare -b1 GSM1092545_xpd_fragments.bigWig -b2 GSM1092546_xpd_input_fragments.bigWig -of bedgraph -o XPD_L2R_input.bg --skipZeroOverZero -p 12
bigwigCompare -b1 GSM1092544_xpb_fragments.bigWig -b2 GSM1092546_xpb_input_fragments.bigWig -of bedgraph -o XPB_L2R_input.bg --skipZeroOverZero -p 12
sort -k1,1 -k2,2n XPD_L2R_input.bg > XPD.bedgraph
sort -k1,1 -k2,2n XPB_L2R_input.bg > XPD.bedgraph

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_4_XPD_ChIP
bash /home/jbarbour/final_ERCC2_paper/scripts/bigWig_profile_plot_with_direction_v2.bash /home/jbarbour/final_ERCC2_paper/annotations/Katainen_nature_CBS.txt \
/home/jbarbour/final_ERCC2_paper/data/XPD_L2R_input.bw 1000 1000 100 3 XPD &

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_4_XPB_ChIP
bash /home/jbarbour/final_ERCC2_paper/scripts/bigWig_profile_plot_with_direction_v2.bash /home/jbarbour/final_ERCC2_paper/annotations/Katainen_nature_CBS.txt \
/home/jbarbour/final_ERCC2_paper/data/XPB_L2R_input.bw 1000 1000 100 3 XPB &






