#!usr/bin/perl
use Time::Piece (); 
use strict;
use warnings;

my($year, $month, $day) = @ARGV;
my @youbi = qw/Sun Mon Tue Wed Thu Fri Sat/;

my $t = Time::Piece->strptime($year.'-'.$month.'-'.$day, '%Y-%m-%d');

print "$youbi[$t->wday - 1]\n";
