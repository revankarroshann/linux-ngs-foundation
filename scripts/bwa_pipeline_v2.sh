#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: ./bwa_pipeline_v2.sh <fastq_file>"
    exit 1
fi

FASTQ=$1
BASENAME=$(basename $FASTQ .fastq)

echo "Processing $FASTQ"

bwa mem ref.fa $FASTQ > ${BASENAME}.sam
samtools view -b ${BASENAME}.sam > ${BASENAME}.bam
samtools sort ${BASENAME}.bam -o ${BASENAME}_sorted.bam
samtools index ${BASENAME}_sorted.bam
samtools flagstat ${BASENAME}_sorted.bam > ${BASENAME}_stats.txt

echo "Done: $BASENAME"
