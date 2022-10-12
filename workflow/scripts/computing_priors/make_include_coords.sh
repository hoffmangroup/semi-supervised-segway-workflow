#!/usr/bin/env bash
set -o nounset -o pipefail -o errexit

BP_EXPAND=${1}
GENOME_SIZES=${2}
LABELS_FILE=${3}

bedtools slop -i ${LABELS_FILE} -g ${GENOME_SIZES} -b ${BP_EXPAND} |
sort -k1,1 -k2,2n |
bedtools merge |
awk '$1=="chr21"' OFS="\t"
