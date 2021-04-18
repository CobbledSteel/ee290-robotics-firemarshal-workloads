#!/bin/bash
set -x

# This script will be run every time you boot the workload. In this case we're
# running a benchmark and recording some timing information into a csv that can
# be extracted later. Also note that we call poweroff at the end, if you would
# prefer to interact with the workload after it's booted, you can leave that off. 

cd /root/rbd-benchmarks/experiments/rbdl
./execute_rbdl_time.sh > /root/rbdl_results.txt
poweroff
