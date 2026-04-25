count = 0

with open("samples.fastq") as f:
    for i, line in enumerate(f):
        if i % 4 == 1:
            count += 1

print("Total sequences:", count)