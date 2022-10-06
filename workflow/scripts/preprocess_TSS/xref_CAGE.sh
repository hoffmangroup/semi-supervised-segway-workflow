#!/usr/bin/env bash
set -o nounset -o pipefail -o errexit

# cross-reference refTSS with K562 CAGE replicates to form celltype-specific set.

# refTSS .bed has format:
#  1. chromosome
#  2. start of TSS region
#  3. end of TSS region
#  4. name (ID) of the TSS (refTSS ID)
#  5. score (=1)
#  6. strand of the TSS
#  7. start of the center position in the TSS region
#  8. end of the center position in the TSS region
#  9. item RGB (255,255,0)
refTSS=${1}
REPLICATES="${@:2}"

STRAND_COL=6
SCORE_COL=15

bedtools intersect -a ${refTSS} -b ${REPLICATES} -s -wa -wb |
bedtools merge -s -c ${STRAND_COL},${SCORE_COL} -o distinct,sum |
awk -v CONVFMT=%.17g '{print $1,$2,$3,".",$5/4.0,$4}' OFS="\t"
