#逆ポーランド記法を実装する
#!usr/bin/perl

use strict;
use warnings;

while(<>){
        chomp;
        my @line = split//,$_;
        print "@line\n";
        my $result = &cal(@line);
        print "$result\n";
}

sub cal{
        my @target = @_;
        while($#target > 1){
                @target = &seach_next_pair(@target);
        }
        $target[0];
}

sub seach_next_pair{
        my $i = 0;
        foreach(@_){
                unless(/[0-9]/){
                        my $answer; 
                        my $length = $#_;

                        $answer = $_[$i-2] + $_[$i-1] if($_[$i] eq '+');
                        $answer = $_[$i-2] - $_[$i-1] if($_[$i] eq '-');
                        $answer = $_[$i-2] * $_[$i-1] if($_[$i] eq '*');
                        $answer = $_[$i-2] / $_[$i-1] if($_[$i] eq '/');

                        #前後の数字、演算子と計算結果をひっつける
                        my @result;
                        push(@result,@_[0..$i-3])if($i > 2);
                        push(@result, $answer);
                        push(@result,@_[$i+1..$length]) if($i< $length);
                        
                        return @result;
                }
                $i ++;
        }
}

