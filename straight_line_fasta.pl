#!/usr/bin/perl -w
#perl fa2oneline.pl sample.fa > out.fa
# downloaded from http://www.bioinformatics-made-simple.com
# change multiline fasta to single line fasta
use strict;

my $input_fasta=$ARGV[0];
open(IN,"<$input_fasta") || die ("Error opening $input_fasta $!");

my $line = <IN>; 
print $line;

while ($line = <IN>)
{
chomp $line;
if ($line=~m/^>/) { print "\n",$line,"\n"; }
else { print $line; }
}

print "\n";