#!/bin/bash

for FASTQ in data/*.fastq
do
    BASENAME=$(basename $FASTQ .fastq)

    echo "Processing $FASTQ"

    bwa mem ref.fa $FASTQ > results/${BASENAME}.sam
    samtools view -b results/${BASENAME}.sam > results/${BASENAME}.bam
    samtools sort results/${BASENAME}.bam -o results/${BASENAME}_sorted.bam
    samtools index results/${BASENAME}_sorted.bam
    samtools flagstat results/${BASENAME}_sorted.bam > results/${BASENAME}_stats.txt

    echo "Done: $BASENAME"
done
