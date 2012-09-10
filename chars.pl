#!/usr/bin/env perl
use warnings;
use strict;

while(<>) {
  my $line = $_;
  # Abbreviations
  $line =~ s/\(Translucent\)/\(T\)/g;
  $line =~ s/\(Golden Aura\)/\(G\)/g;
  $line =~ s/\(Red Aura\)/\(R\)/g;
  $line =~ s/\(Linkdead\)/\(L\)/g;
  $line =~ s/\(White Aura\)/\(W\)/g;
  $line =~ s/\(Hidden\)/\(W\)/g;
  $line =~ s/\(Charmed\)/\(C\)/g;
  $line =~ s/\(Animated\)/\(C\)/g;
  $line =~ s/(.*) is( sitting)? here./$1/g;
  # Word Wrap; mine:
  #$line =~ s/^(((\e\[.*?m)?[^\e]){50}).*/$1\e\[m/;
  # http://unix.stackexchange.com/questions/46966/cut-colored-text-ignoring-color-tags
  $line =~ s/^((?:(?>(?:\e\[.*?m)*).){80}).*/$1\e[m/;
  print $line;
} 
