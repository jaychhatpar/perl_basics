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