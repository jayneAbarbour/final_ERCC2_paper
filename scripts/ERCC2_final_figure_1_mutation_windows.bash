
cd /home/jbarbour/final_ERCC2_paper/analysis/figure_1_mutation_windows
rm *
mkdir tmp
cd tmp

awk '{print $1"\t"$2"\t"$3"\t"$4"_obs""\t"$5"\t"$6"\t"$7"\t"$8"\t"$9 }' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_Other_obs_SNVs.txt | awk '{print $0 >> $4}' - 
awk '{print $1"\t"$2"\t"$3"\t"$4"_exp""\t"$5"\t"$6"\t"$7"\t"$8"\t"$9 }' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_Other_exp_SNVs.txt | awk '{print $0 >> $4}' - 

for f in *_exp ;
do intersectBed -a /home/jbarbour/final_ERCC2_paper/annotations/Polak_bins.bed -b $f -c -sorted | cut -f4 - > ${f}.txt ; 
done 

for f in *_obs ;
do intersectBed -a /home/jbarbour/final_ERCC2_paper/annotations/Polak_bins.bed -b $f -c -sorted | cut -f4 - > ${f}.txt ; 
done 

declare -A fileList
for f in *_exp.txt ; do 
    fileList[${#fileList[@]}+1]=$(echo ${f%_exp*});
done

for A in ${fileList[@]} ; do
name=$(echo $A)
paste ${A}_obs.txt ${A}_exp.txt | awk '{print $1/($2/100)}' - | { printf $name'\n'; cat - ; } > ${A}_results.txt ;
done

paste *_results.txt > ./../bladder_mutant_Other_windows.txt
unset fileList
rm *

##

awk '{print $1"\t"$2"\t"$3"\t"$4"_obs""\t"$5"\t"$6"\t"$7"\t"$8"\t"$9 }' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_APOBEC_obs_SNVs.txt | awk '{print $0 >> $4}' - 
awk '{print $1"\t"$2"\t"$3"\t"$4"_exp""\t"$5"\t"$6"\t"$7"\t"$8"\t"$9 }' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_APOBEC_exp_SNVs.txt | awk '{print $0 >> $4}' - 

for f in *_exp ;
do intersectBed -a /home/jbarbour/final_ERCC2_paper/annotations/Polak_bins.bed -b $f -c -sorted | cut -f4 - > ${f}.txt ; 
done 

for f in *_obs ;
do intersectBed -a /home/jbarbour/final_ERCC2_paper/annotations/Polak_bins.bed -b $f -c -sorted | cut -f4 - > ${f}.txt ; 
done 

declare -A fileList
for f in *_exp.txt ; do 
    fileList[${#fileList[@]}+1]=$(echo ${f%_exp*});
done

for A in ${fileList[@]} ; do
name=$(echo $A)
paste ${A}_obs.txt ${A}_exp.txt | awk '{print $1/($2/100)}' - | { printf $name'\n'; cat - ; } > ${A}_results.txt ;
done

paste *_results.txt > ./../bladder_mutant_APOBEC_windows.txt
unset fileList
rm *

##

awk '{print $1"\t"$2"\t"$3"\t"$4"_obs""\t"$5"\t"$6"\t"$7"\t"$8"\t"$9 }' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_all_obs_SNVs.txt | awk '{print $0 >> $4}' - 
awk '{print $1"\t"$2"\t"$3"\t"$4"_exp""\t"$5"\t"$6"\t"$7"\t"$8"\t"$9 }' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_mutant_all_exp_SNVs.txt | awk '{print $0 >> $4}' - 

for f in *_exp ;
do intersectBed -a /home/jbarbour/final_ERCC2_paper/annotations/Polak_bins.bed -b $f -c -sorted | cut -f4 - > ${f}.txt ; 
done 

for f in *_obs ;
do intersectBed -a /home/jbarbour/final_ERCC2_paper/annotations/Polak_bins.bed -b $f -c -sorted | cut -f4 - > ${f}.txt ; 
done 

declare -A fileList
for f in *_exp.txt ; do 
    fileList[${#fileList[@]}+1]=$(echo ${f%_exp*});
done

for A in ${fileList[@]} ; do
name=$(echo $A)
paste ${A}_obs.txt ${A}_exp.txt | awk '{print $1/($2/100)}' - | { printf $name'\n'; cat - ; } > ${A}_results.txt ;
done

paste *_results.txt > ./../bladder_mutant_all_windows.txt
unset fileList
rm *

##

awk '{print $1"\t"$2"\t"$3"\t"$4"_obs""\t"$5"\t"$6"\t"$7"\t"$8"\t"$9 }' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_all_obs_SNVs.txt | awk '{print $0 >> $4}' - 
awk '{print $1"\t"$2"\t"$3"\t"$4"_exp""\t"$5"\t"$6"\t"$7"\t"$8"\t"$9 }' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_all_exp_SNVs.txt | awk '{print $0 >> $4}' - 


for f in *_exp ;
do intersectBed -a /home/jbarbour/final_ERCC2_paper/annotations/Polak_bins.bed -b $f -c -sorted | cut -f4 - > ${f}.txt ; 
done 

for f in *_obs ;
do intersectBed -a /home/jbarbour/final_ERCC2_paper/annotations/Polak_bins.bed -b $f -c -sorted | cut -f4 - > ${f}.txt ; 
done 

declare -A fileList
for f in *_exp.txt ; do 
    fileList[${#fileList[@]}+1]=$(echo ${f%_exp*});
done

for A in ${fileList[@]} ; do
name=$(echo $A)
paste ${A}_obs.txt ${A}_exp.txt | awk '{print $1/($2/100)}' - | { printf $name'\n'; cat - ; } > ${A}_results.txt ;
done

paste *_results.txt > ./../bladder_WT_all_windows.txt
unset fileList
rm *

awk '{print $1"\t"$2"\t"$3"\t"$4"_obs""\t"$5"\t"$6"\t"$7"\t"$8"\t"$9 }' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_APOBEC_obs_SNVs.txt | awk '{print $0 >> $4}' - 
awk '{print $1"\t"$2"\t"$3"\t"$4"_exp""\t"$5"\t"$6"\t"$7"\t"$8"\t"$9 }' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_APOBEC_exp_SNVs.txt | awk '{print $0 >> $4}' - 

for f in *_exp ;
do intersectBed -a /home/jbarbour/final_ERCC2_paper/annotations/Polak_bins.bed -b $f -c -sorted | cut -f4 - > ${f}.txt ; 
done 

for f in *_obs ;
do intersectBed -a /home/jbarbour/final_ERCC2_paper/annotations/Polak_bins.bed -b $f -c -sorted | cut -f4 - > ${f}.txt ; 
done 

declare -A fileList
for f in *_exp.txt ; do 
    fileList[${#fileList[@]}+1]=$(echo ${f%_exp*});
done


for A in ${fileList[@]} ; do
name=$(echo $A)
paste ${A}_obs.txt ${A}_exp.txt | awk '{print $1/($2/100)}' - | { printf $name'\n'; cat - ; } > ${A}_results.txt ;
done

paste *_results.txt > ./../bladder_WT_APOBEC_windows.txt
unset fileList
rm *


awk '{print $1"\t"$2"\t"$3"\t"$4"_obs""\t"$5"\t"$6"\t"$7"\t"$8"\t"$9 }' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_Other_obs_SNVs.txt | awk '{print $0 >> $4}' - 
awk '{print $1"\t"$2"\t"$3"\t"$4"_exp""\t"$5"\t"$6"\t"$7"\t"$8"\t"$9 }' /home/jbarbour/final_ERCC2_paper/data/mutation_data/bladder_WT_Other_exp_SNVs.txt | awk '{print $0 >> $4}' - 


for f in *_exp ;
do intersectBed -a /home/jbarbour/final_ERCC2_paper/annotations/Polak_bins.bed -b $f -c | cut -f4 - > ${f}.txt ; 
done 

for f in *_obs ;
do intersectBed -a /home/jbarbour/final_ERCC2_paper/annotations/Polak_bins.bed -b $f -c | cut -f4 - > ${f}.txt ; 
done 

declare -A fileList
for f in *_exp.txt ; do 
    fileList[${#fileList[@]}+1]=$(echo ${f%_exp*});
done

for A in ${fileList[@]} ; do
name=$(echo $A)
paste ${A}_obs.txt ${A}_exp.txt | awk '{print $1/($2/100)}' - | { printf $name'\n'; cat - ; } > ${A}_results.txt ;
done

paste *_results.txt > ./../bladder_WT_Other_windows.txt
unset fileList
rm *

cd ./../
rmdir tmp


awk '{print $1"-"$2"-"$3}' /home/bioinf/Data/mutationWindows/Polak_bins.bed | { printf 'Bin\n'; cat - ; }|\
paste - bladder_mutant_all_windows.txt bladder_WT_all_windows.txt > bladder_all_windows.txt

awk '{print $1"-"$2"-"$3}' /home/bioinf/Data/mutationWindows/Polak_bins.bed | { printf 'Bin\n'; cat - ; }|\
paste - bladder_mutant_APOBEC_windows.txt bladder_WT_APOBEC_windows.txt > bladder_APOBEC_windows.txt

awk '{print $1"-"$2"-"$3}' /home/bioinf/Data/mutationWindows/Polak_bins.bed | { printf 'Bin\n'; cat - ; }|\
paste - bladder_mutant_Other_windows.txt bladder_WT_Other_windows.txt > bladder_Other_windows.txt

rm *mutant*
rm *WT*

###


















