#!/bin/bash

# This script will run on the host from the workload directory
# (e.g. workloads/example-fed) every time the workload is built.
# It is recommended to call into something like a makefile because
# this script may be called multiple times.

echo "building RBDL benchmark"
cd ./overlay/root/rbd-benchmarks
git submodule update 
./setup.sh
