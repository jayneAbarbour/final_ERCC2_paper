

cd /home/jbarbour/final_ERCC2_paper/analysis/figure_1_signature_5_similarity


awk ' NR == 97  {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt > Cosmic2Getz_TtoG.txt
awk ' NR == 73  {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoG.txt 
awk ' NR == 49 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoG.txt  
awk ' NR == 25 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoG.txt 

awk ' NR == 96  {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoG.txt  
awk ' NR == 72  {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoG.txt  
awk ' NR == 48  {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoG.txt 
awk ' NR == 24 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoG.txt 

awk ' NR == 95 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoG.txt  
awk ' NR == 71 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoG.txt  
awk ' NR == 47 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoG.txt  
awk ' NR == 23 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoG.txt 

awk ' NR == 94 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoG.txt  
awk ' NR == 70 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoG.txt 
awk ' NR == 46 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoG.txt 
awk ' NR == 22 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoG.txt  

awk ' NR == 93  {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt > Cosmic2Getz_TtoC.txt
awk ' NR == 69  {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoC.txt 
awk ' NR == 45 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoC.txt  
awk ' NR == 21 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoC.txt 

awk ' NR == 92 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoC.txt  
awk ' NR == 68 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoC.txt  
awk ' NR == 44 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoC.txt 
awk ' NR == 20 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoC.txt 

awk ' NR == 91 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoC.txt  
awk ' NR == 67 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoC.txt 
awk ' NR == 43 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoC.txt  
awk ' NR == 19 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoC.txt 

awk ' NR == 90 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoC.txt   
awk ' NR == 66 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoC.txt  
awk ' NR == 42 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoC.txt  
awk ' NR == 18 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoC.txt   

awk ' NR == 89  {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt > Cosmic2Getz_TtoA.txt
awk ' NR == 65  {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoA.txt 
awk ' NR == 41 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoA.txt  
awk ' NR == 17 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoA.txt 

awk ' NR == 88 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoA.txt  
awk ' NR == 64 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoA.txt  
awk ' NR == 40 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoA.txt 
awk ' NR == 16 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoA.txt 

awk ' NR == 87 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoA.txt  
awk ' NR == 63 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoA.txt 
awk ' NR == 39 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoA.txt  
awk ' NR == 15 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoA.txt 

awk ' NR == 86 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoA.txt   
awk ' NR == 62 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoA.txt  
awk ' NR == 38 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoA.txt  
awk ' NR == 14 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_TtoA.txt   

awk ' NR == 2  {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt > Cosmic2Getz_CtoA.txt
awk ' NR == 3  {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoA.txt 
awk ' NR == 4 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoA.txt  
awk ' NR == 5 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoA.txt 

awk ' NR == 26 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoA.txt  
awk ' NR == 27 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoA.txt 
awk ' NR == 28 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoA.txt 
awk ' NR == 29 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoA.txt 

awk ' NR == 50 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoA.txt  
awk ' NR == 51 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoA.txt 
awk ' NR == 52 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoA.txt  
awk ' NR == 53 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoA.txt

awk ' NR == 74 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoA.txt   
awk ' NR == 75 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoA.txt  
awk ' NR == 76 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoA.txt  
awk ' NR == 77 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoA.txt   

awk ' NR == 6  {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt > Cosmic2Getz_CtoG.txt
awk ' NR == 7  {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoG.txt 
awk ' NR == 8 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoG.txt  
awk ' NR == 9 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoG.txt 

awk ' NR == 30 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoG.txt  
awk ' NR == 31 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoG.txt
awk ' NR == 32 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoG.txt 
awk ' NR == 33 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoG.txt 

awk ' NR == 54 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoG.txt  
awk ' NR == 55 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoG.txt 
awk ' NR == 56 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoG.txt  
awk ' NR == 57 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoG.txt

awk ' NR == 78 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoG.txt   
awk ' NR == 79 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoG.txt  
awk ' NR == 80 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoG.txt  
awk ' NR == 81 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoG.txt   

awk ' NR == 10  {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt > Cosmic2Getz_CtoT.txt
awk ' NR == 11  {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoT.txt 
awk ' NR == 12 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoT.txt  
awk ' NR == 13 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoT.txt 

awk ' NR == 34 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoT.txt  
awk ' NR == 35 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoT.txt
awk ' NR == 36 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoT.txt
awk ' NR == 37 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoT.txt 

awk ' NR == 58 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoT.txt  
awk ' NR == 59 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoT.txt 
awk ' NR == 60 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoT.txt 
awk ' NR == 61 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoT.txt

awk ' NR == 82 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoT.txt   
awk ' NR == 83 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoT.txt  
awk ' NR == 84 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoT.txt 
awk ' NR == 85 {print $1"\t"$3"\t"$6"\t"$14}' /home/jbarbour/final_ERCC2_paper/data/COSMIC_v2_SBS_GRCh37.txt >> Cosmic2Getz_CtoT.txt 

cat Cosmic2Getz_TtoG.txt Cosmic2Getz_TtoC.txt Cosmic2Getz_TtoA.txt Cosmic2Getz_CtoA.txt Cosmic2Getz_CtoG.txt Cosmic2Getz_CtoT.txt |\
{ printf 'Trinuc\tCOSMIC Signature 2\tCOSMIC Signature 5\tCOSMIC Signature 13\n'; cat - ; } > cosmic2Getz.txt

rm Cosmic2Getz_TtoG.txt 
rm Cosmic2Getz_TtoC.txt 
rm Cosmic2Getz_TtoA.txt 
rm Cosmic2Getz_CtoA.txt 
rm Cosmic2Getz_CtoG.txt 
rm Cosmic2Getz_CtoT.txt


paste /home/jbarbour/final_ERCC2_paper/data/supplementary_table.txt cosmic2Getz.txt | awk -F'\t' '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$11"\t"$12"\t"$13 }' - > reference_signatures.txt


##

awk ' NR == 97 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt > Script2Getz_TtoG.txt
awk ' NR == 93 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 
awk ' NR == 89 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 85 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 

awk ' NR == 96 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 92 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 88 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 
awk ' NR == 84 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt  >> Script2Getz_TtoG.txt 

awk ' NR == 95 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 91 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 87 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 83 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 

awk ' NR == 94 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 90 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 
awk ' NR == 86 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 
awk ' NR == 82 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  

awk ' NR == 81 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt > Script2Getz_TtoC.txt
awk ' NR == 77 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 
awk ' NR == 73 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 69 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 

awk ' NR == 80 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 76 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 72 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 
awk ' NR == 68 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 

awk ' NR == 79 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 75 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 
awk ' NR == 71 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 67 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 

awk ' NR == 78 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt   
awk ' NR == 74 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 70 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 66 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt   


awk ' NR == 65 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt > Script2Getz_TtoA.txt
awk ' NR == 61 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 
awk ' NR == 57 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 53 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 

awk ' NR == 64 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 60 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 56 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 
awk ' NR == 52 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 

awk ' NR == 63 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 59 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 
awk ' NR == 55 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 51 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 

awk ' NR == 62 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt   
awk ' NR == 58 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 54 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 50 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt   

awk ' NR == 2 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt > Script2Getz_CtoA.txt
awk ' NR == 3 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 
awk ' NR == 4 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 5 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 

awk ' NR == 6 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 7 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 
awk ' NR == 8 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 
awk ' NR == 9 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 

awk ' NR == 10 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 11 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 
awk ' NR == 12 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 13 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt

awk ' NR == 14 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt   
awk ' NR == 15 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 16 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 17 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt   

awk ' NR == 18 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt > Script2Getz_CtoG.txt
awk ' NR == 19 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt 
awk ' NR == 20 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 21 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt 

awk ' NR == 22 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 23 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt
awk ' NR == 24 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt 
awk ' NR == 25 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt 

awk ' NR == 26 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 27 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt 
awk ' NR == 28 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 29 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt

awk ' NR == 30 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt   
awk ' NR == 31 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 32 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 33 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt   

awk ' NR == 34 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt > Script2Getz_CtoT.txt
awk ' NR == 35 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 
awk ' NR == 36 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt  
awk ' NR == 37 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 

awk ' NR == 38 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt  
awk ' NR == 39 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt
awk ' NR == 40 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt
awk ' NR == 41 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 

awk ' NR == 42 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt  
awk ' NR == 43 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 
awk ' NR == 44 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 
awk ' NR == 45 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt

awk ' NR == 46 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt   
awk ' NR == 47 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt  
awk ' NR == 48 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 
awk ' NR == 49 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 

cat Script2Getz_TtoG.txt Script2Getz_TtoC.txt Script2Getz_TtoA.txt Script2Getz_CtoA.txt Script2Getz_CtoG.txt Script2Getz_CtoT.txt > All_mutant2Getz.txt

rm Script2Getz_TtoG.txt 
rm Script2Getz_TtoC.txt 
rm Script2Getz_TtoA.txt 
rm Script2Getz_CtoA.txt 
rm Script2Getz_CtoG.txt 
rm Script2Getz_CtoT.txt

awk ' NR == 97 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt > Script2Getz_TtoG.txt
awk ' NR == 93 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 
awk ' NR == 89 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 85 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 

awk ' NR == 96 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 92 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 88 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 
awk ' NR == 84 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt  >> Script2Getz_TtoG.txt 

awk ' NR == 95 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 91 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 87 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 83 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 

awk ' NR == 94 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 90 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 
awk ' NR == 86 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 
awk ' NR == 82 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  

awk ' NR == 81 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt > Script2Getz_TtoC.txt
awk ' NR == 77 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 
awk ' NR == 73 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 69 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 

awk ' NR == 80 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 76 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 72 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 
awk ' NR == 68 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 

awk ' NR == 79 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 75 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 
awk ' NR == 71 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 67 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 

awk ' NR == 78 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt   
awk ' NR == 74 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 70 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 66 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt   


awk ' NR == 65 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt > Script2Getz_TtoA.txt
awk ' NR == 61 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 
awk ' NR == 57 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 53 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 

awk ' NR == 64 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 60 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 56 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 
awk ' NR == 52 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 

awk ' NR == 63 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 59 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 
awk ' NR == 55 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 51 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 

awk ' NR == 62 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt   
awk ' NR == 58 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 54 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 50 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt   

awk ' NR == 2 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt > Script2Getz_CtoA.txt
awk ' NR == 3 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 
awk ' NR == 4 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 5 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 

awk ' NR == 6 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 7 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 
awk ' NR == 8 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 
awk ' NR == 9 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 

awk ' NR == 10 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 11 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 
awk ' NR == 12 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 13 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt

awk ' NR == 14 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt   
awk ' NR == 15 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 16 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 17 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt   

awk ' NR == 18 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt > Script2Getz_CtoG.txt
awk ' NR == 19 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt 
awk ' NR == 20 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 21 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt 

awk ' NR == 22 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 23 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt
awk ' NR == 24 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt 
awk ' NR == 25 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt 

awk ' NR == 26 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 27 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt 
awk ' NR == 28 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 29 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt

awk ' NR == 30 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt   
awk ' NR == 31 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 32 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 33 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt   

awk ' NR == 34 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt > Script2Getz_CtoT.txt
awk ' NR == 35 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 
awk ' NR == 36 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt  
awk ' NR == 37 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 

awk ' NR == 38 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt  
awk ' NR == 39 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt
awk ' NR == 40 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt
awk ' NR == 41 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 

awk ' NR == 42 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt  
awk ' NR == 43 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 
awk ' NR == 44 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 
awk ' NR == 45 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt

awk ' NR == 46 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt   
awk ' NR == 47 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt  
awk ' NR == 48 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 
awk ' NR == 49 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 

cat Script2Getz_TtoG.txt Script2Getz_TtoC.txt Script2Getz_TtoA.txt Script2Getz_CtoA.txt Script2Getz_CtoG.txt Script2Getz_CtoT.txt > APOBEC_mutant2Getz.txt

rm Script2Getz_TtoG.txt 
rm Script2Getz_TtoC.txt 
rm Script2Getz_TtoA.txt 
rm Script2Getz_CtoA.txt 
rm Script2Getz_CtoG.txt 
rm Script2Getz_CtoT.txt

awk ' NR == 97 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt > Script2Getz_TtoG.txt
awk ' NR == 93 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 
awk ' NR == 89 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 85 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 

awk ' NR == 96 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 92 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 88 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 
awk ' NR == 84 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt  >> Script2Getz_TtoG.txt 

awk ' NR == 95 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 91 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 87 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 83 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 

awk ' NR == 94 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 90 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 
awk ' NR == 86 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 
awk ' NR == 82 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  

awk ' NR == 81 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt > Script2Getz_TtoC.txt
awk ' NR == 77 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 
awk ' NR == 73 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 69 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 

awk ' NR == 80 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 76 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 72 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 
awk ' NR == 68 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 

awk ' NR == 79 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 75 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 
awk ' NR == 71 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 67 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 

awk ' NR == 78 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt   
awk ' NR == 74 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 70 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 66 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt   


awk ' NR == 65 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt > Script2Getz_TtoA.txt
awk ' NR == 61 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 
awk ' NR == 57 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 53 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 

awk ' NR == 64 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 60 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 56 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 
awk ' NR == 52 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 

awk ' NR == 63 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 59 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 
awk ' NR == 55 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 51 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 

awk ' NR == 62 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt   
awk ' NR == 58 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 54 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 50 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt   

awk ' NR == 2 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt > Script2Getz_CtoA.txt
awk ' NR == 3 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 
awk ' NR == 4 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 5 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 

awk ' NR == 6 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 7 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 
awk ' NR == 8 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 
awk ' NR == 9 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 

awk ' NR == 10 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 11 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 
awk ' NR == 12 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 13 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt

awk ' NR == 14 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt   
awk ' NR == 15 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 16 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 17 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt   

awk ' NR == 18 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt > Script2Getz_CtoG.txt
awk ' NR == 19 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt 
awk ' NR == 20 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 21 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt 

awk ' NR == 22 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 23 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt
awk ' NR == 24 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt 
awk ' NR == 25 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt 

awk ' NR == 26 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 27 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt 
awk ' NR == 28 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 29 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt

awk ' NR == 30 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt   
awk ' NR == 31 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 32 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 33 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt   

awk ' NR == 34 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt > Script2Getz_CtoT.txt
awk ' NR == 35 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 
awk ' NR == 36 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt  
awk ' NR == 37 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 

awk ' NR == 38 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt  
awk ' NR == 39 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt
awk ' NR == 40 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt
awk ' NR == 41 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 

awk ' NR == 42 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt  
awk ' NR == 43 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 
awk ' NR == 44 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 
awk ' NR == 45 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt

awk ' NR == 46 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt   
awk ' NR == 47 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt  
awk ' NR == 48 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 
awk ' NR == 49 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_Mutant_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 

cat Script2Getz_TtoG.txt Script2Getz_TtoC.txt Script2Getz_TtoA.txt Script2Getz_CtoA.txt Script2Getz_CtoG.txt Script2Getz_CtoT.txt > Other_Mutant2Getz.txt

rm Script2Getz_TtoG.txt 
rm Script2Getz_TtoC.txt 
rm Script2Getz_TtoA.txt 
rm Script2Getz_CtoA.txt 
rm Script2Getz_CtoG.txt 
rm Script2Getz_CtoT.txt


awk ' NR == 97 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt > Script2Getz_TtoG.txt
awk ' NR == 93 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 
awk ' NR == 89 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 85 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 

awk ' NR == 96 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 92 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 88 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 
awk ' NR == 84 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt  >> Script2Getz_TtoG.txt 

awk ' NR == 95 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 91 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 87 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 83 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 

awk ' NR == 94 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 90 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 
awk ' NR == 86 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 
awk ' NR == 82 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  

awk ' NR == 81 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt > Script2Getz_TtoC.txt
awk ' NR == 77 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 
awk ' NR == 73 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 69 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 

awk ' NR == 80 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 76 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 72 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 
awk ' NR == 68 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 

awk ' NR == 79 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 75 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 
awk ' NR == 71 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 67 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 

awk ' NR == 78 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt   
awk ' NR == 74 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 70 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 66 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt   


awk ' NR == 65 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt > Script2Getz_TtoA.txt
awk ' NR == 61 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 
awk ' NR == 57 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 53 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 

awk ' NR == 64 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 60 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 56 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 
awk ' NR == 52 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 

awk ' NR == 63 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 59 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 
awk ' NR == 55 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 51 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 

awk ' NR == 62 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt   
awk ' NR == 58 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 54 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 50 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt   

awk ' NR == 2 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt > Script2Getz_CtoA.txt
awk ' NR == 3 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 
awk ' NR == 4 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 5 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 

awk ' NR == 6 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 7 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 
awk ' NR == 8 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 
awk ' NR == 9 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 

awk ' NR == 10 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 11 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 
awk ' NR == 12 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 13 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt

awk ' NR == 14 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt   
awk ' NR == 15 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 16 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 17 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt   

awk ' NR == 18 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt > Script2Getz_CtoG.txt
awk ' NR == 19 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt 
awk ' NR == 20 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 21 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt 

awk ' NR == 22 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 23 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt
awk ' NR == 24 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt 
awk ' NR == 25 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt 

awk ' NR == 26 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 27 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt 
awk ' NR == 28 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 29 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt

awk ' NR == 30 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt   
awk ' NR == 31 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 32 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 33 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt   

awk ' NR == 34 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt > Script2Getz_CtoT.txt
awk ' NR == 35 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 
awk ' NR == 36 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt  
awk ' NR == 37 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 

awk ' NR == 38 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt  
awk ' NR == 39 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt
awk ' NR == 40 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt
awk ' NR == 41 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 

awk ' NR == 42 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt  
awk ' NR == 43 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 
awk ' NR == 44 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 
awk ' NR == 45 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt

awk ' NR == 46 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt   
awk ' NR == 47 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt  
awk ' NR == 48 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 
awk ' NR == 49 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/All_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 

cat Script2Getz_TtoG.txt Script2Getz_TtoC.txt Script2Getz_TtoA.txt Script2Getz_CtoA.txt Script2Getz_CtoG.txt Script2Getz_CtoT.txt > All_WT2Getz.txt

rm Script2Getz_TtoG.txt 
rm Script2Getz_TtoC.txt 
rm Script2Getz_TtoA.txt 
rm Script2Getz_CtoA.txt 
rm Script2Getz_CtoG.txt 
rm Script2Getz_CtoT.txt

awk ' NR == 97 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt > Script2Getz_TtoG.txt
awk ' NR == 93 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 
awk ' NR == 89 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 85 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 

awk ' NR == 96 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 92 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 88 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 
awk ' NR == 84 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt  >> Script2Getz_TtoG.txt 

awk ' NR == 95 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 91 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 87 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 83 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 

awk ' NR == 94 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 90 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 
awk ' NR == 86 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 
awk ' NR == 82 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  

awk ' NR == 81 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt > Script2Getz_TtoC.txt
awk ' NR == 77 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 
awk ' NR == 73 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 69 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 

awk ' NR == 80 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 76 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 72 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 
awk ' NR == 68 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 

awk ' NR == 79 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 75 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 
awk ' NR == 71 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 67 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 

awk ' NR == 78 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt   
awk ' NR == 74 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 70 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 66 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt   


awk ' NR == 65 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt > Script2Getz_TtoA.txt
awk ' NR == 61 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 
awk ' NR == 57 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 53 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 

awk ' NR == 64 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 60 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 56 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 
awk ' NR == 52 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 

awk ' NR == 63 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 59 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 
awk ' NR == 55 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 51 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 

awk ' NR == 62 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt   
awk ' NR == 58 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 54 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 50 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt   

awk ' NR == 2 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt > Script2Getz_CtoA.txt
awk ' NR == 3 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 
awk ' NR == 4 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 5 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 

awk ' NR == 6 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 7 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 
awk ' NR == 8 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 
awk ' NR == 9 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 

awk ' NR == 10 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 11 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 
awk ' NR == 12 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 13 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt

awk ' NR == 14 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt   
awk ' NR == 15 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 16 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 17 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt   

awk ' NR == 18 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt > Script2Getz_CtoG.txt
awk ' NR == 19 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt 
awk ' NR == 20 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 21 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt 

awk ' NR == 22 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 23 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt
awk ' NR == 24 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt 
awk ' NR == 25 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt 

awk ' NR == 26 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 27 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt 
awk ' NR == 28 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 29 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt

awk ' NR == 30 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt   
awk ' NR == 31 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 32 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 33 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt   

awk ' NR == 34 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt > Script2Getz_CtoT.txt
awk ' NR == 35 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 
awk ' NR == 36 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt  
awk ' NR == 37 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 

awk ' NR == 38 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt  
awk ' NR == 39 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt
awk ' NR == 40 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt
awk ' NR == 41 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 

awk ' NR == 42 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt  
awk ' NR == 43 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 
awk ' NR == 44 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 
awk ' NR == 45 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt

awk ' NR == 46 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt   
awk ' NR == 47 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt  
awk ' NR == 48 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 
awk ' NR == 49 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/APOBEC_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 

cat Script2Getz_TtoG.txt Script2Getz_TtoC.txt Script2Getz_TtoA.txt Script2Getz_CtoA.txt Script2Getz_CtoG.txt Script2Getz_CtoT.txt > APOBEC_WT2Getz.txt

rm Script2Getz_TtoG.txt 
rm Script2Getz_TtoC.txt 
rm Script2Getz_TtoA.txt 
rm Script2Getz_CtoA.txt 
rm Script2Getz_CtoG.txt 
rm Script2Getz_CtoT.txt

awk ' NR == 97 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt > Script2Getz_TtoG.txt
awk ' NR == 93 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 
awk ' NR == 89 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 85 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 

awk ' NR == 96 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 92 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 88 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 
awk ' NR == 84 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt  >> Script2Getz_TtoG.txt 

awk ' NR == 95 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 91 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 87 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 83 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 

awk ' NR == 94 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  
awk ' NR == 90 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 
awk ' NR == 86 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt 
awk ' NR == 82 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoG.txt  

awk ' NR == 81 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt > Script2Getz_TtoC.txt
awk ' NR == 77 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 
awk ' NR == 73 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 69 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 

awk ' NR == 80 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 76 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 72 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 
awk ' NR == 68 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 

awk ' NR == 79 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 75 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 
awk ' NR == 71 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 67 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt 

awk ' NR == 78 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt   
awk ' NR == 74 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 70 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt  
awk ' NR == 66 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoC.txt   


awk ' NR == 65 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt > Script2Getz_TtoA.txt
awk ' NR == 61 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 
awk ' NR == 57 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 53 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 

awk ' NR == 64 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 60 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 56 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 
awk ' NR == 52 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 

awk ' NR == 63 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 59 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 
awk ' NR == 55 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 51 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt 

awk ' NR == 62 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt   
awk ' NR == 58 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 54 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt  
awk ' NR == 50 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_TtoA.txt   

awk ' NR == 2 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt > Script2Getz_CtoA.txt
awk ' NR == 3 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 
awk ' NR == 4 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 5 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 

awk ' NR == 6 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 7 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 
awk ' NR == 8 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 
awk ' NR == 9 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 

awk ' NR == 10 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 11 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt 
awk ' NR == 12 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 13 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt

awk ' NR == 14 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt   
awk ' NR == 15 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 16 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt  
awk ' NR == 17 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoA.txt   

awk ' NR == 18 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt > Script2Getz_CtoG.txt
awk ' NR == 19 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt 
awk ' NR == 20 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 21 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt 

awk ' NR == 22 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 23 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt
awk ' NR == 24 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt 
awk ' NR == 25 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt 

awk ' NR == 26 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 27 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt 
awk ' NR == 28 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 29 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt

awk ' NR == 30 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt   
awk ' NR == 31 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 32 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt  
awk ' NR == 33 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoG.txt   

awk ' NR == 34 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt > Script2Getz_CtoT.txt
awk ' NR == 35 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 
awk ' NR == 36 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt  
awk ' NR == 37 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 

awk ' NR == 38 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt  
awk ' NR == 39 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt
awk ' NR == 40 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt
awk ' NR == 41 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 

awk ' NR == 42 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt  
awk ' NR == 43 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 
awk ' NR == 44 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 
awk ' NR == 45 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt

awk ' NR == 46 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt   
awk ' NR == 47 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt  
awk ' NR == 48 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 
awk ' NR == 49 {print $0}' /home/jbarbour/final_ERCC2_paper/analysis/figure_1_trinuc_freq/pooled_version/Other_WT_pooled_trinuc_freq.txt >> Script2Getz_CtoT.txt 

cat Script2Getz_TtoG.txt Script2Getz_TtoC.txt Script2Getz_TtoA.txt Script2Getz_CtoA.txt Script2Getz_CtoG.txt Script2Getz_CtoT.txt > Other_WT2Getz.txt

rm Script2Getz_TtoG.txt 
rm Script2Getz_TtoC.txt 
rm Script2Getz_TtoA.txt 
rm Script2Getz_CtoA.txt 
rm Script2Getz_CtoG.txt 
rm Script2Getz_CtoT.txt













