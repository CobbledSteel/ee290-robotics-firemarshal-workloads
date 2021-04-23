#!/bin/bash

# Terminate in case any of the commands fail
set -e
set -o pipefail

error() {
    echo "${0##*/}: ${1}" >&2
}
die() {
    error "$1"
    exit "${2:--1}"
}

# Assume pwd is chipyard/sim/firesim/sw/firesim-software/THIS_REPO
echo "Building FireSim AFI for Fedora RBDL Workload (Gemmini + BOOM)"
RDIR=$(pwd)
CHIPYARD_HOME=$(dirname $(dirname $(dirname $(dirname $(dirname $RDIR )))))

# copy over Firesim config *ini files to deploy directory
DEPLOY_DIR="$CHIPYARD_HOME/sims/firesim/deploy"
cp ./firesim-configs/config_*.ini $DEPLOY_DIR

# copy over Chipyard config 
CHIPYARD_SRC_DIR="$CHIPYARD_HOME/generators/chipyard/src/main/scala/config"
cp RBDLConfigs.scala $CHIPYARD_SRC_DIR

# copy over firechip config 
FIRECHIP_SRC_DIR="$CHIPYARD_HOME/generators/firechip/src/main/scala/"
cp RBDLTargetConfigs.scala $FIRECHIP_SRC_DIR

cd $RDIR
firesim buildafi
