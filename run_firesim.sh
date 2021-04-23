#!/bin/sh
DEPLOY_DIR="/home/centos/chipyard/sims/firesim/deploy/workloads/fed-rbdl-benchmark"
RDIR=$(pwd)

cp firesim-fed-rbdl.json $DEPLOY_DIR/../
if [ ! -d "$DEPLOY_DIR" ]; then
  # Take action if $DIR doesnt exist. #
  echo "Installing symbolic links in ${DEPLOY_DIR}..."
  mkdir $DEPLOY_DIR
  cd $DEPLOY_DIR
  ln -s ~/chipyard/sims/firesim/sw/firesim-software/images/fed-rbdl-benchmark.img fed-rbdl-benchmark.img
  ln -s ~/chipyard/sims/firesim/sw/firesim-software/images/fed-rbdl-benchmark-bin fed-rbdl-benchmark-bin
  ln -s ~/chipyard/sims/firesim/sw/firesim-software/images/fed-rbdl-benchmark-bin-dwarf fed-rbdl-benchmark-bin-dwarf
  ln -s ~/chipyard/sims/firesim/sw/firesim-software/images/fed-rbdl-benchmark-rbdl.img fed-rbdl-benchmark-rbdl.img
  ln -s ~/chipyard/sims/firesim/sw/firesim-software/images/fed-rbdl-benchmark-rbdl-bin fed-rbdl-benchmark-rbdl-bin
  ln -s ~/chipyard/sims/firesim/sw/firesim-software/images/fed-rbdl-benchmark-rbdl-bin-dwarf fed-rbdl-benchmark-rbdl-bin-dwarf
fi
cd $RDIR
FSIM_CFG_DIR=$RDIR/firesim-configs
echo $FSIM_CFG_DIR

firesim launchrunfarm --runtimeconfigfile $FSIM_CFG_DIR/config_runtime_rbdl.ini --hwdbconfigfile $FSIM_CFG_DIR/config_hwdb.ini
firesim infrasetup --runtimeconfigfile $FSIM_CFG_DIR/config_runtime_rbdl.ini --hwdbconfigfile $FSIM_CFG_DIR/config_hwdb.ini
firesim runworkload --runtimeconfigfile $FSIM_CFG_DIR/config_runtime_rbdl.ini --hwdbconfigfile $FSIM_CFG_DIR/config_hwdb.ini