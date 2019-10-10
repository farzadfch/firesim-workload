#!/bin/bash

set -euo xtrace

mkdir /sys/fs
mkdir /sys/fs/cgroup
mount -t cgroup xxx /sys/fs/cgroup
mkdir /sys/kernel
mkdir /sys/kernel/debug
mount -t debugfs none /sys/kernel/debug

echo 0x00003000 > /sys/kernel/debug/palloc/palloc_mask

# Partition 0
mkdir /sys/fs/cgroup/part0
echo 0 > /sys/fs/cgroup/part0/cpuset.cpus
echo 0 > /sys/fs/cgroup/part0/cpuset.mems
echo 0 > /sys/fs/cgroup/part0/palloc.bins

# Partition 1
mkdir /sys/fs/cgroup/part1
echo 1 > /sys/fs/cgroup/part1/cpuset.cpus
echo 0 > /sys/fs/cgroup/part1/cpuset.mems
echo 1 > /sys/fs/cgroup/part1/palloc.bins

# Partition 2
mkdir /sys/fs/cgroup/part2
echo 2 > /sys/fs/cgroup/part2/cpuset.cpus
echo 0 > /sys/fs/cgroup/part2/cpuset.mems
echo 2 > /sys/fs/cgroup/part2/palloc.bins

# Partition 3
mkdir /sys/fs/cgroup/part3
echo 3 > /sys/fs/cgroup/part3/cpuset.cpus
echo 0 > /sys/fs/cgroup/part3/cpuset.mems
echo 3 > /sys/fs/cgroup/part3/palloc.bins

echo 1 > /sys/kernel/debug/palloc/use_palloc
