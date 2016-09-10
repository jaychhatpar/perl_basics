#!usr/bin/perl
print "hello world\n";
print "welcome\n";

#define variable and store string and values
$var1= "hello\n";
print $var1;
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


print"Swapping values\n";
print "The var2=$var2 and var3=$var3\n";
print "After swapping var2 and var3\n";
$var4=$var2;
$var2=$var3;
$var3=$var4;
print "Now, The var2=$var2 and var3=$var3\n";

#string operations
print"Input a string: "; 
$str1=<> ;#Accepting values from user
print "The user input is: $str1\n";

#convert all characters to upper case
print"Input a string: "; 
$str1=<> ;#Accepting values from user
print "\UThe user input in uppercase is: $str1\n";
print "\LThe user input in lowercase is: $str1\n";

#get sub string starting from say 5th character
$str2=substr($str1,5);
print"substr from the 5th char $str2\n";
$str2=substr($str1,5,8);
print"substr from the 5th char until next 8 characters $str2\n";

#Math
use Math::Trig;
$x=tan(10);
print "tan of 10 is $x\n";
$x=sin(0);
print "Sine of 0 is $x\n";

#control structures
print"Enter a value= "; 
$v1=<>;
if($v1>10)
{
	print"Greater than 10\n";
}
else
{
	print "Less than 10\n";
}

for ($i=1; $i<=10; $i++)
{
	print "$i\n";
}

$j=1;
while ($j<=10)
{
	print "$j\n";
	$j++;
}

#loops and arrays
print"Enter a value= "; 
$v2=<>;
$i=1;
do
{
	print "$i\n";
	$i++;
}while($i<=$v2);

#until loop
print"Enter a value= "; 
$v2=<>;
$i=1;
do
{
	print "$i\n";
	$i++;
}until($i>$v2);


#Arrays
my $v1;
my $i;
my $x;

my @a; #@ is used for arrays

@a = ("apple","orange","banana");
foreach $x(@a)
{
	print "elements is ",$x, "\n";
}
print "2nd element is ",@a[1],"\n";
#array index starts at 0

push @a, "hello";
print "Printing after push\n";
foreach $x(@a)
{
	print "Element after push are ", $x, "\n";
}

pop @a, "hello";
print "Printing after pop\n";
foreach $x(@a)
{
	print "Element after pop are ", $x, "\n";
}

#hashes
my %days; #hashes are key value pairs
%days = (1,"Mon",3,"Wed",2,"Tues",4,"Thu");

foreach $key(%days)
{
	print $key, $days{$key},"\n";
}

foreach $key(sort keys %days)
{
	print $key, $days{$key},"\n";
}
#Adding key and value elements
$days{5}="Friday";
$days{6}="Saturday";
$days{7}="Sunday";
print "After ading 3 key and value pairs.\n";
foreach $key(sort keys %days)
{
	print $key, $days{$key},"\n";
}
print "After deleting two keys.\n";
#deleting key and value elements
delete($days{4});
foreach $key(sort keys %days)
{
	print $key, $days{$key},"\n";
}

#Subroutines and Functions

my $y;
print "Enter value of x = ";
$x = <>; print "/n";
print "Enter value of y = ";
$y = <>; print "/n";
print"I am in the main code.\n"
&f1($x,$y);
print"I am back in the main code.\n"

sub f1()
{
	local($p1,$p2)=@_;
	print"Entering subroutine.\n";
	if($p1>$p2)
	{
		print "Greater\n";
	}
	else
	{
		print "Less\n";
	}
	print "Exiting subroutine.\n";
}