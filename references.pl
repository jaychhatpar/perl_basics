#!/usr/bin/perl
#Create References
=begin comment
$scalarref = \$foo;
$arrayref  = \@ARGV;
$hashref   = \%ENV;
$coderef   = \&handler;
$globref   = \*foo;
=cut

#Dereferencing

$var = 10;

# Now $r has reference to $var scalar.
$r = \$var;

# Print value available at the location stored in $r.
print "Value of $var is : ", $$r, "\n";

@var = (1, 2, 3);
# Now $r has reference to @var array.
$r = \@var;
# Print values available at the location stored in $r.
print "Value of @var is : ",  @$r, "\n";

%var = ('key1' => 10, 'key2' => 20);
# Now $r has reference to %var hash.
$r = \%var;
# Print values available at the location stored in $r.
print "Value of %var is : ", %$r, "\n";


=begin comment
Value of 10 is : 10
Value of 1 2 3 is : 123
Value of %var is : key220key110
=cut

#If you are not sure about a variable type, then its easy to know its type using ref, which returns one of the following strings if its argument is a reference. Otherwise, it returns false 
=begin comment
SCALAR
ARRAY
HASH
CODE
GLOB
REF
=cut
$var = 10;
$r = \$var;
print "Reference type in r : ", ref($r), "\n";

@var = (1, 2, 3);
$r = \@var;
print "Reference type in r : ", ref($r), "\n";

%var = ('key1' => 10, 'key2' => 20);
$r = \%var;
print "Reference type in r : ", ref($r), "\n";

=begin comment
Reference type in r : SCALAR
Reference type in r : ARRAY
Reference type in r : HASH
=cut

###############References to Functions
sub PrintHash{
   my (%hash) = @_;
   
   foreach $item (%hash){
      print "Item : $item\n";
   }
}
%hash = ('name' => 'Tom', 'age' => 19);

# Create a reference to above function.
$cref = \&PrintHash;

# Function call using reference.
&$cref(%hash);

=begin comment
Item : name
Item : Tom
Item : age
Item : 19
=cut