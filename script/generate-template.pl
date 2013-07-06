#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

system "dim-from-project --class=Kyotopm::TechTalks --project-dir=templates/tech-talks > lib/Dist/Maker/Template/Kyotopm/TechTalks.pm";
