#!/usr/bin/perl
use strict;
use warnings;

my @data = (
    {
        "name" => "apples",
        "baskets" => [10,20,30]
    },
    {
        "name" => "bananas",
        "baskets" => [5,20,10,10]
    }
);


foreach my $item (@data) {
    my $name = $item->{name};
    my $baskets = $item->{baskets};
    my $produce_count = 0;
    my $baskets_count = 0;
    foreach my $count (@$baskets) {
        $produce_count += $count;
        $baskets_count++;
    }
    print "$produce_count  $name in $baskets_count baskets\n";

}
