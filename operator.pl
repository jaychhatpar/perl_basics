#!usr/bin/perl
print "hello world\n";
print "welcome\n";

#define variable and store string and values
$var1= "hello\n";
print $var1;

=begin comment
hello world
welcome
hello
=cut

$var2=2;
$var3=6;
$var4=4;
$var5=$var2+$var3+$var4;
print "The addition of $var2, $var3 and $var4 = $var5\n";

# Simple Arithmetics
$var5=$var3-$var2;
print "The subtraction of $var3 and $var2 = $var5\n";
$var5=$var3*$var2;
print "The multiplication of $var3 and $var2 = $var5\n";
$var5=$var3/$var2;
print "The division of $var3 and $var2 = $var5\n";
$var5=$var3%$var2;
print "The modulus of $var3 and $var2 = $var5\n";
$var5=$var3**$var2;
print "The exponent of $var3 and $var2 = $var5\n";

print "Using the $var3 for increment and decrement\n"; 
$var3++;
print "The post increment = $var3\n";
++$var3;
print "The pre increment = $var3\n";
$var3--;
print "The post decrement = $var3\n";
--$var3;
print "The pre decrement of = $var3\n";

=begin comment
The addition of 2, 6 and 4 = 12
The subtraction of 6 and 2 = 4
The multiplication of 6 and 2 = 12
The division of 6 and 2 = 3
The modulus of 6 and 2 = 0
Using the 6 for increment and decrement
The post increment = 7
The pre increment = 8
The post decrement = 7
The pre decrement of = 6
=cut

$age = 25;             # An integer assignment
$name = "John Paul";   # A string 
$salary = 1445.50;     # A floating point
print "Age = $age\n";
print "Name = $name\n";
print "Salary = $salary\n";

=begin comment
Age = 25
Name = John Paul
Salary = 1445.5
=cut

print"Swapping values\n";
print "The var2=$var2 and var3=$var3\n";
print "After swapping var2 and var3\n";
$var4=$var2;
$var2=$var3;
$var3=$var4;
print "Now, The var2=$var2 and var3=$var3\n";

=begin comment
Swapping values
The var2=2 and var3=6
After swapping var2 and var3
Now, The var2=6 and var3=2
=cut

#string operations
print"Input a string: "; 
$str1=<> ;#Accepting values from user
print "The user input is: $str1\n";

=begin comment
Input a string: Jayesh J Chhatpar
The user input is: Jayesh J Chhatpar
=cut

#convert all characters to upper case
print"Input a string: "; 
$str1=<> ;#Accepting values from user
print "\UThe user input in uppercase is: $str1\n";
print "\LThe user input in lowercase is: $str1\n";

=begin comment
Input a string: Jayesh J Chhatpar
THE USER INPUT IN UPPERCASE IS: JAYESH J CHHATPAR
the user input in lowercase is: jayesh j chhatpar
=cut

#get sub string starting from say 5th character
$str2=substr($str1,5);
print"substr from the 5th char $str2\n";
$str2=substr($str1,5,8);
print"substr from the 5th char until next 8 characters $str2\n";

=begin comment
substr from the 5th char h J Chhatpar
substr from the 5th char until next 8 characters h J Chha
=cut

#Operators

$a = 21;
$b = 10;

print "Value of \$a = $a and value of \$b = $b\n";

if( $a == $b ){
   print "$a == \$b is true\n";
}else{
   print "\$a == \$b is not true\n";
}

if( $a != $b ){
   print "\$a != \$b is true\n";
}else{
   print "\$a != \$b is not true\n";
}

$c = $a <=> $b;
print "\$a <=> \$b returns $c\n";

if( $a > $b ){
   print "\$a > \$b is true\n";
}else{
   print "\$a > \$b is not true\n";
}

if( $a >= $b ){
   print "\$a >= \$b is true\n";
}else{
   print "\$a >= \$b is not true\n";
}

if( $a < $b ){
   print "\$a < \$b is true\n";
}else{
   print "\$a < \$b is not true\n";
}

if( $a <= $b ){
   print "\$a <= \$b is true\n";
}else{
   print "\$a <= \$b is not true\n";
}

=being comment
Value of $a = 21 and value of $b = 10
$a == $b is not true
$a != $b is true
$a <=> $b returns 1
$a > $b is true
$a >= $b is true
$a < $b is not true
$a <= $b is not true
=cut

#String Equality - Below is a list of equity operators. Assume variable $a holds "abc" and variable $b holds "xyz" then, lets check following string equality operators −
$a = "abc";
$b = "xyz";

print "Value of \$a = $a and value of \$b = $b\n";

if( $a lt $b ){
   print "$a lt \$b is true\n";
}else{
   print "\$a lt \$b is not true\n";
}

if( $a gt $b ){
   print "\$a gt \$b is true\n";
}else{
   print "\$a gt \$b is not true\n";
}

if( $a le $b ){
   print "\$a le \$b is true\n";
}else{
   print "\$a le \$b is not true\n";
}

if( $a ge $b ){
   print "\$a ge \$b is true\n";
}else{
   print "\$a ge \$b is not true\n";
}

if( $a ne $b ){
   print "\$a ne \$b is true\n";
}else{
   print "\$a ne \$b is not true\n";
}

$c = $a cmp $b;
print "\$a cmp \$b returns $c\n";

=begin comment
Value of $a = abc and value of $b = xyz
abc lt $b is true
$a gt $b is not true
$a le $b is true
$a ge $b is not true
$a ne $b is true
$a cmp $b returns -1
=cut


use integer;
 
$a = 60;
$b = 13;

print "Value of \$a = $a and value of \$b = $b\n";

$c = $a & $b;
print "Value of \$a & \$b = $c\n";

$c = $a | $b;
print "Value of \$a | \$b = $c\n";

$c = $a ^ $b;
print "Value of \$a ^ \$b = $c\n";

$c = ~$a;
print "Value of ~\$a = $c\n";

$c = $a << 2;
print "Value of \$a << 2 = $c\n";

$c = $a >> 2;
print "Value of \$a >> 2 = $c\n";

=begin comment
Value of $a = 60 and value of $b = 13
Value of $a & $b = 12
Value of $a | $b = 61
Value of $a ^ $b = 49
Value of ~$a = 18446744073709551555
Value of $a << 2 = 240
Value of $a >> 2 = 15
=cut


#!/usr/local/bin/perl
 
$a = true;
$b = false;

print "Value of \$a = $a and value of \$b = $b\n";

$c = ($a and $b);
print "Value of \$a and \$b = $c\n";

$c = ($a  && $b);
print "Value of \$a && \$b = $c\n";

$c = ($a or $b);
print "Value of \$a or \$b = $c\n";

$c = ($a || $b);
print "Value of \$a || \$b = $c\n";

$a = 0;
$c = not($a);
print "Value of not(\$a)= $c\n";

=begin comment
Value of $a = true and value of $b = false
Value of $a and $b = false
Value of $a && $b = false
Value of $a or $b = true
Value of $a || $b = true
Value of not($a)= 1
=cut

#Math
use Math::Trig;
$x=tan(45);
print "tan of 10 is $x\n";
$x=sin(0);
print "Sine of 0 is $x\n";

=begin comment
tan of 10 is 0.648360827459087
Sine of 0 is 0
=cut

#Quote-like Operators Example
=begin comment
q{ }	Encloses a string with-in single quotes	q{abcd} gives 'abcd'
qq{ }	Encloses a string with-in double quotes	qq{abcd} gives "abcd"
qx{ }	Encloses a string with-in invert quotes	qx{abcd} gives `abcd`
=cut


$a = 10;
 
$b = q{a = $a};
print "Value of q{a = \$a} = $b\n";

$b = qq{a = $a};
print "Value of qq{a = \$a} = $b\n";

# unix command execution
$t = qx{date};
print "Value of qx{date} = $t\n";
=begin comment
Value of q{a = $a} = a = $a
Value of qq{a = $a} = a = 10
Value of qx{date} = Thu Feb 14 08:13:17 MST 2013
=cut

#Perl Miscellaneous Operators Example
$a = "abc";
$b = "def";

print "Value of \$a  = $a and value of \$b = $b\n";
 
$c = $a . $b;
print "Value of \$a . \$b = $c\n";

$c = "-" x 3;
print "Value of \"-\" x 3 = $c\n";

@c = (2..5);
print "Value of (2..5) = @c\n";

$a = 10;
$b = 15;
print "Value of \$a  = $a and value of \$b = $b\n";

$a++;
$c = $a ;
print "Value of \$a after \$a++ = $c\n";

$b--;
$c = $b ;
print "Value of \$b after \$b-- = $c\n";

=begin comment
Value of $a = abc and value of $b = def
Value of $a . $b = abcdef
Value of "-" x 3 = ---
Value of (2..5) = 2 3 4 5
Value of $a = 10 and value of $b = 15
Value of $a after $a++ = 11
Value of $b after $b-- = 14
=cut