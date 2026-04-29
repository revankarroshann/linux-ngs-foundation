#!/bin/bash

echo "Total reads:"
wc -l reads.fastq | awk '{print $1/4}'

echo "Sequences containing ATCG:"
awk 'NR % 4 == 2' reads.fastq | grep "ATCG"

echo "Count of sequences containing ATCG:"
awk 'NR % 4 == 2' reads.fastq | grep "ATCG" | wc -l

echo "Read IDs containing ATCG:"
awk 'NR % 4 == 2 && $0 ~ /ATCG/ {print prev} {prev=$0}' reads.fastq


