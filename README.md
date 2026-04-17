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