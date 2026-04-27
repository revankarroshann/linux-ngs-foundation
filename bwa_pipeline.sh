#!/bin/bash 

echo "Starting Pipeline..." 

# Step 1: Alignment 
bwa mem ref.fa samples.fastq > aligned.sam 

# Step 2:Convert SAM to BAM 
samtools view -b aligned.sam > aligned.bam 

# Step 3: Sort BAM 
samtools sort aligned.bam -o sorted.bam 

# Step 4: Index BAM 
samtools index sorted.bam 

# Step 5: Generate Stats 
samtools flagstat sorted.bam > stats.txt 

echo "Pipeline Completed !" 
