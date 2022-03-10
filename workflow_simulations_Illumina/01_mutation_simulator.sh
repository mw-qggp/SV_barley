#!/bin/bash

#Python/3.6.5 was used

mkdir ms_genomes/
mkdir ms_vcfs/

#inserstions:
#A
python /gpfs/project/projects/qggp/src/Mutation-Simulator/mutation-simulator2.py genome_chr1H.fa args -in 0.000001913997 -inmin 50 -inmax 300
mv genome_chr1H_mutated.fa ms_genomes/genome_chr1H_mutated_ins_50_300.fa
mv genome_chr1H.vcf ms_vcfs/genome_chr1H_ins_50_300.vcf
#B
python /gpfs/project/projects/qggp/src/Mutation-Simulator/mutation-simulator2.py genome_chr1H.fa args -in 0.000001913997 -inmin 301 -inmax 5000
mv genome_chr1H_mutated.fa ms_genomes/genome_chr1H_mutated_ins_301_5000.fa
mv genome_chr1H.vcf ms_vcfs/genome_chr1H_ins_301_5000.vcf
#C
python /gpfs/project/projects/qggp/src/Mutation-Simulator/mutation-simulator2.py genome_chr1H.fa args -in 0.000001913997 -inmin 5001 -inmax 50000
mv genome_chr1H_mutated.fa ms_genomes/genome_chr1H_mutated_ins_5001_50000.fa
mv genome_chr1H.vcf ms_vcfs/genome_chr1H_ins_5001_50000.vcf
#D
python /gpfs/project/projects/qggp/src/Mutation-Simulator/mutation-simulator2.py genome_chr1H.fa args -in 0.0000003827994  -inmin 50001 -inmax 250000
mv genome_chr1H_mutated.fa ms_genomes/genome_chr1H_mutated_ins_50001_250000.fa
mv genome_chr1H.vcf ms_vcfs/genome_chr1H_ins_50001_250000.vcf
#E
python /gpfs/project/projects/qggp/src/Mutation-Simulator/mutation-simulator2.py genome_chr1H.fa args -in 0.0000001913997 -inmin 250001 -inmax 1000000
mv genome_chr1H_mutated.fa ms_genomes/genome_chr1H_mutated_ins_250001_1000000.fa
mv genome_chr1H.vcf ms_vcfs/genome_chr1H_ins_250001_1000000.vcf

#deletions:
#A
python /gpfs/project/projects/qggp/src/Mutation-Simulator/mutation-simulator2.py genome_chr1H.fa args -de 0.000001913997 -demin 50 -demax 300
mv genome_chr1H_mutated.fa ms_genomes/genome_chr1H_mutated_del_50_300.fa
mv genome_chr1H.vcf ms_vcfs/genome_chr1H_del_50_300.vcf
#B
python /gpfs/project/projects/qggp/src/Mutation-Simulator/mutation-simulator2.py genome_chr1H.fa args -de 0.000001913997 -demin 301 -demax 5000
mv genome_chr1H_mutated.fa ms_genomes/genome_chr1H_mutated_del_301_5000.fa
mv genome_chr1H.vcf ms_vcfs/genome_chr1H_del_301_5000.vcf
#C
python /gpfs/project/projects/qggp/src/Mutation-Simulator/mutation-simulator2.py genome_chr1H.fa args -de 0.000001913997 -demin 5001 -demax 50000
mv genome_chr1H_mutated.fa ms_genomes/genome_chr1H_mutated_del_5001_50000.fa
mv genome_chr1H.vcf ms_vcfs/genome_chr1H_del_5001_50000.vcf
#D
python /gpfs/project/projects/qggp/src/Mutation-Simulator/mutation-simulator2.py genome_chr1H.fa args -de 0.0000003827994 -demin 50001 -demax 250000
mv genome_chr1H_mutated.fa ms_genomes/genome_chr1H_mutated_del_50001_250000.fa
mv genome_chr1H.vcf ms_vcfs/genome_chr1H_del_50001_250000.vcf
#E
python /gpfs/project/projects/qggp/src/Mutation-Simulator/mutation-simulator2.py genome_chr1H.fa args -de 0.0000001913997 -demin 250001 -demax 1000000
mv genome_chr1H_mutated.fa ms_genomes/genome_chr1H_mutated_del_250001_1000000.fa
mv genome_chr1H.vcf ms_vcfs/genome_chr1H_del_250001_1000000.vcf

#inversions:
#A
python /gpfs/project/projects/qggp/src/Mutation-Simulator/mutation-simulator2.py genome_chr1H.fa args -iv 0.0001913997 -ivmin 50 -ivmax 300
mv genome_chr1H_mutated.fa ms_genomes/genome_chr1H_mutated_inv_50_300.fa
mv genome_chr1H.vcf ms_vcfs/genome_chr1H_inv_50_300.vcf
#B
python /gpfs/project/projects/qggp/src/Mutation-Simulator/mutation-simulator2.py genome_chr1H.fa args -iv 0.0001913997 -ivmin 301 -ivmax 5000
mv genome_chr1H_mutated.fa ms_genomes/genome_chr1H_mutated_inv_301_5000.fa
mv genome_chr1H.vcf ms_vcfs/genome_chr1H_inv_301_5000.vcf
#C
python /gpfs/project/projects/qggp/src/Mutation-Simulator/mutation-simulator2.py genome_chr1H.fa args -iv 0.0001913997 -ivmin 5001 -ivmax 50000
mv genome_chr1H_mutated.fa ms_genomes/genome_chr1H_mutated_inv_5001_50000.fa
mv genome_chr1H.vcf ms_vcfs/genome_chr1H_inv_5001_50000.vcf
#D
python /gpfs/project/projects/qggp/src/Mutation-Simulator/mutation-simulator2.py genome_chr1H.fa args -iv 0.0001913997 -ivmin 50001 -ivmax 250000
mv genome_chr1H_mutated.fa ms_genomes/genome_chr1H_mutated_inv_50001_250000.fa
mv genome_chr1H.vcf ms_vcfs/genome_chr1H_inv_50001_250000.vcf
#E
python /gpfs/project/projects/qggp/src/Mutation-Simulator/mutation-simulator2.py genome_chr1H.fa args -iv 0.00001913997 -ivmin 250001 -ivmax 1000000
mv genome_chr1H_mutated.fa ms_genomes/genome_chr1H_mutated_inv_250001_1000000.fa
mv genome_chr1H.vcf ms_vcfs/genome_chr1H_inv_250001_1000000.vcf


#duplications:
#A
python /gpfs/project/projects/qggp/src/Mutation-Simulator/mutation-simulator2.py genome_chr1H.fa args -du 0.000001913997 -dumin 50 -dumax 300
mv genome_chr1H_mutated.fa ms_genomes/genome_chr1H_mutated_dup_50_300.fa
mv genome_chr1H.vcf ms_vcfs/genome_chr1H_dup_50_300.vcf
#B
python /gpfs/project/projects/qggp/src/Mutation-Simulator/mutation-simulator2.py genome_chr1H.fa args -du 0.000001913997 -dumin 301 -dumax 5000
mv genome_chr1H_mutated.fa ms_genomes/genome_chr1H_mutated_dup_301_5000.fa
mv genome_chr1H.vcf ms_vcfs/genome_chr1H_dup_301_5000.vcf
#C
python /gpfs/project/projects/qggp/src/Mutation-Simulator/mutation-simulator2.py genome_chr1H.fa args -du 0.000001913997 -dumin 5001 -dumax 50000
mv genome_chr1H_mutated.fa ms_genomes/genome_chr1H_mutated_dup_5001_50000.fa
mv genome_chr1H.vcf ms_vcfs/genome_chr1H_dup_5001_50000.vcf
#D
python /gpfs/project/projects/qggp/src/Mutation-Simulator/mutation-simulator2.py genome_chr1H.fa args -du 0.0000003827994 -dumin 50001 -dumax 250000
mv genome_chr1H_mutated.fa ms_genomes/genome_chr1H_mutated_dup_50001_250000.fa
mv genome_chr1H.vcf ms_vcfs/genome_chr1H_dup_50001_250000.vcf
#E
python /gpfs/project/projects/qggp/src/Mutation-Simulator/mutation-simulator2.py genome_chr1H.fa args -du 0.0000001913997 -dumin 250001 -dumax 1000000
mv genome_chr1H_mutated.fa ms_genomes/genome_chr1H_mutated_dup_250001_1000000.fa
mv genome_chr1H.vcf ms_vcfs/genome_chr1H_dup_250001_1000000.vcf

#translocations
#ABCDE
python /gpfs/project/projects/qggp/src/Mutation-Simulator/mutation-simulator2.py genome_chr1H.fa it 0.000001913997 
mv genome_chr1H_mutated.fa ms_genomes/genome_chr1H_mutated_trans_it.fa
mv genome_chr1H.vcf ms_vcfs/genome_chr1H_trans_it.vcf
