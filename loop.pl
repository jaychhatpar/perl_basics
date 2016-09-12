#!/usr/local/bin/perl

=begin comment
while loop
	Repeats a statement or group of statements while a given condition is true. It tests the condition before executing the loop body.

until loop
	Repeats a statement or group of statements until a given condition becomes true. It tests the condition before executing the loop body.

for loop
	Executes a sequence of statements multiple times and abbreviates the code that manages the loop variable.

foreach loop
	The foreach loop iterates over a normal list value and sets the variable VAR to be each element of the list in turn.

do...while loop
	Like a while statement, except that it tests the condition at the end of the loop body

nested loops
	You can use one or more loop inside any another while, for or do..while loop.
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

#foreach loop
@list = (2, 20, 30, 40, 50);

# foreach loop execution
foreach $a (@list)
{
    print "value of a: $a\n";
}

#Nested for loop
$a = 0;
$b = 0;

# outer while loop
while($a < 3){
   $b = 0;
   # inner while loop
   while( $b < 3 ){
      print "value of a = $a, b = $b\n";
      $b = $b + 1;
   }
   $a = $a + 1;
   print "Value of a = $a\n\n";
}
=begin comment
value of a = 0, b = 0
value of a = 0, b = 1
value of a = 0, b = 2
Value of a = 1

value of a = 1, b = 0
value of a = 1, b = 1
value of a = 1, b = 2
Value of a = 2

value of a = 2, b = 0
value of a = 2, b = 1
value of a = 2, b = 2
Value of a = 3
=cut

