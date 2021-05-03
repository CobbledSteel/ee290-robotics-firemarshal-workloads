#!/bin/bash

echo "Building Fedora Linux RBDL FireSim Workload"

RDIR=$(pwd)

# rm ../images/fed-rbd-benchmark*
marshal -v clean $RDIR/fed-rbdl-benchmark.json 
marshal -v build $RDIR/fed-rbdl-benchmark.json  
marshal -v install  $RDIR/fed-rbdl-benchmark.json 
cd $RDIR
