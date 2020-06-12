#!/usr/bin/env python
# Count how many gaps and mismatches using pairwise2 alignment
# python pairwise_custom.py your_fasta_file.fasta

import itertools, sys
from Bio import SeqIO, pairwise2
from Bio.SubsMat import MatrixInfo as matlist

def my_format_alignment(w, align1, align2, score, begin, end):
    z = 1
    for a, b in zip(align1[begin:end], align2[begin:end]):
        if a == b:
            pass
        elif a == "-" or b == "-":
            print(' ' + IDs[w + 1] + ' ' + a + str(z) + b)
        else:
            print(' ' + IDs[w + 1] + ' ' + a + str(z) + b)
        z += 1

FastaFile = open(sys.argv[1], 'U')

SEQs = []
IDs = []
for rec in SeqIO.parse(FastaFile, 'fasta'):
    IDs.append (rec.id)
    SEQs.append(rec.seq)

combos = itertools.combinations(SEQs, 2)

z = 0
for k, v in combos:
    if z < (len(SEQs) - 1):
        aln = pairwise2.align.globalds(k, v, matlist.blosum62, -10, -1)
        my_format_alignment(z, *aln[0])
    z += 1

