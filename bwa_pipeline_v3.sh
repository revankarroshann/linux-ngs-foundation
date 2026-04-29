#!/bin/bash

for FASTQ in *.fastq
do
    BASENAME=$(basename $FASTQ .fastq)

    echo "Processing $FASTQ"

    bwa mem ref.fa $FASTQ > ${BASENAME}.sam
    samtools view -b ${BASENAME}.sam > ${BASENAME}.bam
    samtools sort ${BASENAME}.bam -o ${BASENAME}_sorted.bam
    samtools index ${BASENAME}_sorted.bam
    samtools flagstat ${BASENAME}_sorted.bam > ${BASENAME}_stats.txt

    echo "Done: $BASENAME"
done
