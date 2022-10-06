#!/usr/bin/env bash
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16
#SBATCH --mem-per-cpu=4G
#SBATCH -J unsup_ann
#SBATCH -p hoffmangroup
#SBATCH --time=0-24:00:00

set -o nounset -o pipefail -o errexit

TRAIN_TARGET="/params/params.params"
TRAIN_DIR=${1/"${TRAIN_TARGET}"/}

ANNOT_TARGET="/segway.bed.gz"
ANNOT_DIR=${2/"${ANNOT_TARGET}"/}

GD_FILE=${@:3}

export SEGWAY_RAND_SEED=1498730685 #define seed for reproducibility


segway \
    --cluster-opt="-p hoffmangroup" \
    annotate ${GD_FILE} "${TRAIN_DIR}" "${ANNOT_DIR}"

