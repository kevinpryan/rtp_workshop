#!/usr/bin/env nextflow

Channel.value(file("test-datasets/reference/chrI.gtf"))
    .set{ ch_gtf }

ch_gtf.view()
ch_gtf.map{ it -> it.baseName }.view()
