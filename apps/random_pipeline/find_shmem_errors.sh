#!/bin/bash

echo "Shared memory errors:"
find samples | grep "bench.txt\$" | xargs grep "shmem:" | awk -F: '$NF > 49152 {print $1 $NF}'