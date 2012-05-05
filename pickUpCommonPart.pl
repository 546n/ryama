#最長共通部分問題
#!usr/bin/perl

use strict;
use warnings;


my $result = &findCommonPart($ARGV[0], $ARGV[1]);
print "$result\n";

sub findCommonPart{
        my $longWord = length($_[0]) < length($_[1]) ? $_[1] : $_[0];
        my $shortWord = length($_[0]) < length($_[1]) ? $_[0] : $_[1];

        foreach(0..length($shortWord)){
                my $head = $_;
                foreach(0..length($shortWord)-2){
                        my $tail = -1 * $_;
                        my $commonPart = $tail eq 0? substr($shortWord,$head):substr($shortWord, $head, $tail);
                        if($longWord =~ /$commonPart/){
                                return $commonPart;
                        }
                }
        }
}
