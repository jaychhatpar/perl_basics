#Datatypes
=begin comment
1 	Scalar −
Scalars are simple variables. They are preceded by a dollar sign ($). 
A scalar is either a number, a string, or a reference. A reference is actually an address of a variable, which we will see in the upcoming chapters.

2 	Arrays −
Arrays are ordered lists of scalars that you access with a numeric index which starts with 0. 
They are preceded by an "at" sign (@).

3 	Hashes −
Hashes are unordered sets of key/value pairs that you access using the keys as subscripts. 
They are preceded by a percent sign (%).

Escape sequence 	Meaning
\\ 	Backslash
\' 	Single quote
\" 	Double quote
\a 	Alert or bell
\b 	Backspace
\f 	Form feed
\n 	Newline
\r 	Carriage return
\t 	Horizontal tab
\v 	Vertical tab
\0nn 	Creates Octal formatted numbers
\xnn 	Creates Hexideciamal formatted numbers
\cX 	Controls characters, x may be any character
\u 	Forces next character to uppercase
\l 	Forces next character to lowercase
\U 	Forces all following characters to uppercase
\L 	Forces all following characters to lowercase
\Q 	Backslash all following non-alphanumeric characters
\E 	End \U, \L, or \Q

=cut

#!/usr/bin/perl

# This is case of interpolation.
$str = "Welcome to \ntutorialspoint.com!";
print "$str\n";

# This is case of non-interpolation.
$str = 'Welcome to \ntutorialspoint.com!';
print "$str\n";

# Only W will become upper case.
$str = "\uwelcome to tutorialspoint.com!";
print "$str\n";

# Whole line will become capital.
$str = "\UWelcome to tutorialspoint.com!";
print "$str\n";

# A portion of line will become capital.
$str = "Welcome to \Ututorialspoint\E.com!"; 
print "$str\n";

# Backsalash non alpha-numeric including spaces.
$str = "\QWelcome to tutorialspoint's family";
print "$str\n";

# Adding inverted commas in comments.
$str = "Welcome to \"tutorialspoint's family\"";
print "$str\n";

# Adding alert bell
$str = "Welcome to Beep Factory!!!\a";
print "$str\n";

#Scalar Variables
$age = 25;             # An integer assignment
$name = "John Paul";   # A string 
$salary = 1445.50;     # A floating point

print "Age = $age\n";
print "Name = $name\n";
print "Salary = $salary\n";

#Array variables
print"Array variables\n";
@ages = (25, 30, 40);             
@names = ("John Paul", "Lisa", "Kumar");
print "\$ages[0] = $ages[0]\n";
print "\$ages[1] = $ages[1]\n";
print "\$ages[2] = $ages[2]\n";
print "\$names[0] = $names[0]\n";
print "\$names[1] = $names[1]\n";
print "\$names[2] = $names[2]\n";

#Hash variables
print"Hash variables\n";
%data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);
print "\$data{'John Paul'} = $data{'John Paul'}\n";
print "\$data{'Lisa'} = $data{'Lisa'}\n";
print "\$data{'Kumar'} = $data{'Kumar'}\n";

#Variable Context
print"Variable Context\n";
@names = ('John Paul', 'Lisa', 'Kumar');
@copy = @names;
$size = @names;
print "Given names are : @copy\n";
print "Number of names are : $size\n";

#V-Strings
=begin comment
A literal of the form v1.20.300.4000 is parsed as a string composed of characters with the specified ordinals. This form is known as v-strings.

A v-string provides an alternative and more readable way to construct strings, rather than use the somewhat less readable interpolation form "\x{1}\x{14}\x{12c}\x{fa0}".
=cut
$smile  = v9786;
$foo    = v102.111.111;
$martin = v77.97.114.116.105.110; 

print "smile = $smile\n";
print "foo = $foo\n";
print "martin = $martin\n";

#Special Literals
=begin comment
So far you must have a feeling about string scalars and its concatenation and interpolation opration. So let me tell you about three special literals __FILE__, __LINE__, and __PACKAGE__ represent the current filename, line number, and package name at that point in your program.
=cut
print "File name ". __FILE__ . "\n";
print "Line Number " . __LINE__ ."\n";
print "Package " . __PACKAGE__ ."\n";

# they can not be interpolated
print "__FILE__ __LINE__ __PACKAGE__\n";

=begin comment
Welcome to
tutorialspoint.com!
Welcome to \ntutorialspoint.com!
Welcome to tutorialspoint.com!
WELCOME TO TUTORIALSPOINT.COM!
Welcome to TUTORIALSPOINT.com!
Welcome\ to\ tutorialspoint\'s\ family
Welcome to Beep Factory!!!
Age = 25
Name = John Paul
Salary = 1445.5
Array variables
$ages[0] = 25
$ages[1] = 30
$ages[2] = 40
$names[0] = John Paul
$names[1] = Lisa
$names[2] = Kumar
Hash variables
$data{'John Paul'} = 45
$data{'Lisa'} = 30
$data{'Kumar'} = 40
Variable Context
Given names are : John Pa
Number of names are : 3
Wide character in print at C:\Users\win\Desktop\Jayesh\perl\datatypes.pl line 11
7.
smile = Γÿ║
foo = foo
martin = Martin
File name C:\Users\win\Desktop\Jayesh\perl\datatypes.pl
Line Number 126
Package main
__FILE__ __LINE__ __PACKAGE__

=cut