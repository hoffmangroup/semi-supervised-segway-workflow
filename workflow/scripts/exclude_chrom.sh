#!/usr/bin/env bash
set -o nounset -o pipefail -o errexit

INPUT=${1}
CHROM=${2}

awk  -v CHROM=${CHROM} '$1!=CHROM' OFS="\t" ${INPUT}
