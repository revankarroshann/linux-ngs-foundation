with open ("samples.fastq") as f: 
    for i, line in enumerate(f):
        if i % 4 == 1: 
            seq = line.strip()
            gc = (seq.count('G') + seq.count('C')) / len(seq) * 100 
            if gc > 50: 
                print(seq, "GC%:", gc)