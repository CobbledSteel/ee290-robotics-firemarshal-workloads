#!/bin/bash

echo "Building Fedora Linux RBDL FireSim Workload"

RDIR=$(pwd)

# rm ../images/fed-rbd-benchmark*
./marshal clean  $RDIR/fed-rbdl-benchmark.json 
./marshal build $RDIR/fed-rbdl-benchmark.json  
./marshal install  $RDIR/fed-rbdl-benchmark.json 
cd $RDIR
