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


#The ? : Operator
#Exp1 ? Exp2 : Exp3;

$value=100;
$less = "Less than 50\n";
$more = "more than 50\n";
$ans= $value>50?$more:$less;
print "$ans\n";
