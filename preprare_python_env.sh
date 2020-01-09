#!/bin/bash

module load python/3.6.3
virtualenv -p python3 .venv
source .venv/bin/activate
pip install snakemake
pip install multiqc

