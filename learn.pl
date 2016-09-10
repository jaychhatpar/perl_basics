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

#control structures
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


############################ Array Creation ############################
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

=begin comment
elements is apple
elements is orange
elements is banana
2nd element is orange
=cut

push @a, "hello";
print "Printing after push\n";
foreach $x(@a)
{
	print "Element after push are ", $x, "\n";
}
=begin comment
Printing after push
Element after push are apple
Element after push are orange
Element after push are banana
Element after push are hello
=cut

pop @a, "hello";
print "Printing after pop\n";
foreach $x(@a)
{
	print "Element after pop are ", $x, "\n";
}
=begin comment
Printing after pop
Element after pop are apple
Element after pop are orange
Element after pop are banana
=cut

@ages = (25, 30, 40);             
@names = ("John Paul", "Lisa", "Kumar");

print "\$ages[0] = $ages[0]\n";
print "\$ages[1] = $ages[1]\n";
print "\$ages[2] = $ages[2]\n";
print "\$names[0] = $names[0]\n";
print "\$names[1] = $names[1]\n";
print "\$names[2] = $names[2]\n";

=begin comment
$ages[0] = 25
$ages[1] = 30
$ages[2] = 40
$names[0] = John Paul
$names[1] = Lisa
$names[2] = Kumar
=cut

@days = qw/Mon Tue Wed Thu Fri Sat Sun/;
foreach $x(@days)
{
	print "Elements is ",$x, "\n";
}
print "$days[0]\n";
print "$days[1]\n";
print "$days[2]\n";
print "$days[6]\n";
print "$days[-1]\n";
print "$days[-7]\n";

=begin comment
Elements is Mon
Elements is Tue
Elements is Wed
Elements is Thu
Elements is Fri
Elements is Sat
Elements is Sun
Mon
Tue
Wed
Sun
Sun
Mon
=cut

@var_10 = (1..10);
@var_20 = (10..20);
@var_abc = (a..z);

print "@var_10\n";   # Prints number from 1 to 10
print "@var_20\n";   # Prints number from 10 to 20
print "@var_abc\n";  # Prints number from a to z
=begin comment
1 2 3 4 5 6 7 8 9 10
10 11 12 13 14 15 16 17 18 19 20
a b c d e f g h i j k l m n o p q r s t u v w x y z
=cut

@array = (1,2,3);
$array[50] = 4;
$size = @array;
$max_index = $#array;

print "Size:  $size\n";
print "Max Index: $max_index\n";
=begin comment
Size:  51
Max Index: 50
=cut

#Adding and Removing Elements in Array

# create a simple array
@coins = ("Quarter","Dime","Nickel");
print "1. \@coins  = @coins\n";

# add one element at the end of the array
push(@coins, "Penny");
print "2. \@coins  = @coins\n";

# add one element at the beginning of the array
unshift(@coins, "Dollar");
print "3. \@coins  = @coins\n";

# remove one element from the last of the array.
pop(@coins);
print "4. \@coins  = @coins\n";

# remove one element from the beginning of the array.
shift(@coins);
print "5. \@coins  = @coins\n";
=begin comment
1. @coins  = Quarter Dime Nickel
2. @coins  = Quarter Dime Nickel Penny
3. @coins  = Dollar Quarter Dime Nickel Penny
4. @coins  = Dollar Quarter Dime Nickel
5. @coins  = Quarter Dime Nickel
=cut

#Slicing Array Elements
@days = qw/Mon Tue Wed Thu Fri Sat Sun/;

@weekdays = @days[3,4,5];
print "@weekdays\n";

@days = qw/Mon Tue Wed Thu Fri Sat Sun/;
@weekdays = @days[3..5];
print "@weekdays\n";
=begin comment
Thu Fri Sat
Thu Fri Sat
=cut

#Splice (Replacing) Array Elements - splice @ARRAY, OFFSET [ , LENGTH [ , LIST ] ]
@nums = (1..20);
print "Before - @nums\n"; 
splice(@nums, 5, 5, 21..25); 
print "After - @nums\n";

=begin comment
Before - 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
After - 1 2 3 4 5 21 22 23 24 25 11 12 13 14 15 16 17 18 19 20
=cut


# define Strings
$var_string = "Rain-Drops-On-Roses-And-Whiskers-On-Kittens";
$var_names = "Larry,David,Roger,Ken,Michael,Tom";

# transform above strings into arrays.
@string = split('-', $var_string);
@names  = split(',', $var_names);

print "$string[3]\n";  # This will print Roses
print "$names[4]\n";   # This will print Michael

=begin comment
Roses
Michael
=cut

#Transform Arrays to Strings - join EXPR, LIST


# define Strings
$var_string = "Rain-Drops-On-Roses-And-Whiskers-On-Kittens";
$var_names = "Larry,David,Roger,Ken,Michael,Tom";

# transform above strings into arrays.
@string = split('-', $var_string);
@names  = split(',', $var_names);

$string1 = join( '-', @string );
$string2 = join( ',', @names );

print "$string1\n";
print "$string2\n";

=begin comment
Rain-Drops-On-Roses-And-Whiskers-On-Kittens
Larry,David,Roger,Ken,Michael,Tom
=cut

#Sorting Arrays - sort [ SUBROUTINE ] LIST
#Please note that sorting is performed based on ASCII Numeric value of the words. So the best option is to first transform every element of the array into lowercase letters and then perform the sort function.
@foods = qw(pizza steak chicken burgers);
print "Before: @foods\n";

# sort this array
@foods = sort(@foods);
print "After: @foods\n";

=begin comment
Before: pizza steak chicken burgers
After: burgers chicken pizza steak
=cut

#The $[ Special Variable - We have a special variable, which is written as $[. This special variable is a scalar containing the first index of all arrays. Because Perl arrays have zero-based indexing, 
#$[ will almost always be 0. But if you set $[ to 1 then all your arrays will use one-based indexing. It is recommended not to use any other indexing other than zero. However, let's take one example to show the usage of $[ variable −

# define an array
@foods = qw(pizza steak chicken burgers);
print "Foods: @foods\n";

# Let's reset first index of all the arrays.
$[ = 1;

print "Food at \@foods[1]: $foods[1]\n";
print "Food at \@foods[2]: $foods[2]\n";

=begin comment
Foods: pizza steak chicken burgers
Food at @foods[1]: pizza
Food at @foods[2]: steak
=cut

#Merging Arrays
@numbers = (1,3,(4,5,6));
print "numbers = @numbers\n";
#numbers = 1 3 4 5 6

@odd = (1,3,5);
@even = (2, 4, 6);
@numbers = (@odd, @even);
print "numbers = @numbers\n";

#numbers = 1 3 5 2 4 6

#Selecting Elements from Lists

$var = (5,4,3,2,1)[4];
print "value of var = $var\n"
#Value of var = 1

@list = (5,4,3,2,1)[1..3];
print "Value of list = @list\n";
#Value of list = 4 3 2

############################ Hashes ############################ 
my %days; #hashes are key value pairs
%days = (1,"Mon",3,"Wed",2,"Tues",4,"Thu");

foreach $key(%days)
{
	print $key, $days{$key},"\n";
}
=begin comment
2Tues
Tues
4Thu
Thu
3Wed
Wed
1Mon
Mon
=cut

foreach $key(sort keys %days)
{
	print $key, $days{$key},"\n";
}

=begin comment
1Mon
2Tues
3Wed
4Thu
=cut

#Adding key and value elements
$days{5}="Friday";
$days{6}="Saturday";
$days{7}="Sunday";

print "After ading 3 key and value pairs.\n";
foreach $key(sort keys %days)
{
	print $key, $days{$key},"\n";
}

=begin comment
After ading 3 key and value pairs.
1Mon
2Tues
3Wed
4Thu
5Friday
6Saturday
7Sunday
=cut

print "After deleting two keys.\n";
#deleting key and value elements
delete($days{4});
foreach $key(sort keys %days)
{
	print $key, $days{$key},"\n";
}

=begin comment
After deleting two keys.
1Mon
2Tues
3Wed
5Friday
6Saturday
7Sunday
=cut

