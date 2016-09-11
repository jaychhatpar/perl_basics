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

%data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);
print "\$data{'John Paul'} = $data{'John Paul'}\n";
print "\$data{'Lisa'} = $data{'Lisa'}\n";
print "\$data{'Kumar'} = $data{'Kumar'}\n";
=begin comment
$data{'John Paul'} = 45
$data{'Lisa'} = 30
$data{'Kumar'} = 40
=cut

#You can also create hash in this way
#Method1
$data{'John Paul'} = 45;
$data{'Lisa'} = 30;
$data{'Kumar'} = 40;

#Method2
%data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);

#Method3 
%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);

#Accessing Hash Elements
print "$data{'John Paul'}\n";
print "$data{'Lisa'}\n";
print "$data{'Kumar'}\n";
=begin comment
45
30
40
=cut

#Method4
%data = (-JohnPaul => 45, -Lisa => 30, -Kumar => 40);
$val1 = $data{-JohnPaul};
$val2 = $data{-Lisa};

#Extracting Slices
%data = (-JohnPaul => 45, -Lisa => 30, -Kumar => 40);
@array = @data{-JohnPaul, -Lisa};
print "Array : @array\n";
#Array : 45 30

#Extracting Keys and Values - keys %HASH
%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);

@names = keys %data;
print "$names[0]\n";
print "$names[1]\n";
print "$names[2]\n";
=begin comment
Lisa
John Paul
Kumar
=cut

@ages = values %data;
print "$ages[0]\n";
print "$ages[1]\n";
print "$ages[2]\n";
=begin comment
30
45
40
=cut

#Checking for Existence - If you try to access a key/value pair from a hash that doesn't exist, you'll normally get the undefined value, and if you have warnings switched on, then you'll get a warning generated at run time. You can get around this by using the exists function, which returns true if the named key exists, irrespective of what its value might be 
%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);

if( exists($data{'Lisa'} ) ){
   print "Lisa is $data{'Lisa'} years old\n";
}
else{
   print "I don't know age of Lisa\n";
}
#Lisa is 30 years old

#Getting Hash Size

%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);

@keys = keys %data;
$size = @keys;
print "1 - Hash size:  is $size\n";

@values = values %data;
$size = @values;
print "2 - Value size:  is $size\n";
=begin comment
1 - Hash size: is 3
2 - Value size: is 3
=cut

#Add and Remove Elements in Hashes

%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);
@keys = keys %data;
$size = @keys;
print "1 - Hash size:  is $size\n";

# adding an element to the hash;
$data{'Jayesh'} = 55;
@keys = keys %data;
$size = @keys;
print "2 - Hash size:  is $size\n";

# delete the same element from the hash;
delete $data{'Jayesh'};
@keys = keys %data;
$size = @keys;
print "3 - Hash size:  is $size\n";
=begin comment
1 - Hash size: is 3
2 - Hash size: is 4
3 - Hash size: is 3
=cut