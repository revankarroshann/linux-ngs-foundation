#!/bin/bash

pattern=$1

echo "Total reads:"
wc -l reads.fastq | awk '{print $1/4}'

echo "Extracting sequences..."
awk 'NR % 4 == 2' reads.fastq > sequences.txt

echo "Filtering sequences with pattern: $pattern"
grep "$pattern" sequences.txt > filtered_sequences.txt

echo "Counting filtered sequences:"
wc -l filtered_sequences.txt

echo "Extracting IDs with pattern:"
awk -v pat="$pattern" 'NR % 4 == 2 && $0 ~ pat {print prev} {prev=$0}' reads.fastq > filtered_ids.txt

echo "Pipeline completed."
