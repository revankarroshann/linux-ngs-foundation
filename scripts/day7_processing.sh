#!/bin/bash

echo "Sequences with length >= 10:"
awk 'NR % 4 == 2 && length($0) >= 10' reads.fastq

echo "Count of sequences with ATCG:"
awk 'NR % 4 == 2' reads.fastq | grep "ATCG" | wc -l

echo "Read IDs containing GGG:"
awk 'NR % 4 == 2 && $0 ~ /GGG/ {print prev} {prev=$0}' reads.fastq
