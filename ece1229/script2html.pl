#! /usr/bin/perl

use strict ;
use warnings ;
use Getopt::Long;

my $script ;
my $usage = "usage: script2html.pl -script x.script\n" ;

GetOptions(
   'script=s'     => \$script,
   'help!'        => sub { die $usage ; },
) ;

die $usage unless ( defined $script ) ;

open my $fh, "<$script" or die ;

my $loc = "https://raw.githubusercontent.com/peeterjoot/mathematica/master/ece1229/" ;
my $html = "<html>
<body>
" ;

while (<$fh>)
{
   chomp ;

   s/cdf.embed\('/cdf.embed( '$loc/ ;

   $html .= "$_\n" ;
}
$html .= "</body>
</html>
" ;

print $html ;
