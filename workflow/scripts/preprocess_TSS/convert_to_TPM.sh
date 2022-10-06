#!/usr/bin/env bash
set -o nounset -o pipefail -o errexit

# Convert tag counts of refTSS (xCAGE) into TPM.

REPLICATE=$1 #"refTSS_v3.1_human_coordinate.hg38.xCAGE"
# replicates have the following format:
# chr1  29431   29432   chr1:29431..29432,+ 1   +
# 1: chr
# 2: start
# 3: end
# 4: name
# 5: tag count
# 6: strand

### CONVERT TO TPM ###
# compute total tag count
TAG_SUM=`zcat ${REPLICATE} | awk '{TAG_SUM+=$5} END {print TAG_SUM}'`

# divide tag count by TAG_SUM and multiply by 10**6
# threshold at TPM to obtain only CAGE peaks which are highly expressed:
# then convert to standard BED format:
# 1: chr, 2: start, 3: end, 4: label, 5: TPM, 6: strand
zcat ${REPLICATE} | awk "{\$5 = \$5*1000000/$TAG_SUM; print}" OFS="\t" 
