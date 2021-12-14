#!/usr/bin/env nextflow

Channel.fromFilePairs( "dummy_files/SRR000*_R{1,2}.fastq.gz" )
    .map{ it -> [ it[1][0], it[1][1] ] }
    .flatten()
    .view()
