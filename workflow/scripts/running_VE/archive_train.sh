#!/usr/bin/env bash
set -o nounset -o pipefail -o errexit

TARGET="/params/params.params"
TRAIN_DIR=${1/"${TARGET}"/}

ARCHIVES="accumulators "
ARCHIVES+="cmdline "
ARCHIVES+="intermediate "
ARCHIVES+="likelihood "
ARCHIVES+="log "
ARCHIVES+="observations "
ARCHIVES+="output "
ARCHIVES+="triangulation"

for archive in ${ARCHIVES}; do
# 	echo ${archive}
	tar -cvz -C ${TRAIN_DIR}/${archive} . -f ${TRAIN_DIR}/${archive}.tar.gz --remove-files
done