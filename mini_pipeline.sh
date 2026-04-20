#!/bin/bash
echo "Step 1: Total Reads" 
wc -l reads.fastq | awk '{Print $1/4}'

echo "Step 2: Extract Sequence"
awk 'NR % 4 == 2' reads.fastq > sequences.txt 

echo "Step 3: Filter sequence containing ATCG"
grep "ATCG" reads.fastq > filtered_sequencing.txt 

echo "Step 4: Count filtered sequences" 
wc -l filtered_sequencing.txt

echo "Step 5: Read IDs containing ATCG:"
awk 'NR % 4 == 2 && $0 ~ /ATCG/ {print prev} {prev=$0}' reads.fastq > filtered_ids.txt

echo "Done"
