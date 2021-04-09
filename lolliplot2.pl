#!/usr/bin/perl
use strict;
use warnings;
my %data;
while (<>) {
    chomp;
    if (m/(\w\d+)(\w)/) {
        my $key = $1;
        my $new = $2;
        if (defined $data{$key}) {
            $data{$key} .= "/$new";
        }
        else {
            $data{$key} = $new;
        }
    }
}
while (my ($key, $aa) = each %data) {
    print "$key$aa\n";
}
