#!/bin/bash

module load HTSlib/1.7

for sample in del_50_300 del_301_5000 del_5001_50000 del_50001_250000 del_250001_1000000 inv_50_300 inv_301_5000 inv_5001_50000 inv_50001_250000 inv_250001_1000000 dup_50_300 dup_301_5000 dup_5001_50000 dup_50001_250000 dup_250001_1000000 ins_50_300 ins_301_5000 ins_5001_50000 ins_50001_250000 ins_250001_1000000
do
	for cov in 65 25 12.5 6 3 1.5
	do
		echo "03_removePCRduplicates/${sample}_${cov}_sorted_rmdup_rd.bam     425     pindel_${sample}" >input_pindel_${sample}_${cov}.txt

		/gpfs/project/projects/qggp/src/pindel/pindel -T 4 -f genome_chr1H.fa -i input_pindel_${sample}_${cov}.txt -c ALL -o pindel_${sample}_${cov}

		/gpfs/project/projects/qggp/src/pindel/pindel2vcf -p pindel_${sample}_${cov}_TD -r genome_chr1H.fa -d 2020 -R barley_reference -v pindel_${sample}_${cov}.vcf
	done
done
