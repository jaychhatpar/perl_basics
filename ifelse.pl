#!/usr/local/bin/perl
######################### Control Structures ############################
=begin comment
if statement
An if statement consists of a boolean expression followed by one or more statements.

if...else statement
An if statement can be followed by an optional else statement.

if...elsif...else statement
An if statement can be followed by an optional elsif statement and then by an optional else statement.

unless statement
An unless statement consists of a boolean expression followed by one or more statements.

unless...else statement
An unless statement can be followed by an optional else statement.

unless...elsif..else statement
An unless statement can be followed by an optional elsif statement and then by an optional else statement.

switch statement
With the latest versions of Perl, you can make use of the switch statement. which allows a simple way of comparing a variable value against various conditions.
=cut

print"Enter a value= "; 
$v1=<>;
if($v1==10)
{
	print"Value is 10\n";
}
elsif ($v1>10)
{
	print"Value is Greater than 10\n";
}
else
{
	print "Value is Less than 10\n";
}
=begin comment
Enter a value= 100
Greater than 10
=cut

# UNLESS...ELSIF ... ESLE statement
$a = 20;
# check the boolean condition using if statement
unless( $a  ==  30 ){
    # if condition is false then print the following
    printf "a has a value which is not 20\n";
}elsif( $a ==  30 ){
    # if condition is true then print the following
    printf "a has a value which is 30\n";
}else{
    # if none of the above conditions is met
    printf "a has a value which is $a\n";
}

#a has a value which is not 20

#The ? : Operator (Ternary Operator)
#Exp1 ? Exp2 : Exp3;

$value=100;
$less = "Less than 50\n";
$more = "more than 50\n";
$ans= $value>50?$more:$less;
print "$ans\n";

use Switch;

$var = 10;
@array = (10, 20, 30);
%hash = ('key1' => 10, 'key2' => 20);

switch($var){
   case 10           { print "number 100\n"; next; }
   case "a"          { print "string a" }
   case [1..10,42]   { print "number in list" }
   case (\@array)    { print "number in list" }
   case (\%hash)     { print "entry in hash" }
   else              { print "previous case not true" }
}

