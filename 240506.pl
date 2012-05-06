#1 から 20 までの整数全てで割り切れる数字
#!usr/bin/perl

use strict;
use warnings;

foreach(my $i = 1 ; $i > 0 ; $i++){
    my $is_divided = 0;
    foreach(2..10){
        unless(($i % $_) eq 0){
            $is_divided = 1;
            last;
        }
    }
    if($is_divided eq 0){
        print"$i\n";
        last;
    }
}

