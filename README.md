# SV detection in the barley genome based on short-read sequencing

### workflow_experimental_data:

Snakemake workflow to detect SV using six SV callers based on Illumina short-read sequencing. The following SV callers are included:

1) Manta (version 1.6.0) (https://github.com/Illumina/manta)
2) Delly (version 0.8.1) (https://github.com/dellytools/delly)
3) Pindel (version 0.2.5b9) (https://github.com/genome/pindel)
4) GRIDSS (version 2.8.3) (https://github.com/PapenfussLab/gridss)
5) NGSEP (version 3.3.2) (https://github.com/NGSEP/NGSEPcore)
6) Lumpy (Smoove version 0.2.5) (https://github.com/brentp/smoove)

Before, some preparations were done based on the raw sequencing reads (adapter- and quality-trimming, mapping, removing PCR duplicates) using:
1) Trimmomatic (version 0.39)
2) BWA-MEM (version 0.7.15)
3) PICARD (version 2.22.0)

### workflow_simulations:

Workflow to evaluate the different SV callers based on simulated SV as well as simulated short reads based on the first chromosome of the barley Morex reference sequence v2.

The workflows correspond to the manuscript: Structural variants in the barley gene pool: precision and sensitivity to detect them using short-read sequencing and their association with gene expression and phenotypic variation (2022). Weisweiler, M., C. Arlt, P.-Y. Wu, D. Van Inghelandt, T. Hartwig, B. Stich. Not published yet
