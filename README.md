# Synonimous & Nonsynonimous Mutation-Analysis Pipeline for Large dataset
This is the fast and accurate pipeline by which the protein mutation can be detected with a short possible time of a large number of sequences. By using separate multi-sequence alignment with MAFFT, removing ambiguous sequences and in-frame stop codons, and utilizing biopython pairwise alignment, this method can derive synonymus and non-synonymus mutations (Reference:Position:Strain).

# Requirements
1. Python 3.8
2. Biopython 1.75 or higher

# Detail_Pipeline
https://github.com/SShaminur/Mutation-Analysis/blob/master/Mutation_analysis.pdf

# Output
This simple python program helps in mutation analysis with respect to the reference genome. Output will be 

Strain_ID Reference_aa:aa_position:strain_aa

Usages: ./pairwise_mutation2.py input_align.fasta > Output.txt



# References

1. Rahman, MS, Islam, MR, Hoque, MN, et al. Comprehensive annotations of the mutational spectra of SARS‐CoV‐2 spike protein: A fast and accurate pipeline. Transbound Emerg Dis. 2020; 00: 1– 14. https://doi.org/10.1111/tbed.13834.

2. Islam, M. Rafiul, M. Nazmul Hoque, M. Shaminur Rahman, ASM Rubayet Ul Alam, Masuda Akther, J. Akter Puspo, Salma Akter, Munawar Sultana, Keith A. Crandall, and M. Anwar Hossain. "Genome-wide analysis of SARS-CoV-2 virus strains circulating worldwide implicates heterogeneity." Scientific reports 10, no. 1 (2020): 1-9. https://doi.org/10.1038/s41598-020-70812-6. 

3. Courtesy of straight_line_fasta.pl http://www.bioinformatics-made-simple.com
