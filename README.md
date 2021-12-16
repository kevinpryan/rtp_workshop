# rtp_workshop
Nextflow workshop completed during residential training programme in December 2021 as part of the PhD Programme in Genomics Data Science.

Scripts written for Nextflow v21.04.1 https://github.com/nextflow-io/nextflow/releases/download/v21.04.1/nextflow

main.nf implements bulk RNA-seq analysis using Kallisto, including: 
 - fastQC and multiQC. 
 - The option to generate a transcriptome and/or an indexed transcriptome or pass one to the script (using `params.transcriptome` or `params.index`). This option is provided through the use of ternary operators and conditionals.
 - RNA quantification using `kallisto quant`.

This also implements continuous implementation to test `main.nf` using a minimal dataset.

To run:

`nextflow pull kevinpryan/rtp_workshop`

`nextflow run -r dev kevinpryan/rtp_workshop`


