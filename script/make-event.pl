#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

my $eventname = shift @ARGV or die 'eventname required';

chdir "events";
system "PERL5LIB=../lib dim --config ../config/$eventname.pl init $eventname Kyotopm::TechTalks";
