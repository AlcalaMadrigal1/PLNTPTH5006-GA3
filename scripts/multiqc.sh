#!/bin/bash
set -euo pipefail
input_dir="$1"
output_dir="$2"

apptainer exec oras://community.wave.seqera.io/library/multiqc:1.35--562c547b518ebe20 multiqc "$input_dir" -o "$output_dir"