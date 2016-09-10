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
$val = $data{-JohnPaul}
$val = $data{-Lisa}
