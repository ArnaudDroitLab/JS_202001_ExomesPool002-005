#!/bin/bash

snakemake -pj 999 --cluster-config cluster.json --cluster "sbatch -A {cluster.account} -t {cluster.time} --mem {cluster.mem} --cpus-per-task {cluster.cpus-per-task}"
