#!/usr/bin/env bash
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16
#SBATCH --mem-per-cpu=4G
#SBATCH -J VE_unsup
#SBATCH --time=0-24:00:00
#SBATCH -p hoffmangroup
set -o nounset -o pipefail -o errexit

# export SEGWAY_CLUSTER=local
# export SEGWAY_NUM_LOCAL_JOBS=30

# source activate segway_VE_testPR

TARGET="/params/params.params"
TRAIN_DIR=${1/"${TARGET}"/}

TRACKLIST=${2}
INCLUDE_COORDS=${3}
GD_FILE=${@:4}

NUM_MIXTURES=3

####################################################################

SEGWAY_RAND_SEED=1498730685 #define seed for reproducibility

segway --cluster-opt="-p hoffmangroup --time=24:00:00" \
    train --tracks-from="${TRACKLIST}" \
    --include-coords="${INCLUDE_COORDS}" \
    --num-labels=10 --num-instances=10 \
    --mixture-components=${NUM_MIXTURES} \
    --resolution=1 \
    --max-train-rounds=40 \
    ${GD_FILE} "${TRAIN_DIR}" \


# sbatch --export=ALL "${VE_DIR}/scripts/identify_sbatch_template.sh"
