#!/usr/bin/perl
use v5.34;
use warnings;
use diagnostics;

say hex('DEADBEEF');
# to get warning: hex('DEADBEEF'); 
#
# Useless use of a constant (3735928559) in void context at 2-test_scalar.plx
# line 6 (#1)
# (W void) You did something without a side effect in a context that does
# nothing with the return value, such as a statement that doesn't return a
# value from a block, or the left side of a scalar comma operator.  Very
# often this points not to stupidity on your part, but a failure of Perl
# to parse your program the way you thought it would.  For example, you'd
# get this if you mixed up your C precedence with Python precedence and
# said
# 
#     $one, $two = 1, 2;
# 
# when you meant to say
# 
#     ($one, $two) = (1, 2);
# 
# Another common error is to use ordinary parentheses to construct a list
# reference when you should be using square or curly brackets, for
# example, if you say
# 
#     $array = (1,2);
# 
# when you should have said
# 
#     $array = [1,2];
# 
# The square brackets explicitly turn a list value into a scalar value,
# while parentheses do not.  So when a parenthesized list is evaluated in
# a scalar context, the comma is treated like C's comma operator, which
# throws away the left argument, which is not what you want.  See
# perlref for more on this.
# 
# This warning will not be issued for numerical constants equal to 0 or 1
# since they are often used in statements like
# 
#     1 while sub_with_side_effects();
# 
# String constants that would normally evaluate to 0 or 1 are warned
# about.