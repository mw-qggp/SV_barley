#!/bin/bash

module load HTSlib/1.7

ref="/gpfs/project/projects/qggp/Morex_barley_reference_sequence_version2_2019/Barley_Morex_V2_pseudomolecules.fasta"

for sample in Ancap2 CM67 Georgie HOR12830 HOR1842 HOR383 HOR7985 HOR8160 HvLib012 HvLib013 IG128104 IG31424 ItuNativ K10693 K10877 Kharsila Kombyne Lakhan Sanalta Sissy SpratArc Unumli_A W23829_8
do
	#create pindel inputfile
	echo "03_removePCRduplicates/${sample}_sorted_rmdup_rd.bam     425     pindel_${sample}" >pindelfiles/input_pindel_${sample}.txt

	#Pindel SV calling
	/gpfs/project/projects/qggp/src/pindel/pindel -T 10 -f ${ref} -i pindelfiles/input_pindel_${sample}.txt -c ALL -o pindel_${sample}

	#Convert pindelfile to vcf
	/gpfs/project/projects/qggp/src/pindel/pindel2vcf -p pindel_${sample}_SI -r ${ref} -R barley_reference -d 2020 -v pindel_${sample}_SI.vcf
	/gpfs/project/projects/qggp/src/pindel/pindel2vcf -p pindel_${sample}_INV -r ${ref} -R barley_reference -d 2020 -v pindel_${sample}_INV.vcf
	/gpfs/project/projects/qggp/src/pindel/pindel2vcf -p pindel_${sample}_TD -r ${ref} -R barley_reference -d 2020 -v pindel_${sample}_TD.vcf
	/gpfs/project/projects/qggp/src/pindel/pindel2vcf -p pindel_${sample}_RP -r ${ref} -R barley_reference -d 2020 -v pindel_${sample}_RP.vcf
	/gpfs/project/projects/qggp/src/pindel/pindel2vcf -p pindel_${sample}_D -r ${ref} -R barley_reference -d 2020 -v pindel_${sample}_D.vcf
done