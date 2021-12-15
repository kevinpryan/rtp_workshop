#!/usr/bin/env nextflow

Channel.fromFilePairs( "dummy_files/SRR000*_R{1,2}.fastq.gz", checkIfExists:true ) // .view()
       .into{ ch_fwd; ch_rev}

// split into forward and rev
forward_reads = ch_fwd.map{ it -> [ it[0], it[1][0] ] }
reverse_reads = ch_rev.map{ it -> [ it[0], it[1][1] ] }
all_reads = forward_reads.join(reverse_reads)
/*
reverse_reads.view()

*/
// sanity check with a process
process check_reads{
    echo true

    input:
    /*
    tuple val(base), file(forward)  from forward_reads
    tuple val(base2), file(reverse) from reverse_reads
    */
    tuple val(base), file(reads) from all_reads
    
    script:
    """
    echo "Reads: $reads"
    """    
}
// echo "forward reads: $forward, reverse reads: $reverse"



