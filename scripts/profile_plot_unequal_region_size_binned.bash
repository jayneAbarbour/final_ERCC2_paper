
awk '$4 ~ "+" {print $0}' $1 > Fwd.bed

bedtools makewindows -b Fwd.bed -n $2 -i winnum | sort -n -k4 - > Fwd_region.txt
 
slopBed -i Fwd.bed -l 0 -r $4 -g ~/Data/hg19_reference/hg19.chrom.sizes  | bedtools subtract -a - -b Fwd.bed |\
bedtools makewindows -b - -n $5 -i winnum | sort -n -k4 - > Fwd_downstream.bed

slopBed -i Fwd.bed -l $3 -r 0 -g ~/Data/hg19_reference/hg19.chrom.sizes | bedtools subtract -a - -b Fwd.bed |\
bedtools makewindows -b - -n $5 -i winnum | sort -n -k4 - > Fwd_upstream.bed

awk '$4 ~ "-" {print $0}' $1 > Rev.bed

bedtools makewindows -b Rev.bed -n $2 -i winnum | sort -n -k4 - > Rev_region.txt
 
slopBed -i Rev.bed -l $3 -r 0 -g ~/Data/hg19_reference/hg19.chrom.sizes  | bedtools subtract -a - -b Rev.bed |\
bedtools makewindows -b - -n $5 -i winnum | sort -n -k4 - > Rev_downstream.bed

slopBed -i Rev.bed -l 0 -r $4 -g ~/Data/hg19_reference/hg19.chrom.sizes | bedtools subtract -a - -b Rev.bed |\
bedtools makewindows -b - -n $5 -i winnum | sort -n -k4 - > Rev_upstream.bed

rm Fwd.bed
rm Rev.bed 

last=$(echo $2)
last2=$(echo $5)

## Fwd

awk -F'\t' '{print $0 >> $4}' Fwd_region.txt


for ((i=1;i<=$last;i++)); do 
sort -k 1,1 -k2,2n $i > ${i}.sorted
name=$(echo $i) 
awk '{print $3-$2}' ${i}.sorted | awk ' { SUM += $1 } END {print SUM}' - > ${i}_base_count.txt ;
intersectBed -a ${i}.sorted -b $6 -c -sorted | awk ' { SUM += $5 } END {print SUM}' -> ${i}_obs_mutation_count.txt ;
intersectBed -a ${i}.sorted -b $7 -c -sorted | awk ' { SUM += $5 } END {print SUM}' -> ${i}_exp_mutation_count.txt ;
paste  ${i}_obs_mutation_count.txt ${i}_exp_mutation_count.txt ${i}_base_count.txt | awk -v name=$name '{print name"\t"$1"\t"$2"\t"$3}' - >> fwd_region_profile.txt
rm ${i}_obs_mutation_count.txt
rm ${i}_exp_mutation_count.txt
rm ${i}_base_count.txt
rm $i
rm ${i}.sorted 
done



awk -F'\t' '{print $0 >> $4}' Fwd_upstream.bed


for ((i=1;i<=$last2;i++)); do 
sort -k 1,1 -k2,2n $i > ${i}.sorted
name=$(echo $i) 
awk '{print $3-$2}' ${i}.sorted | awk ' { SUM += $1 } END {print SUM}' - > ${i}_base_count.txt ;
intersectBed -a ${i}.sorted -b $6 -c -sorted | awk ' { SUM += $5 } END {print SUM}' -> ${i}_obs_mutation_count.txt ;
intersectBed -a ${i}.sorted -b $7 -c -sorted | awk ' { SUM += $5 } END {print SUM}' -> ${i}_exp_mutation_count.txt ;
paste  ${i}_obs_mutation_count.txt ${i}_exp_mutation_count.txt ${i}_base_count.txt | awk -v name=$name '{print name"\t"$1"\t"$2"\t"$3}' - >> fwd_flank_upstream.txt
rm ${i}_obs_mutation_count.txt
rm ${i}_exp_mutation_count.txt
rm ${i}_base_count.txt
rm $i 
rm ${i}.sorted
done
 
awk -F'\t' '{print $0 >> $4}' Fwd_downstream.bed

for ((i=1;i<=$last2;i++)); do 
sort -k 1,1 -k2,2n $i > ${i}.sorted
name=$(echo $i) 
awk '{print $3-$2}' ${i}.sorted | awk ' { SUM += $1 } END {print SUM}' - > ${i}_base_count.txt ;
intersectBed -a ${i}.sorted -b $6 -c -sorted | awk ' { SUM += $5 } END {print SUM}' -> ${i}_obs_mutation_count.txt ;
intersectBed -a ${i}.sorted -b $7 -c -sorted | awk ' { SUM += $5 } END {print SUM}' -> ${i}_exp_mutation_count.txt ;
paste  ${i}_obs_mutation_count.txt ${i}_exp_mutation_count.txt ${i}_base_count.txt | awk -v name=$name '{print name"\t"$1"\t"$2"\t"$3}' - >> fwd_flank_downstream.txt
rm ${i}_obs_mutation_count.txt
rm ${i}_exp_mutation_count.txt
rm ${i}_base_count.txt
rm $i 
rm ${i}.sorted
done
 
# Rev

awk -F'\t' '{print $0 >> $4}' Rev_region.txt

for ((i=1;i<=$last;i++)); do 
sort -k 1,1 -k2,2n $i > ${i}.sorted
name=$(echo $i) 
awk '{print $3-$2}' ${i}.sorted | awk ' { SUM += $1 } END {print SUM}' - > ${i}_base_count.txt ;
intersectBed -a ${i}.sorted -b $6 -c -sorted | awk ' { SUM += $5 } END {print SUM}' -> ${i}_obs_mutation_count.txt ;
intersectBed -a ${i}.sorted -b $7 -c -sorted | awk ' { SUM += $5 } END {print SUM}' -> ${i}_exp_mutation_count.txt ;
paste  ${i}_obs_mutation_count.txt ${i}_exp_mutation_count.txt ${i}_base_count.txt | awk -v name=$name '{print name"\t"$1"\t"$2"\t"$3}' - >> rev_region_profile.txt
rm ${i}_obs_mutation_count.txt
rm ${i}_exp_mutation_count.txt
rm ${i}_base_count.txt
rm $i
rm ${i}.sorted 
done

last2=$(echo $5)

awk -F'\t' '{print $0 >> $4}' Rev_upstream.bed

for ((i=1;i<=$last2;i++)); do 
sort -k 1,1 -k2,2n $i > ${i}.sorted
name=$(echo $i) 
awk '{print $3-$2}' ${i}.sorted | awk ' { SUM += $1 } END {print SUM}' - > ${i}_base_count.txt ;
intersectBed -a ${i}.sorted -b $6 -c -sorted | awk ' { SUM += $5 } END {print SUM}' -> ${i}_obs_mutation_count.txt ;
intersectBed -a ${i}.sorted -b $7 -c -sorted | awk ' { SUM += $5 } END {print SUM}' -> ${i}_exp_mutation_count.txt ;
paste  ${i}_obs_mutation_count.txt ${i}_exp_mutation_count.txt ${i}_base_count.txt | awk -v name=$name '{print name"\t"$1"\t"$2"\t"$3}' - >> rev_flank_upstream.txt
rm ${i}_obs_mutation_count.txt
rm ${i}_exp_mutation_count.txt
rm ${i}_base_count.txt
rm $i 
rm ${i}.sorted
done

awk -F'\t' '{print $0 >> $4}' Rev_downstream.bed

for ((i=1;i<=$last2;i++)); do 
sort -k 1,1 -k2,2n $i > ${i}.sorted
name=$(echo $i) 
awk '{print $3-$2}' ${i}.sorted | awk ' { SUM += $1 } END {print SUM}' - > ${i}_base_count.txt ;
intersectBed -a ${i}.sorted -b $6 -c -sorted | awk ' { SUM += $5 } END {print SUM}' -> ${i}_obs_mutation_count.txt ;
intersectBed -a ${i}.sorted -b $7 -c -sorted | awk ' { SUM += $5 } END {print SUM}' -> ${i}_exp_mutation_count.txt ;
paste  ${i}_obs_mutation_count.txt ${i}_exp_mutation_count.txt ${i}_base_count.txt | awk -v name=$name '{print name"\t"$1"\t"$2"\t"$3}' - >> rev_flank_downstream.txt
rm ${i}_obs_mutation_count.txt
rm ${i}_exp_mutation_count.txt
rm ${i}_base_count.txt
rm $i
rm ${i}.sorted 
done
 
rm *bed
rm *_region.txt


# top = start of region, bottom = end of region
sort -nk1 fwd_region_profile.txt > tmp1.txt
sort -rnk1 rev_region_profile.txt > tmp2.txt

paste tmp1.txt tmp2.txt | awk -F'\t' '{print ($2+$6)"\t"($3+$7)"\t"($4+$8)}' - |\
awk -F'\t' '{print $1"\t"$2"\t"$3"\t"($1/($2/100))}' - |\
{ printf 'obs_mutation_count\texp_mutation_count\tregion_size\tobs_exp_ratio\n'; cat -; } > mutation_profile_region_$8.tsv

rm tmp*

# top = close to end of region, bottom = far from end of region
sort -nk1 fwd_flank_downstream.txt > tmp1.txt
sort -rnk1 rev_flank_downstream.txt > tmp2.txt

paste tmp1.txt tmp2.txt | awk -F'\t' '{print ($2+$6)"\t"($3+$7)"\t"($4+$8)}' - |\
awk -F'\t' '{print $1"\t"$2"\t"$3"\t"($1/($2/100))}' - |\
{ printf 'obs_mutation_count\texp_mutation_count\tregion_size\tobs_exp_ratio\n'; cat -; } > mutation_profile_downstream_$8.tsv

rm tmp*

# top = far from start of region, bottom = close to start of region
sort -nk1 fwd_flank_upstream.txt > tmp1.txt
sort -rnk1 rev_flank_upstream.txt > tmp2.txt

paste tmp1.txt tmp2.txt | awk -F'\t' '{print ($2+$6)"\t"($3+$7)"\t"($4+$8)}' - |\
awk -F'\t' '{print $1"\t"$2"\t"$3"\t"($1/($2/100))}' - |\
{ printf 'obs_mutation_count\texp_mutation_count\tregion_size\tobs_exp_ratio\n'; cat -; } > mutation_profile_upstream_$8.tsv

rm tmp*

tail -n+2 mutation_profile_upstream_$8.tsv | cut -f4 - | awk -F'\t' '{print "upstream""\t"$1}' - > obs_exp_profile_$8.tsv
tail -n+2 mutation_profile_region_$8.tsv | cut -f4 - | awk -F'\t' '{print "region""\t"$1}' -  >> obs_exp_profile_$8.tsv
tail -n+2 mutation_profile_downstream_$8.tsv | cut -f4 - | awk -F'\t' '{print "downstream""\t"$1}' - >> obs_exp_profile_$8.tsv

rm *.txt
