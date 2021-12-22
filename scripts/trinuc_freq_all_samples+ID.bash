
for d in ./*/ ; do ( cd "$d" && for f in *trinuc.txt ;
do awk 'IGNORECASE = 1 {
if (($5 == "c" && $6 == "a" && $8 == "ACA") || ($5 == "g" && $6 == "t" && $8 == "TGT"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>A""\t""ACA";
if (($5 == "c" && $6 == "a" && $8 == "ACC") || ($5 == "g" && $6 == "t" && $8 == "GGT"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>A""\t""ACC";	
if (($5 == "c" && $6 == "a" && $8 == "ACG") || ($5 == "g" && $6 == "t" && $8 == "CGT"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>A""\t""ACG";	
if (($5 == "c" && $6 == "a" && $8 == "ACT") || ($5 == "g" && $6 == "t" && $8 == "AGT"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>A""\t""ACT";	
if (($5 == "c" && $6 == "a" && $8 == "CCA") || ($5 == "g" && $6 == "t" && $8 == "TGG"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>A""\t""CCA";	
if (($5 == "c" && $6 == "a" && $8 == "CCC") || ($5 == "g" && $6 == "t" && $8 == "GGG"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>A""\t""CCC";	
if (($5 == "c" && $6 == "a" && $8 == "CCG") || ($5 == "g" && $6 == "t" && $8 == "CGG"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>A""\t""CCG";	
if (($5 == "c" && $6 == "a" && $8 == "CCT") || ($5 == "g" && $6 == "t" && $8 == "AGG"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>A""\t""CCT";	
if (($5 == "c" && $6 == "a" && $8 == "GCA") || ($5 == "g" && $6 == "t" && $8 == "TGC"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>A""\t""GCA";	
if (($5 == "c" && $6 == "a" && $8 == "GCC") || ($5 == "g" && $6 == "t" && $8 == "GGC"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>A""\t""GCC";	
if (($5 == "c" && $6 == "a" && $8 == "GCG") || ($5 == "g" && $6 == "t" && $8 == "CGC"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>A""\t""GCG";	
if (($5 == "c" && $6 == "a" && $8 == "GCT") || ($5 == "g" && $6 == "t" && $8 == "AGC"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>A""\t""GCT";	
if (($5 == "c" && $6 == "a" && $8 == "TCA") || ($5 == "g" && $6 == "t" && $8 == "TGA"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>A""\t""TCA";	
if (($5 == "c" && $6 == "a" && $8 == "TCC") || ($5 == "g" && $6 == "t" && $8 == "GGA"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>A""\t""TCC";	
if (($5 == "c" && $6 == "a" && $8 == "TCG") || ($5 == "g" && $6 == "t" && $8 == "CGA"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>A""\t""TCG";	
if (($5 == "c" && $6 == "a" && $8 == "TCT") || ($5 == "g" && $6 == "t" && $8 == "AGA"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>A""\t""TCT";	
if (($5 == "c" && $6 == "g" && $8 == "ACA") || ($5 == "g" && $6 == "c" && $8 == "TGT"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>G""\t""ACA";
if (($5 == "c" && $6 == "g" && $8 == "ACC") || ($5 == "g" && $6 == "c" && $8 == "GGT"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>G""\t""ACC";	
if (($5 == "c" && $6 == "g" && $8 == "ACG") || ($5 == "g" && $6 == "c" && $8 == "CGT"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>G""\t""ACG";	
if (($5 == "c" && $6 == "g" && $8 == "ACT") || ($5 == "g" && $6 == "c" && $8 == "AGT"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>G""\t""ACT";	
if (($5 == "c" && $6 == "g" && $8 == "CCA") || ($5 == "g" && $6 == "c" && $8 == "TGG"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>G""\t""CCA";	
if (($5 == "c" && $6 == "g" && $8 == "CCC") || ($5 == "g" && $6 == "c" && $8 == "GGG"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>G""\t""CCC";	
if (($5 == "c" && $6 == "g" && $8 == "CCG") || ($5 == "g" && $6 == "c" && $8 == "CGG"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>G""\t""CCG";	
if (($5 == "c" && $6 == "g" && $8 == "CCT") || ($5 == "g" && $6 == "c" && $8 == "AGG"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>G""\t""CCT";	
if (($5 == "c" && $6 == "g" && $8 == "GCA") || ($5 == "g" && $6 == "c" && $8 == "TGC"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>G""\t""GCA";	
if (($5 == "c" && $6 == "g" && $8 == "GCC") || ($5 == "g" && $6 == "c" && $8 == "GGC"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>G""\t""GCC";	
if (($5 == "c" && $6 == "g" && $8 == "GCG") || ($5 == "g" && $6 == "c" && $8 == "CGC"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>G""\t""GCG";	
if (($5 == "c" && $6 == "g" && $8 == "GCT") || ($5 == "g" && $6 == "c" && $8 == "AGC"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>G""\t""GCT";	
if (($5 == "c" && $6 == "g" && $8 == "TCA") || ($5 == "g" && $6 == "c" && $8 == "TGA"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>G""\t""TCA";	
if (($5 == "c" && $6 == "g" && $8 == "TCC") || ($5 == "g" && $6 == "c" && $8 == "GGA"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>G""\t""TCC";	
if (($5 == "c" && $6 == "g" && $8 == "TCG") || ($5 == "g" && $6 == "c" && $8 == "CGA"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>G""\t""TCG";	
if (($5 == "c" && $6 == "g" && $8 == "TCT") || ($5 == "g" && $6 == "c" && $8 == "AGA"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>G""\t""TCT";	
if (($5 == "c" && $6 == "t" && $8 == "ACA") || ($5 == "g" && $6 == "a" && $8 == "TGT"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>T""\t""ACA";
if (($5 == "c" && $6 == "t" && $8 == "ACC") || ($5 == "g" && $6 == "a" && $8 == "GGT"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>T""\t""ACC";	
if (($5 == "c" && $6 == "t" && $8 == "ACG") || ($5 == "g" && $6 == "a" && $8 == "CGT"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>T""\t""ACG";	
if (($5 == "c" && $6 == "t" && $8 == "ACT") || ($5 == "g" && $6 == "a" && $8 == "AGT"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>T""\t""ACT";	
if (($5 == "c" && $6 == "t" && $8 == "CCA") || ($5 == "g" && $6 == "a" && $8 == "TGG"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>T""\t""CCA";	
if (($5 == "c" && $6 == "t" && $8 == "CCC") || ($5 == "g" && $6 == "a" && $8 == "GGG"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>T""\t""CCC";	
if (($5 == "c" && $6 == "t" && $8 == "CCG") || ($5 == "g" && $6 == "a" && $8 == "CGG"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>T""\t""CCG";	
if (($5 == "c" && $6 == "t" && $8 == "CCT") || ($5 == "g" && $6 == "a" && $8 == "AGG"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>T""\t""CCT";	
if (($5 == "c" && $6 == "t" && $8 == "GCA") || ($5 == "g" && $6 == "a" && $8 == "TGC"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>T""\t""GCA";	
if (($5 == "c" && $6 == "t" && $8 == "GCC") || ($5 == "g" && $6 == "a" && $8 == "GGC"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>T""\t""GCC";	
if (($5 == "c" && $6 == "t" && $8 == "GCG") || ($5 == "g" && $6 == "a" && $8 == "CGC"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>T""\t""GCG";	
if (($5 == "c" && $6 == "t" && $8 == "GCT") || ($5 == "g" && $6 == "a" && $8 == "AGC"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>T""\t""GCT";	
if (($5 == "c" && $6 == "t" && $8 == "TCA") || ($5 == "g" && $6 == "a" && $8 == "TGA"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>T""\t""TCA";	
if (($5 == "c" && $6 == "t" && $8 == "TCC") || ($5 == "g" && $6 == "a" && $8 == "GGA"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>T""\t""TCC";	
if (($5 == "c" && $6 == "t" && $8 == "TCG") || ($5 == "g" && $6 == "a" && $8 == "CGA"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>T""\t""TCG";	
if (($5 == "c" && $6 == "t" && $8 == "TCT") || ($5 == "g" && $6 == "a" && $8 == "AGA"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""C>T""\t""TCT";	
if (($5 == "t" && $6 == "a" && $8 == "ATA") || ($5 == "a" && $6 == "t" && $8 == "TAT"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>A""\t""ATA";
if (($5 == "t" && $6 == "a" && $8 == "ATC") || ($5 == "a" && $6 == "t" && $8 == "GAT"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>A""\t""ATC";	
if (($5 == "t" && $6 == "a" && $8 == "ATG") || ($5 == "a" && $6 == "t" && $8 == "CAT"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>A""\t""ATG";	
if (($5 == "t" && $6 == "a" && $8 == "ATT") || ($5 == "a" && $6 == "t" && $8 == "AAT"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>A""\t""ATT";	
if (($5 == "t" && $6 == "a" && $8 == "CTA") || ($5 == "a" && $6 == "t" && $8 == "TAG"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>A""\t""CTA";	
if (($5 == "t" && $6 == "a" && $8 == "CTC") || ($5 == "a" && $6 == "t" && $8 == "GAG"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>A""\t""CTC";	
if (($5 == "t" && $6 == "a" && $8 == "CTG") || ($5 == "a" && $6 == "t" && $8 == "CAG"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>A""\t""CTG";	
if (($5 == "t" && $6 == "a" && $8 == "CTT") || ($5 == "a" && $6 == "t" && $8 == "AAG"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>A""\t""CTT";	
if (($5 == "t" && $6 == "a" && $8 == "GTA") || ($5 == "a" && $6 == "t" && $8 == "TAC"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>A""\t""GTA";	
if (($5 == "t" && $6 == "a" && $8 == "GTC") || ($5 == "a" && $6 == "t" && $8 == "GAC"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>A""\t""GTC";	
if (($5 == "t" && $6 == "a" && $8 == "GTG") || ($5 == "a" && $6 == "t" && $8 == "CAC"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>A""\t""GTG";	
if (($5 == "t" && $6 == "a" && $8 == "GTT") || ($5 == "a" && $6 == "t" && $8 == "AAC"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>A""\t""GTT";	
if (($5 == "t" && $6 == "a" && $8 == "TTA") || ($5 == "a" && $6 == "t" && $8 == "TAA"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>A""\t""TTA";	
if (($5 == "t" && $6 == "a" && $8 == "TTC") || ($5 == "a" && $6 == "t" && $8 == "GAA"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>A""\t""TTC";	
if (($5 == "t" && $6 == "a" && $8 == "TTG") || ($5 == "a" && $6 == "t" && $8 == "CAA"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>A""\t""TTG";	
if (($5 == "t" && $6 == "a" && $8 == "TTT") || ($5 == "a" && $6 == "t" && $8 == "AAA"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>A""\t""TTT";	
if (($5 == "t" && $6 == "c" && $8 == "ATA") || ($5 == "a" && $6 == "g" && $8 == "TAT"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>C""\t""ATA";
if (($5 == "t" && $6 == "c" && $8 == "ATC") || ($5 == "a" && $6 == "g" && $8 == "GAT"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>C""\t""ATC";	
if (($5 == "t" && $6 == "c" && $8 == "ATG") || ($5 == "a" && $6 == "g" && $8 == "CAT"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>C""\t""ATG";	
if (($5 == "t" && $6 == "c" && $8 == "ATT") || ($5 == "a" && $6 == "g" && $8 == "AAT"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>C""\t""ATT";	
if (($5 == "t" && $6 == "c" && $8 == "CTA") || ($5 == "a" && $6 == "g" && $8 == "TAG"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>C""\t""CTA";	
if (($5 == "t" && $6 == "c" && $8 == "CTC") || ($5 == "a" && $6 == "g" && $8 == "GAG"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>C""\t""CTC";	
if (($5 == "t" && $6 == "c" && $8 == "CTG") || ($5 == "a" && $6 == "g" && $8 == "CAG"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>C""\t""CTG";	
if (($5 == "t" && $6 == "c" && $8 == "CTT") || ($5 == "a" && $6 == "g" && $8 == "AAG"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>C""\t""CTT";	
if (($5 == "t" && $6 == "c" && $8 == "GTA") || ($5 == "a" && $6 == "g" && $8 == "TAC"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>C""\t""GTA";	
if (($5 == "t" && $6 == "c" && $8 == "GTC") || ($5 == "a" && $6 == "g" && $8 == "GAC"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>C""\t""GTC";	
if (($5 == "t" && $6 == "c" && $8 == "GTG") || ($5 == "a" && $6 == "g" && $8 == "CAC"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>C""\t""GTG";	
if (($5 == "t" && $6 == "c" && $8 == "GTT") || ($5 == "a" && $6 == "g" && $8 == "AAC"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>C""\t""GTT";	
if (($5 == "t" && $6 == "c" && $8 == "TTA") || ($5 == "a" && $6 == "g" && $8 == "TAA"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>C""\t""TTA";	
if (($5 == "t" && $6 == "c" && $8 == "TTC") || ($5 == "a" && $6 == "g" && $8 == "GAA"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>C""\t""TTC";	
if (($5 == "t" && $6 == "c" && $8 == "TTG") || ($5 == "a" && $6 == "g" && $8 == "CAA"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>C""\t""TTG";	
if (($5 == "t" && $6 == "c" && $8 == "TTT") || ($5 == "a" && $6 == "g" && $8 == "AAA"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>C""\t""TTT";	
if (($5 == "t" && $6 == "g" && $8 == "ATA") || ($5 == "a" && $6 == "c" && $8 == "TAT"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>G""\t""ATA";
if (($5 == "t" && $6 == "g" && $8 == "ATC") || ($5 == "a" && $6 == "c" && $8 == "GAT"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>G""\t""ATC";	
if (($5 == "t" && $6 == "g" && $8 == "ATG") || ($5 == "a" && $6 == "c" && $8 == "CAT"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>G""\t""ATG";	
if (($5 == "t" && $6 == "g" && $8 == "ATT") || ($5 == "a" && $6 == "c" && $8 == "AAT"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>G""\t""ATT";	
if (($5 == "t" && $6 == "g" && $8 == "CTA") || ($5 == "a" && $6 == "c" && $8 == "TAG"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>G""\t""CTA";	
if (($5 == "t" && $6 == "g" && $8 == "CTC") || ($5 == "a" && $6 == "c" && $8 == "GAG"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>G""\t""CTC";	
if (($5 == "t" && $6 == "g" && $8 == "CTG") || ($5 == "a" && $6 == "c" && $8 == "CAG"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>G""\t""CTG";	
if (($5 == "t" && $6 == "g" && $8 == "CTT") || ($5 == "a" && $6 == "c" && $8 == "AAG"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>G""\t""CTT";	
if (($5 == "t" && $6 == "g" && $8 == "GTA") || ($5 == "a" && $6 == "c" && $8 == "TAC"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>G""\t""GTA";	
if (($5 == "t" && $6 == "g" && $8 == "GTC") || ($5 == "a" && $6 == "c" && $8 == "GAC"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>G""\t""GTC";	
if (($5 == "t" && $6 == "g" && $8 == "GTG") || ($5 == "a" && $6 == "c" && $8 == "CAC"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>G""\t""GTG";	
if (($5 == "t" && $6 == "g" && $8 == "GTT") || ($5 == "a" && $6 == "c" && $8 == "AAC"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>G""\t""GTT";	
if (($5 == "t" && $6 == "g" && $8 == "TTA") || ($5 == "a" && $6 == "c" && $8 == "TAA"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>G""\t""TTA";	
if (($5 == "t" && $6 == "g" && $8 == "TTC") || ($5 == "a" && $6 == "c" && $8 == "GAA"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>G""\t""TTC";	
if (($5 == "t" && $6 == "g" && $8 == "TTG") || ($5 == "a" && $6 == "c" && $8 == "CAA"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>G""\t""TTG";	
if (($5 == "t" && $6 == "g" && $8 == "TTT") || ($5 == "a" && $6 == "c" && $8 == "AAA"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t""T>G""\t""TTT";		
}' $f  | awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"$10"\t"substr($10,0,1)"\t"substr($10,3,3)}' - | awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"$10"\t"$11"["$9"]"$12 }' - > ${f}_tmp4.txt &&

awk '($11 == "A[C>A]A") {count++ } END { print "A[C>A]A""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "A[C>A]C") {count++ } END { print "A[C>A]C""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "A[C>A]G") {count++ } END { print "A[C>A]G""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "A[C>A]T") {count++ } END { print "A[C>A]T""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "C[C>A]A") {count++ } END { print "C[C>A]A""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "C[C>A]C") {count++ } END { print "C[C>A]C""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "C[C>A]G") {count++ } END { print "C[C>A]G""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "C[C>A]T") {count++ } END { print "C[C>A]T""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "G[C>A]A") {count++ } END { print "G[C>A]A""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "G[C>A]C") {count++ } END { print "G[C>A]C""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "G[C>A]G") {count++ } END { print "G[C>A]G""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "G[C>A]T") {count++ } END { print "G[C>A]T""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "T[C>A]A") {count++ } END { print "T[C>A]A""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "T[C>A]C") {count++ } END { print "T[C>A]C""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "T[C>A]G") {count++ } END { print "T[C>A]G""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "T[C>A]T") {count++ } END { print "T[C>A]T""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "A[C>G]A") {count++ } END { print "A[C>G]A""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "A[C>G]C") {count++ } END { print "A[C>G]C""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "A[C>G]G") {count++ } END { print "A[C>G]G""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "A[C>G]T") {count++ } END { print "A[C>G]T""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "C[C>G]A") {count++ } END { print "C[C>G]A""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "C[C>G]C") {count++ } END { print "C[C>G]C""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "C[C>G]G") {count++ } END { print "C[C>G]G""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "C[C>G]T") {count++ } END { print "C[C>G]T""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "G[C>G]A") {count++ } END { print "G[C>G]A""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "G[C>G]C") {count++ } END { print "G[C>G]C""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "G[C>G]G") {count++ } END { print "G[C>G]G""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "G[C>G]T") {count++ } END { print "G[C>G]T""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "T[C>G]A") {count++ } END { print "T[C>G]A""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "T[C>G]C") {count++ } END { print "T[C>G]C""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "T[C>G]G") {count++ } END { print "T[C>G]G""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "T[C>G]T") {count++ } END { print "T[C>G]T""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "A[C>T]A") {count++ } END { print "A[C>T]A""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "A[C>T]C") {count++ } END { print "A[C>T]C""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "A[C>T]G") {count++ } END { print "A[C>T]G""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "A[C>T]T") {count++ } END { print "A[C>T]T""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "C[C>T]A") {count++ } END { print "C[C>T]A""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "C[C>T]C") {count++ } END { print "C[C>T]C""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "C[C>T]G") {count++ } END { print "C[C>T]G""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "C[C>T]T") {count++ } END { print "C[C>T]T""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "G[C>T]A") {count++ } END { print "G[C>T]A""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "G[C>T]C") {count++ } END { print "G[C>T]C""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "G[C>T]G") {count++ } END { print "G[C>T]G""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "G[C>T]T") {count++ } END { print "G[C>T]T""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "T[C>T]A") {count++ } END { print "T[C>T]A""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "T[C>T]C") {count++ } END { print "T[C>T]C""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "T[C>T]G") {count++ } END { print "T[C>T]G""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "T[C>T]T") {count++ } END { print "T[C>T]T""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "A[T>A]A") {count++ } END { print "A[T>A]A""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "A[T>A]C") {count++ } END { print "A[T>A]C""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "A[T>A]G") {count++ } END { print "A[T>A]G""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "A[T>A]T") {count++ } END { print "A[T>A]T""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "C[T>A]A") {count++ } END { print "C[T>A]A""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "C[T>A]C") {count++ } END { print "C[T>A]C""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "C[T>A]G") {count++ } END { print "C[T>A]G""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "C[T>A]T") {count++ } END { print "C[T>A]T""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "G[T>A]A") {count++ } END { print "G[T>A]A""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "G[T>A]C") {count++ } END { print "G[T>A]C""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "G[T>A]G") {count++ } END { print "G[T>A]G""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "G[T>A]T") {count++ } END { print "G[T>A]T""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "T[T>A]A") {count++ } END { print "T[T>A]A""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "T[T>A]C") {count++ } END { print "T[T>A]C""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "T[T>A]G") {count++ } END { print "T[T>A]G""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "T[T>A]T") {count++ } END { print "T[T>A]T""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "A[T>C]A") {count++ } END { print "A[T>C]A""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "A[T>C]C") {count++ } END { print "A[T>C]C""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "A[T>C]G") {count++ } END { print "A[T>C]G""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "A[T>C]T") {count++ } END { print "A[T>C]T""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "C[T>C]A") {count++ } END { print "C[T>C]A""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "C[T>C]C") {count++ } END { print "C[T>C]C""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "C[T>C]G") {count++ } END { print "C[T>C]G""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "C[T>C]T") {count++ } END { print "C[T>C]T""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "G[T>C]A") {count++ } END { print "G[T>C]A""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "G[T>C]C") {count++ } END { print "G[T>C]C""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "G[T>C]G") {count++ } END { print "G[T>C]G""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "G[T>C]T") {count++ } END { print "G[T>C]T""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "T[T>C]A") {count++ } END { print "T[T>C]A""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "T[T>C]C") {count++ } END { print "T[T>C]C""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "T[T>C]G") {count++ } END { print "T[T>C]G""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "T[T>C]T") {count++ } END { print "T[T>C]T""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "A[T>G]A") {count++ } END { print "A[T>G]A""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "A[T>G]C") {count++ } END { print "A[T>G]C""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "A[T>G]G") {count++ } END { print "A[T>G]G""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "A[T>G]T") {count++ } END { print "A[T>G]T""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "C[T>G]A") {count++ } END { print "C[T>G]A""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "C[T>G]C") {count++ } END { print "C[T>G]C""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "C[T>G]G") {count++ } END { print "C[T>G]G""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "C[T>G]T") {count++ } END { print "C[T>G]T""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "G[T>G]A") {count++ } END { print "G[T>G]A""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "G[T>G]C") {count++ } END { print "G[T>G]C""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "G[T>G]G") {count++ } END { print "G[T>G]G""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "G[T>G]T") {count++ } END { print "G[T>G]T""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "T[T>G]A") {count++ } END { print "T[T>G]A""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "T[T>G]C") {count++ } END { print "T[T>G]C""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "T[T>G]G") {count++ } END { print "T[T>G]G""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&
awk '($11 == "T[T>G]T") {count++ } END { print "T[T>G]T""\t"(count+0) }' ${f}_tmp4.txt >> ${f}_trinuc_count.txt &&

SUM=$(awk '{ sum += $2; } END { print sum ; }' ${f}_trinuc_count.txt ) 
awk -v y=$SUM '{print $1"\t"$2"\t"y"\t"($2/y)}' ${f}_trinuc_count.txt | { printf 'Trinuc\tTrinuc_Count\tTotal_mutations\tTrinuc_Frequency\n'; cat -; } > ${f}_trinucleotide_frequency.txt ;

name=$(echo $f)

awk -v name=$name ' NR == 1 {print name}' ${f}_trinucleotide_frequency.txt > ${f}_header.txt

cut -f4 ${f}_trinucleotide_frequency.txt  | tail -n+2 - | cat ${f}_header.txt - | awk '{split($1,a,"_trinuc.txt"); print a[1] }' - > ${f}_column.txt ;


rm ${f}_tmp4.txt ;
rm ${f}_trinuc_count.txt ;

done  ); done & 











