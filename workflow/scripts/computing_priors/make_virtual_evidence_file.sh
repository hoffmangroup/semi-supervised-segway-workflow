#!/usr/bin/env bash
set -o nounset -o pipefail -o errexit

# source activate segway_VE_testPR


SLOP_WIDTH=${1}
UNIFORM=${2}
REL_CONF=${3}
GENOME_SIZES=${4}


# ${PRIOR_OUTFILE} is of the format:
# chr1    634007  634029  0.22453171506036634   +

PRIOR_FILE=${4}
# ${PREFIX}.VE_${METHOD}_${UNIFORM}_${REL_CONF}rel_priors.bed

# compute priors, then select positive-stranded only
# expand SLOP_WIDTH around positive-stranded priors; then merge
awk -v CONVFMT=%.17g '$5=="+" {print $1,$2,$3,$4}' OFS="\t" ${PRIOR_FILE} |
bedtools slop -g ${GENOME_SIZES} -b $SLOP_WIDTH | bedtools merge -c 4 -o mean |
awk -v CONVFMT=%.17g '{print $1,$2,$3,"0",$4}' OFS="\t"
