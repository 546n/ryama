#fortune プログラム
#!user/bin/perl

use strict;
use warnings;

open my $fh, "<", $ARGV[0] or die "$!";

my @future;
while(<$fh>){
   push(@future,$_);
}

print "$future[int(rand($#future + 1))]\n"; 
