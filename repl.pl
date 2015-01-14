#!/usr/bin/perl

use Carp;
use Getopt::Long;

GetOptions("h", "f=s");

open FILE, $opt_f or die $!;

while (<FILE>) {
    ($oldp, $newp) = split;
    $dic{$oldp}=$newp;
}
close(FILE);

$os = ""; $ns ="";
while (<STDIN>) {
    $os = $_;
    foreach $k (keys %dic) {
	s/$k/$dic{$k}/g;
    }

    $ns = $_;
    if ($os ne $ns) {
	print STDERR "from: $os";
	print STDERR "to: $ns";
    }
}
