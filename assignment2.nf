#!/usr/bin/env nextflow

Channel.fromFilePairs( "dummy_files/SRR000*_R{1,2}.fastq.gz", checkIfExists:true ).view()
       .into{ ch_fwd; ch_rev}

// split into forward and rev
forward_reads = ch_fwd.map{ it -> [ it[0], it[1][0] ] }.view()
reverse_reads = ch_rev.map{ it -> [ it[0], it[1][1] ] }

// sanity check with a process
process check_reads{
    
}

