!#user/bin/perl;
#use strict;
my $string;
my @items;
my @unique;
my %count;

open(IN, "input.txt")||die"cannot open in file!";
open(OUT, ">unique_out.txt")||die"cannot open out file!";


while (my $line=<IN>){
	chomp $line;
	$string = $line."\t".$string;
	}

@items= split(/\t/, $string);

@unique= grep(++$count{$_}<2, @items);

for my $i(sort @unique){
	
	next if $i !~/\w/;
	
	print OUT "$i\n";
	}
	

