#!/usr/bin/perl
use strict;
use warnings;
use JSON;

my $filename = 'data.json';
open(my $fh, '<', $filename) or die "Could not open file '$filename' $!";
my $json_text = do { local $/; <$fh> };
my $json = JSON->new;
my $data = $json->decode($json_text);

foreach my $item (@$data) {
    my $name = $item->{name};
    my $baskets = $item->{baskets};
    my $produce_count = 0;
    my $baskets_count = 0;
    foreach my $count (@$baskets) {
        $produce_count += $count;
        $baskets_count++;
    }
# 60 apples in 3 baskets
# 45 bananas in 4 baskets
    print "$produce_count  $name in $baskets_count baskets\n";
}

 