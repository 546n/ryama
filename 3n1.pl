#3n+1問題
#引数に与えられた2数の中から3n+1問題の最大値を探す

#!usr/bin/perl

use strict;
use warnings;

my $result = 0;
foreach($ARGV[0]..$ARGV[1]){
        my $length = &getAnswer($_);
        $result = ($length > $result) ? $length : $result;
}
print "answer:::$result\n";

sub getAnswer{
        print "$_ :::(";
        my $answer = 0;
        while($_ ne 1){
                print "$_,";
                $_ = (($_ % 2) eq 0)? $_ / 2 : ($_ * 3) + 1;
                $answer ++;
        }
        print ")\n";
        $answer;
}
