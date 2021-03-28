#!/usr/bin/env perl

use warnings;
use strict;

my @header;
my %hash;

while(<>) {
    s/\R//;
    next if ( /^\s$/ ); 
    unless( @header ) { 
        @header = split( /\t/, $_ );
        next;
    }
    my (@line) = split( /\t/, $_, -1 );
    for( my $i=1; $i<scalar( @line ); $i+=2 ) {
        my $name = $line[$i-1];
        next if !( length $name );
        @{$hash{$name}}[(($i+1)/2)-1] = $line[$i];
    }
}

print "$header[0]\t";
print join( "\t", map{$header[$_]} grep{$_ % 2 == 1} 1..$#header ), "\n";

for my $key (keys %hash){
    $#{$hash{$key}} = ( scalar( @header ) / 2 ) - 1;
    $_ //= 0 for @{$hash{$key}};
    print "$key\t";
    print join( "\t", @{$hash{$key}} ), "\n";
}
