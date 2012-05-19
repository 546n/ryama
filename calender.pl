#!usr/bin/perl
use Time::Piece (); 
use strict;
use warnings;

my $t = Time::Piece::localtime();
my $year = $t->year;
my $month = $t->mon;
my $day = $t->mday;
my $first_day = Time::Piece->strptime($year.'-'.$month.'-1', '%Y-%m-%d');
my $youbi = $first_day->wday;
my @month_length=qw/ 31 28 31 30 31 30 31 31 30 31 30 31/;
foreach(1..$youbi){
    print "   ";
}
my $i = 1;
while($i <= $month_length[$month-1]){
    print " " if($i < 10);
    print " $i\n" if($youbi eq 6);
    print " $i" if($youbi ne 6);
    $i ++;
    $youbi = ($youbi + 1) % 7;
}
print"\n";
