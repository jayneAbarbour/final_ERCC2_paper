
cd /home/jbarbour/final_ERCC2_paper/annotations

bedtools flank -r 2500 -l 0 -i top_half_bladder_canonical_genes_whole.bed -g /home/jbarbour/Data/hg19_reference/hg19.chrom.sizes |\
sort -k 1,1 -k2,2n - > TES_flank_expressed.txt
bedtools flank -r 0 -l 2500 -i top_half_bladder_canonical_genes_whole.bed -g /home/jbarbour/Data/hg19_reference/hg19.chrom.sizes |\
sort -k 1,1 -k2,2n - > TSS_flank_expressed.txt
bedtools flank -r 2500 -l 0 -i silent_bladder_canonical_genes_whole.bed -g /home/jbarbour/Data/hg19_reference/hg19.chrom.sizes |\
sort -k 1,1 -k2,2n - > TES_flank_silent.txt
bedtools flank -r 0 -l 2500 -i silent_bladder_canonical_genes_whole.bed -g /home/jbarbour/Data/hg19_reference/hg19.chrom.sizes |\
sort -k 1,1 -k2,2n - > TSS_flank_silent.txt

