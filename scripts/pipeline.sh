#!/bin/bash 

# Check arguments 
if [ $# -lt 3 ]; then 
echo " Usage bash pipeline.sh <input_folder> <reference.fa> <output_folder>"
exit 1 
fi 

INPUT=$1 
REF=$2 
OUTPUT=$3 

# Create output folder if not exists 
mkdir -p $OUTPUT 

echo "Starting pipeline..." 
for FASTQ in $INPUT/*.fastq 
do 
BASENAME=$(basename $FASTQ .fastq) 

echo "Processing $BASENAME" 

bwa mem $REF $FASTQ > $OUTPUT/${BASENAME}.sam 
samtools view -b $OUTPUT/${BASENAME}.sam > $OUTPUT/${BASENAME}.bam 
samtools sort $OUTPUT/${BASENAME}.bam  -o $OUTPUT/${BASENAME}_SORTED.bam
samtools index $OUTPUT/${BASENAME}_sorted.bam 
samtools flagstat $OUTPUT/${BASENAME}_sorted.bam > $OUTPUT/${BASENAME}_stats.txt

done 

echo "Pipeline Completed!" 
