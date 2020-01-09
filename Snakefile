configfile: "config.yaml"

include: "rules/pre_processing.rules"
include: "rules/duplicates.rules"
include: "rules/bwa.rules"
include: "rules/bedtools.rules"
include: "rules/stats.rules"

rule all:
    input:        
        expand("QC/multiqc_{r_t}.html", r_t = ["raw_data", "trimmed"]),
        expand("bam/dup/{s}.bam.bai", s = config["samples"]),
        expand("stats/{s}.csv", s = config["samples"])
#        expand("coverages/{s}_coverage.txt", s = config["samples"])
