REFTSS_FILE=${1}
# REFTSS_FILE="refTSS_v3.3_human_coordinate.hg38.xCAGE.bed"
# THRESHOLD=2.5
# refTSS file is of format
# 1: chr
# 2: start
# 3: end
# 4: .
# 5: TPM
# 6: strand
# chr1  629191  629220  .   0.269275    +

zcat ${REFTSS_FILE} | awk '($6 == "+")'
