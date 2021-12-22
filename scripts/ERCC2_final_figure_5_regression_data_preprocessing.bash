

cat /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_1_sorted.bed /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_2_sorted.bed \
/home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_3_sorted.bed /home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_4_sorted.bed \
/home/jbarbour/final_ERCC2_paper/annotations/HEPG2_RepliSeq_Wave_5_sorted.bed | sort -k 1,1 -k2,2n  - > /home/jbarbour/final_ERCC2_paper/annotations/replication_time.sorted.bg

cd /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM

java -jar /home/bioinf/tools/picard.jar MergeSamFiles I=ENCFF317AFP.bam I=ENCFF381HBZ.bam I=ENCFF191LEP.bam O=Skin_ENCODE_control_ChIP.bam
java -jar /home/bioinf/tools/picard.jar MergeSamFiles I=ENCFF744HKB.bam I=ENCFF571CAV.bam O=Liver_ENCODE_control_ChIP.bam &
java -jar /home/bioinf/tools/picard.jar MergeSamFiles I=ENCFF048AVT.bam I=ENCFF127TUP.bam I=ENCFF793SOD.bam O=Gastroeso_ENCODE_control_ChIP.bam &

for f in *bam ; do samtools index -b $f ${f}.bai ;
bamCoverage -b $f -of bedgraph -o ${f}.bg -p 16 --normalizeUsing RPKM -ignore chrM ;
sort -k 1,1 -k2,2n ${f}.bg > ${f}.sorted.bg ;
rm ${f}.bg ; done &

cd /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/

for f in *bam ; do samtools index $f ${f}.bai ; done

cd /home/jbarbour/final_ERCC2_paper/data/ENCODE_L2R_bedgraph
 
bamCompare -b1 /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/ENCFF548CMN.bam -b2 /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/Gastroeso_ENCODE_control_ChIP.bam -of bedgraph -o CTCF_gastroeso_1_L2R.bg -p 16
bamCompare -b1 /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/ENCFF125SPS.bam -b2 /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/Gastroeso_ENCODE_control_ChIP.bam -of bedgraph -o CTCF_gastroeso_2_L2R.bg -p 16
bamCompare -b1 /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/ENCFF653KEU.bam -b2 /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/Gastroeso_ENCODE_control_ChIP.bam -of bedgraph -o CTCF_gastroeso_3_L2R.bg -p 16
bamCompare -b1 /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/ENCFF565VSK.bam -b2 /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/Gastroeso_ENCODE_control_ChIP.bam -of bedgraph -o CTCF_gastroeso_4_L2R.bg -p 16
bamCompare -b1 /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/ENCFF535PHN.bam -b2 /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/Gastroeso_ENCODE_control_ChIP.bam -of bedgraph -o POLR2A_gastroeso_1_L2R.bg -p 16
bamCompare -b1 /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/ENCFF820VHQ.bam -b2 /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/Gastroeso_ENCODE_control_ChIP.bam -of bedgraph -o POLR2A_gastroeso_2_L2R.bg -p 16
bamCompare -b1 /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/ENCFF187ZIE.bam -b2 /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/Gastroeso_ENCODE_control_ChIP.bam -of bedgraph -o POLR2A_gastroeso_3_L2R.bg -p 16
 
bamCompare -b1 /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/ENCFF546PNW.bam -b2 /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/Skin_ENCODE_control_ChIP.bam -of bedgraph -o CTCF_skin_1_L2R.bg -p 16
bamCompare -b1 /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/ENCFF985JPM.bam -b2 /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/Skin_ENCODE_control_ChIP.bam -of bedgraph -o CTCF_skin_2_L2R.bg -p 16
bamCompare -b1 /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/ENCFF007DFB.bam -b2 /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/Skin_ENCODE_control_ChIP.bam -of bedgraph -o CTCF_skin_3_L2R.bg -p 16
bamCompare -b1 /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/ENCFF773QXS.bam -b2 /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/Skin_ENCODE_control_ChIP.bam -of bedgraph -o CTCF_skin_4_L2R.bg -p 16
bamCompare -b1 /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/ENCFF616FYK.bam -b2 /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/Skin_ENCODE_control_ChIP.bam -of bedgraph -o POLR2A_skin_1_L2R.bg -p 16
bamCompare -b1 /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/ENCFF155XUI.bam -b2 /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/Skin_ENCODE_control_ChIP.bam -of bedgraph -o POLR2A_skin_2_L2R.bg -p 16

bamCompare -b1 /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/ENCFF928FSC.bam -b2 /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/Liver_ENCODE_control_ChIP.bam -of bedgraph -o CTCF_liver_L2R.bg -p 16
bamCompare -b1 /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/ENCFF394VHK.bam -b2 /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/Liver_ENCODE_control_ChIP.bam -of bedgraph -o POLR2A_liver_L2R.bg -p 16

bamCompare -b1 /home/jbarbour/final_ERCC2_paper/data/XPD_ChIP_sorted.dedup.bam -b2 /home/jbarbour/final_ERCC2_paper/data/Input.dedup.bam -of bedgraph -o /home/jbarbour/final_ERCC2_paper/data/XPD_L2R.bg -p 20

bamCoverage -b /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/ENCFF434AMR.bam  -o DHS_liver.bg -of bedgraph --normalizeUsing RPKM -p 16

bamCoverage -b /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/ENCFF146ADR.bam  -o DHS_eso_1.bg -of bedgraph --normalizeUsing RPKM -p 16
bamCoverage -b /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/ENCFF679ZBQ.bam  -o DHS_eso_2.bg -of bedgraph --normalizeUsing RPKM -p 16
bamCoverage -b /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/ENCFF127TUP.bam  -o DHS_eso_3.bg -of bedgraph --normalizeUsing RPKM -p 16

bamCoverage -b /home/jbarbour/final_ERCC2_paper/data/ENCODE_filtered_BAM/ENCFF213QEX.bam  -o DHS_skin_3.bg -of bedgraph --normalizeUsing RPKM -p 16


for f in *.bg ; do sort -k 1,1 -k2,2n $f > ${f}.sorted.bedgraph ; done
