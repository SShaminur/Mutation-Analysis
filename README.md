# Nonsynonimous Mutation-Analysis
This is the fast and accurate pipeline by which the protein mutation can be detected with a short possible time of a large number of sequences. By using separate multi-sequence alignment with MAFFT, removing ambiguous sequences and in-frame stop codons, and utilizing pairwise alignment, this method can derive nonsynonymus mutations (Reference:Position:Strain)

# Details_pipeline
Mutation_analysis.pdf

# Output
This simple python program helps in mutation analysis with respect to the reference genome. Output will be 

Strain_ID Reference_aa:aa_position:strain_aa

Usages: ./pairwise_mutation.py input_align.fasta > Output.txt



# Reference
Courtesy of straight_line_fasta.pl http://www.bioinformatics-made-simple.com

Rahman, M. S., Islam, M. R., Hoque, M. N., Alam, A. R. U., Akther, M., Puspo, J. A., ... & Hossain, M. A. (2020). Comprehensive annotations of the mutational spectra of SARS-CoV-2 spike protein: a fast and accurate pipeline. bioRxiv.
