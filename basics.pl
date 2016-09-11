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

#Math
use Math::Trig;
$x=tan(10);
print "tan of 10 is $x\n";
$x=sin(0);
print "Sine of 0 is $x\n";

=begin comment
tan of 10 is 0.648360827459087
Sine of 0 is 0
=cut

