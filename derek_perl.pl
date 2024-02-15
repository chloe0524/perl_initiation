use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

use v5.16;

print "Hello World\n";

my $name = 'Chloe';
 
my ($age, $street) = (21, '123 Main St');

my $my_info = "$name lives on \"$street\"\n";
 
$my_info = qq{$name lives on "$street"\n};
 
print $my_info;
 
my $bunch_of_info = <<"END";
This is a
bunch of information
on multiple lines
END

say $bunch_of_info;
 
my $big_int = 18446744073709551615;

printf("%u \n", $big_int + 1);

my $big_float = .1000000000000001;

printf("%.16f \n", $big_float + .1000000000000001);

