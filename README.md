# linux-ngs-foundation
This repository documents my hands-on training in Linux, Python, and bioinformatics workflows as preparation for NGS Analyst roles.

Environment Setup
* Installed WSL (Ubuntu)
* Installed Miniconda and created bioinformatics environment
* Installed libraries: Biopython, Pandas, NumPy, Matplotlib
* Verified tools: FastQC, BWA, SAMtools

Linux Command Line Skills
File & Directory Operations
* Navigation: `pwd`, `ls`, `cd`
* File handling: `touch`, `cp`, `mv`, `rm`
* Directory creation: `mkdir`

Pattern Matching
* Wildcards: `*.txt`, `*.fastq`

Practice Work
* Created and managed files using terminal commands
* Practiced file movement, copying, and deletion
* Applied wildcard-based filtering for file selection

Key Learnings
* Efficient file handling using terminal instead of GUI
* Importance of Linux in handling large bioinformatics datasets
* Foundation for building reproducible pipelines

Progress Log
* Day 1: Environment setup (WSL, Conda, libraries)
* Day 2: Linux basics (navigation, file handling, wildcards)

Next Steps
* Text processing: `grep`, `cut`, `sort`, `uniq`
* Bash scripting
* NGS file formats (FASTQ, SAM/BAM, VCF)
* Python-based sequence processing

Text Processing Day 3
- grep → filtering data based on patterns
- wc → counting lines
- sort → ordering data
- uniq → removing duplicates / counting frequency
- cut → extracting columns from structured data
- pipes (|) → chaining commands

 Day 4 (Pipelines)

- Created pipeline scripts to automate data processing
- Combined grep, sort, wc into workflows
- Practiced multi-step filtering using pipelines
- Learned how to run scripts using bash

Day 5 (Structured Data Processing)
- Worked with CSV-like biological data
- Learned to extract columns using cut
- Used grep for text filtering
- Used awk for numeric conditions
- Combined tools to solve structured data problems

Day 6 (FASTQ Processing)
- Worked with FASTQ-like structured data
- Understood 4-line read format
- Extracted sequence lines using awk (NR % 4)
- Filtered sequences based on patterns
- Linked sequence data with read IDs

Day 7 (FASTQ Workflow)
- Built mini pipeline for FASTQ data processing
- Extracted sequences using awk
- Applied filtering conditions on sequence data
- Linked sequence data with read IDs

Day 8 (Dynamic FASTQ Pipeline)
- Built reusable FASTQ processing pipeline
- Added dynamic pattern input using command-line arguments
- Extracted sequences and filtered based on user-defined patterns
- Linked sequence data with corresponding read IDs

 Day 9 (FastQC)
- Installed FastQC
- Generated quality report for FASTQ file
- Checked sequence quality, length, and GC content

Day 10 (SAMtools)
- Created SAM file with aligned reads
- Converted SAM to BAM format
- Used samtools to view and count reads

Day 11 (SAMtools - Sorting & Indexing)
- Sorted BAM file using samtools sort
- Indexed BAM file for fast access
- Queried reads from chromosome using samtools view

 Day 12 (Alignment Statistics)
- Used samtools flagstat to analyze alignment
- Evaluated total, mapped, and unmapped reads
- Calculated mapping percentage