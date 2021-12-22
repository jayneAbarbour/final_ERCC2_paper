
rm CBS_obs.txt
rm flank_obs.txt
rm CBS_exp.txt
rm flank_exp.txt

# obs
awk -F'\t' '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7"\t"$8}' $3 |awk -F'\t' '{print $0 >> $4}' -

for f in *trinuc.txt ; 
do sample_name=$(echo ${f%_trinuc*})
intersectBed -a $f -b $1 -c |  awk ' { SUM += $9 } END {print SUM}' - | awk -v sample=$sample_name '{print sample"\t"$1}' - >> CBS_obs.txt
intersectBed -a $f -b $2 -c |  awk ' { SUM += $9 } END {print SUM}' - | awk -v sample=$sample_name '{print sample"\t"$1}' ->> flank_obs.txt 
rm $f
done

# exp
awk -F'\t' '{print $1"\t"$2"\t"$3"\t"$4"_trinuc.txt""\t"$5"\t"$6"\t"$7"\t"$8}' $4 |awk -F'\t' '{print $0 >> $4}' -

for f in *trinuc.txt ;
do sample_name=$(echo ${f%_trinuc*})
intersectBed -a $f -b $1 -c |  awk ' { SUM += $9 } END {print SUM}' - | awk -v sample=$sample_name '{print sample"\t"($1/100)}' ->> CBS_exp.txt
intersectBed -a $f -b $2 -c |  awk ' { SUM += $9 } END {print SUM}' - | awk -v sample=$sample_name '{print sample"\t"($1/100)}' ->> flank_exp.txt
rm $f
done

paste CBS_obs.txt CBS_exp.txt > tmp1.txt
paste flank_obs.txt flank_exp.txt > tmp2.txt

paste CBS_obs.txt CBS_exp.txt | awk '$1 == $3 {print $1"\t"$2"\t"$4"\t"($2/$4)}' - | { printf  'Sample\tCBS_obs_mutations\tCBS_exp_mutations\tCBS_obs_exp_ratio\n'; cat -; } > CBS_mutation_density_results.tsv
paste flank_obs.txt flank_exp.txt | awk '$1 == $3 {print $1"\t"$2"\t"$4"\t"($2/$4)}' - | { printf  'Sample\tCBS_obs_mutations\tCBS_exp_mutations\tCBS_obs_exp_ratio\n'; cat -; } > Flank_mutation_density_results.tsv


rm CBS_obs.txt
rm flank_obs.txt
rm CBS_exp.txt
rm flank_exp.txt





