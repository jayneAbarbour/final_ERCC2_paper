
cd /home/jbarbour/final_ERCC2_paper/supplementary_tables/
mkdir counts
cd /home/jbarbour/final_ERCC2_paper/supplementary_tables/counts
awk '{print $0 >> $4}' /home/jbarbour/final_ERCC2_paper/data/mutation_data/All_ERCC2_obs.txt
for f in * ; do name=$(echo $f) && wc -l $f | awk -v name=$name -F' ' '{print name"\t"$1}' - > ${f}_1
awk 'IGNORECASE =1 {if (($8 != "TCA" && $8 != "TCC" && $8 != "TCG" && $8 != "TCT" && $8 != "AGA" && $8 != "CGA" && $8 != "GGA" && $8 != "TGA" )) print $0}' $f | wc -l > ${f}_2
awk 'IGNORECASE =1 {if (($8 == "TCA" || $8 == "TCC" || $8 == "TCG" || $8 == "TCT" || $8 == "AGA" || $8 == "CGA" || $8 == "GGA" || $8 == "TGA" )) print $0}' $f | wc -l > ${f}_3
paste ${f}_1 ${f}_2 ${f}_3 > ${f}_mutation_counts
rm ${f}_1 && ${f}_2 && ${f}_3 
done

cat *mutation_counts |{ printf 'Sample\tAll Mutations\tOther Mutations\tAPOBEC Mutations\n'; cat - ; } > ./../cohort_mutation_counts.txt
rm *

### XPD Mutations Table

cd /home/jbarbour/final_ERCC2_paper/supplementary_tables/

{ printf 'Sample\tCohort\tCancer\tXPD Mutation\n'; } > tmp1

{ printf 'TCGA-DK-A1A7\tTCGA-BLCA\tBladder\tN238S\n'; } > tmp2
{ printf 'TCGA-FD-A3N5\tTCGA-BLCA\tBladder\tN238S\n'; } > tmp3
{ printf 'TCGA-FT-A3EE\tTCGA-BLCA\tBladder\tS44L\n'; } > tmp4
{ printf 'TCGA-BT-A3PJ\tTCGA-BLCA\tBladder\tT484M\n'; } > tmp5

{ printf 'BL08\tSong et al. (PMID: 30755618)\tBladder\tS44L\n'; } > tmp6
{ printf 'BL19\tSong et al. (PMID: 30755618)\tBladder\tS44L\n'; } > tmp7

{ printf 'RJBNC2\tShen et al. (PMID: 29535424)\tNeuroendocrine Bladder\tG665C\n'; } > tmp8

{ printf 'TCGA-G3-A3CK\tLIHC-US\tLiver\tT484A\n'; } > tmp9
{ printf 'DO45293\tLIRI-JP\tLiver\tS74L\n'; } > tmp10
{ printf 'DO48721\tLIRI-JP\tLiver\tT484R\n'; } > tmp11
 
cat tmp1 tmp2 tmp3 tmp4 tmp5 tmp6 tmp7 tmp8 tmp9 tmp10 tmp11 > Supplementary_table_1_tmp.txt

rm tmp*

### TCGA-BLCA

#Phenotype

zcat /home/jbarbour/final_ERCC2_paper/data/TCGA-BLCA.GDC_phenotype.tsv.gz |awk -F'\t' '{print $1"\t"$88"\t"$6"\t"$22}' - |\
awk '{split($1,a,"-"); print a[1]"-"a[2]"-"a[3]"\t"$2"\t"$2"\t"$3"\t"$4 }' - | uniq - | sort - | uniq - > Phenotype.txt

# WXS and ERCC2 Mutation Status

# https://xenabrowser.net/datapages/?dataset=mc3%2FBLCA_mc3.txt&host=https%3A%2F%2Ftcga.xenahubs.net&removeHub=https%3A%2F%2Fxena.treehouse.gi.ucsc.edu%3A443

zcat /home/jbarbour/final_ERCC2_paper/data/mc3_BLCA_mc3.txt.gz | grep 'ERCC2' - | grep 'Missense' -| grep -v 'benign' - > TCGA-BLCA_ERCC2_functional_mutations.txt
grep -v -f /home/jbarbour/final_ERCC2_paper/data/OncoKB_ERCC2_oncogenic.txt TCGA-BLCA_ERCC2_functional_mutations.txt> Functional_ERCC2_not_in_OncoKB.txt
cut -f9 Functional_ERCC2_not_in_OncoKB.txt | uniq -d - > Recurrent_functional_not_in_OncoKB.txt

awk '{split($1,a,"."); print a[2]"\t"}' Recurrent_functional_not_in_OncoKB.txt |\
 cat - /home/jbarbour/final_ERCC2_paper/data/OncoKB_ERCC2_oncogenic.txt > ERCC2_putative_drivers.txt

grep -v p.E606Q Functional_ERCC2_not_in_OncoKB.txt | cut -f9 -| awk '{split($1,a,"."); print a[2]"\t"}' - > ERCC2_functional_but_not_driver.txt

zcat /home/jbarbour/final_ERCC2_paper/data/mc3_BLCA_mc3.txt.gz | grep 'ERCC2' - | grep 'Missense' -| grep -v 'benign' - | grep -f ERCC2_functional_but_not_driver.txt - | cut -f1 - |\
awk '{split($1,a,"-"); print a[1]"-"a[2]"-"a[3]}' - > excluded_sample_list.txt

zcat /home/jbarbour/final_ERCC2_paper/data/mc3_BLCA_mc3.txt.gz | grep 'ERCC2' - | grep 'Missense' -| grep -v 'benign' - | grep -f ERCC2_putative_drivers.txt - | cut -f1,9 - |\
awk '{split($1,a,"-"); print a[1]"-"a[2]"-"a[3]}' - > ERCC2_mutant_sample_list.txt

zcat /home/jbarbour/final_ERCC2_paper/data/mc3_BLCA_mc3.txt.gz | grep 'ERCC2' - | grep 'Missense' -| grep -v 'benign' - | grep -f ERCC2_putative_drivers.txt - | cut -f1,9 - |\
awk '{split($1,a,"-"); print a[1]"-"a[2]"-"a[3]"\t"$2}' - | awk '{split($2,a,"."); print $1"\t"a[2]"\t""X"}' - > ERCC2_drivers.txt
zcat /home/jbarbour/final_ERCC2_paper/data/mc3_BLCA_mc3.txt.gz | grep 'ERCC2' - | grep 'Missense' -| grep -v 'benign' - | grep -f ERCC2_functional_but_not_driver.txt - | cut -f1,9 - |\
awk '{split($1,a,"-"); print a[1]"-"a[2]"-"a[3]"\t""Excluded""\t""X"}' - > Excluded.txt

zcat /home/jbarbour/final_ERCC2_paper/data/mc3_BLCA_mc3.txt.gz | grep -v -f ERCC2_mutant_sample_list.txt - | grep -v -f excluded_sample_list.txt - | cut -f1 - |\
awk '{split($1,a,"-"); print a[1]"-"a[2]"-"a[3] }' - | uniq - | sort - | uniq - |awk '{print $1"\t""WT""\t""X"}' - > WT.txt

tail -n+2 WT.txt | cat ERCC2_drivers.txt Excluded.txt - | { printf 'Sample\tXPD_Status\tWXS\n'; cat - ; } > ERCC2_WXS.txt



# WGS

grep 'BLCA' ~/nas/Jason/Data/mutationDatabase/PCAWG/rmdup/PCAWG_all_snv_removedup.bed | cut -f4 - | uniq - | sort - | uniq - | awk '{print $1"\t""X"}' - | { printf 'Sample\tWGS\n'; cat - ; } > WGS_seq_samples.txt


Rscript /home/jbarbour/final_ERCC2_paper/scripts/make_tables.r

rm ERCC2*
rm *unctional*
rm *xcluded*
rm *tmp*
rm cohort_mutation_counts.txt  
rm Phenotype.txt    
rm WGS_seq_samples.txt
rm WT.txt
rmdir counts





























