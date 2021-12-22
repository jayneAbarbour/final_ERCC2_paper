
mkdir Fwd_region
mkdir Fwd_upstream
mkdir Fwd_downstream
mkdir Rev_region
mkdir Rev_upstream
mkdir Rev_downstream


cd Fwd_region

awk '$4 ~ "+" {print $0}' $1 > Fwd.bed


bedtools makewindows -b Fwd.bed -n $6 -i winnum | sort -n -k4 -  | awk -F'\t' '{print $1"\t"$2"\t"$3 >> $4}' - 

bedtools makewindows -b Fwd.bed -n $6 -i winnum > check.txt

for ((i=1;i<=$6;i++)); do 


Line=$(wc -l $i | awk '{print $1}' -) 

for ((j=1;j<=Line;j++)) ; do 

awk -v line=$j 'NR == line {print $1"\t"$2"\t"$3"\t"line}' $i >> ${i}_fwd_region


done

done 

for f in *_fwd_region ; do bigWigAverageOverBed $2 $f ${f}_fwd_results.tab ;

name=$(echo $f)

cut -f6 ${f}_fwd_results.tab | { printf $f'\n'; cat -; } > ${f}_fwd_column.txt

done


#
cd ../Rev_region

awk '$4 ~ "-" {print $0}' $1 > Rev.bed

bedtools makewindows -b Rev.bed -n $6 -i winnum | sort -n -k4 -  | awk -F'\t' '{print $1"\t"$2"\t"$3 >> $4}' - 

bedtools makewindows -b Rev.bed -n $6 -i winnum > check.txt

for ((i=1;i<=$6;i++)); do 


Line=$(wc -l $i | awk '{print $1}' -) 

for ((j=1;j<=Line;j++)) ; do 

awk -v line=$j 'NR == line {print $1"\t"$2"\t"$3"\t"line}' $i >> ${i}_rev_region


done

done 

for f in *_rev_region ; do bigWigAverageOverBed $2 $f ${f}_rev_results.tab ;


name=$(echo $f)

cut -f6 ${f}_rev_results.tab | { printf $f'\n'; cat -; } > ${f}_rev_column.txt

done


cd ../Fwd_downstream

flank=$(echo $4)

slopBed -i ./../Fwd_region/Fwd.bed -l 0 -r $4 -g ~/Data/hg19_reference/hg19.chrom.sizes  |  paste - $1 > check_me.txt
slopBed -i ./../Fwd_region/Fwd.bed -l 0 -r $4 -g ~/Data/hg19_reference/hg19.chrom.sizes  |   awk -v flank=$flank '{print $1"\t"($3-flank)"\t"$3}' - > checkme1.txt
slopBed -i ./../Fwd_region/Fwd.bed -l 0 -r $4 -g ~/Data/hg19_reference/hg19.chrom.sizes  |   awk -v flank=$flank '{print $1"\t"($3-flank)"\t"$3}' - |\
 bedtools makewindows -b - -n $5 -i winnum | sort -n -k4 - | awk -F'\t' '{print $1"\t"$2"\t"$3 >> $4}' - 

slopBed -i ./../Fwd_region/Fwd.bed -l 0 -r $4 -g ~/Data/hg19_reference/hg19.chrom.sizes  |   awk -v flank=$flank '{print $1"\t"($3-flank)"\t"$3}' - |\
 bedtools makewindows -b - -n $5 -i winnum > checkme2.txt


for ((i=1;i<=$5;i++)); do 


Line=$(wc -l $i | awk '{print $1}' -) 

for ((j=1;j<=Line;j++)) ; do 

awk -v line=$j 'NR == line {print $1"\t"$2"\t"$3"\t"line}' $i >> ${i}_fwd_down


done

done 

for f in *fwd_down ; do bigWigAverageOverBed $2 $f ${f}_results.tab ;
cut -f6 ${f}_results.tab | { printf $f'\n'; cat -; } > ${f}_column.txt

done


#

cd ../Fwd_upstream

flank=$(echo $3)
slopBed -i ./../Fwd_region/Fwd.bed -l $3 -r 0 -g ~/Data/hg19_reference/hg19.chrom.sizes | paste - $1 > check_me.txt
slopBed -i ./../Fwd_region/Fwd.bed -l $3 -r 0 -g ~/Data/hg19_reference/hg19.chrom.sizes |  awk -v flank=$flank '{print $1"\t"$2"\t"($2+flank)}' - > checkme1.txt
slopBed -i ./../Fwd_region/Fwd.bed -l $3 -r 0 -g ~/Data/hg19_reference/hg19.chrom.sizes |  awk -v flank=$flank '{print $1"\t"$2"\t"($2+flank)}' -  |\
bedtools makewindows -b - -n $5 -i winnum | sort -n -k4 - | awk -F'\t' '{print $1"\t"$2"\t"$3 >> $4}' - 


slopBed -i ./../Fwd_region/Fwd.bed -l $3 -r 0 -g ~/Data/hg19_reference/hg19.chrom.sizes |  awk -v flank=$flank '{print $1"\t"$2"\t"($2+flank)}' -  |\
bedtools makewindows -b - -n $5 -i winnum > checkme2.txt


for ((i=1;i<=$5;i++)); do 


Line=$(wc -l $i | awk '{print $1}' -) 

for ((j=1;j<=Line;j++)) ; do 

awk -v line=$j 'NR == line {print $1"\t"$2"\t"$3"\t"line}' $i >> ${i}_fwd_up


done

done 

for f in *fwd_up; do bigWigAverageOverBed $2 $f ${f}_results.tab ;
cut -f6 ${f}_results.tab | { printf $f'\n'; cat -; } > ${f}_column.txt

done


#

cd ./../Rev_downstream

flank=$(echo $3)

slopBed -i ./../Rev_region/Rev.bed -l $3 -r 0 -g ~/Data/hg19_reference/hg19.chrom.sizes  | paste - $1 > check_me.txt

slopBed -i ./../Rev_region/Rev.bed -l $3 -r 0 -g ~/Data/hg19_reference/hg19.chrom.sizes  |  awk -v flank=$flank '{print $1"\t"$3"\t"($3+flank)}' - > checkme1.txt
slopBed -i ./../Rev_region/Rev.bed -l $3 -r 0 -g ~/Data/hg19_reference/hg19.chrom.sizes  |  awk -v flank=$flank '{print $1"\t"$3"\t"($3+flank)}' - |\
bedtools makewindows -b - -n $5 -i winnum | sort -n -k4 - | awk -F'\t' '{print $1"\t"$2"\t"$3 >> $4}' - 

slopBed -i ./../Rev_region/Rev.bed -l $3 -r 0 -g ~/Data/hg19_reference/hg19.chrom.sizes  |  awk -v flank=$flank '{print $1"\t"$3"\t"($3+flank)}' - |\
bedtools makewindows -b - -n $5 -i winnum > checkme2.txt

for ((i=1;i<=$5;i++)); do 


Line=$(wc -l $i | awk '{print $1}' -) 

for ((j=1;j<=Line;j++)) ; do 

awk -v line=$j 'NR == line {print $1"\t"$2"\t"$3"\t"line}' $i >> ${i}_rev_down


done

done 

for f in *rev_down ; do bigWigAverageOverBed $2 $f ${f}_results.tab ;
cut -f6 ${f}_results.tab | { printf $f'\n'; cat -; } > ${f}_column.txt

done


#
cd ./../Rev_upstream

flank=$(echo $4)
slopBed -i ./../Rev_region/Rev.bed -l 0 -r $4 -g ~/Data/hg19_reference/hg19.chrom.sizes | paste - $1 > checkme.txt
slopBed -i ./../Rev_region/Rev.bed -l 0 -r $4 -g ~/Data/hg19_reference/hg19.chrom.sizes |  awk -v flank=$flank '{print $1"\t"($2-flank)"\t"$2}' - > checkme1.txt
slopBed -i ./../Rev_region/Rev.bed -l 0 -r $4 -g ~/Data/hg19_reference/hg19.chrom.sizes |  awk -v flank=$flank '{print $1"\t"($2-flank)"\t"$2}' -  |\
bedtools makewindows -b - -n $5 -i winnum | sort -n -k4 - | awk -F'\t' '{print $1"\t"$2"\t"$3 >> $4}' - 

slopBed -i ./../Rev_region/Rev.bed -l 0 -r $4 -g ~/Data/hg19_reference/hg19.chrom.sizes |  awk -v flank=$flank '{print $1"\t"($2-flank)"\t"$2}' -  |\
bedtools makewindows -b - -n $5 -i winnum > checkme2.txt

for ((i=1;i<=$5;i++)); do 


Line=$(wc -l $i | awk '{print $1}' -) 

for ((j=1;j<=Line;j++)) ; do 

awk -v line=$j 'NR == line {print $1"\t"$2"\t"$3"\t"line}' $i >> ${i}_rev_up


done

done 

for f in *_rev_up; do bigWigAverageOverBed $2 $f ${f}_results.tab ;
cut -f6 ${f}_results.tab | { printf $f'\n'; cat -; } > ${f}_column.txt

done



cd ..

paste $(ls -v ./Fwd_region/*column.txt) > fwd_region.txt
paste $(ls -v ./Fwd_downstream/*column.txt) > fwd_downstream.txt
paste $(ls -v ./Fwd_upstream/*column.txt) > fwd_upstream.txt
paste $(ls -vr ./Rev_region/*column.txt) > rev_region.txt
paste $(ls -vr ./Rev_downstream/*column.txt) > rev_downstream.txt
paste $(ls -vr ./Rev_upstream/*column.txt) > rev_upstream.txt





paste fwd_upstream.txt fwd_region.txt fwd_downstream.txt  > $7_profile_fwd.txt 
paste rev_downstream.txt rev_region.txt rev_upstream.txt > $7_profile_rev.txt

tail -n+2 $7_profile_rev.txt | cat $7_profile_fwd.txt - > $7_profile_plot.tsv


rm ./*/*

rmdir ./*

rm *txt


