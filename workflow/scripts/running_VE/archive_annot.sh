#!/usr/bin/env bash
set -o nounset -o pipefail -o errexit

TRAIN_DIR=${1}

ARCHIVES="auxiliary "
ARCHIVES+="cmdline "
ARCHIVES+="log "
ARCHIVES+="observations "
ARCHIVES+="output "
ARCHIVES+="posterior "
ARCHIVES+="triangulation "
ARCHIVES+="viterbi"


for archive in ${ARCHIVES}; do
# 	echo ${archive}
	tar -cvz -C ${TRAIN_DIR}/${archive} . -f ${TRAIN_DIR}/${archive}.tar.gz --remove-files
done