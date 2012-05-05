#回分判定
#!usr/bin/perl

use strict;
use warnings;
use Test::More qw/no_plan/;

while(<>){
    chomp;
    my @original = split//,$_;
    my @reverse = reverse(@original);
    if(is_deeply(\@original, \@reverse)){
        print"OK\n";
    }else{
        print"NG\n";
    }
}
