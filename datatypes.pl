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


=begin comment
Welcome to
tutorialspoint.com!
Welcome to \ntutorialspoint.com!
Welcome to tutorialspoint.com!
WELCOME TO TUTORIALSPOINT.COM!
Welcome to TUTORIALSPOINT.com!
Welcome\ to\ tutorialspoint\'s\ family
Welcome to Beep Factory!!!
=cut