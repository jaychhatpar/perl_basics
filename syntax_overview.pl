#Syntax overview
#!/usr/bin/perl

# This is a single line comment
print "Hello, world\n";

=begin comment
This is all part of multiline comment.
You can use as many lines as you like
These comments will be ignored by the 
compiler until the next =cut is encountered.
=cut

$a = 10;
print "Value of a = $a\n";
print 'Value of a = $a\n';

=beign comment
Value of a = 10
Value of a = $a\n
=cut

$a = 10;
$var = <<"EOF";
This is the syntax for here document and it will continue
until it encounters a EOF in the first line.
This is case of double quote so variable value will be 
interpolated. For example value of a = $a
EOF
print "$var\n";

$var = <<'EOF';
This is case of single quote so variable value will not be 
interpolated. For example value of a = $a
EOF
print "$var\n";

=beign comment
This is the syntax for here document and it will continue
until it encounters a EOF in the first line.
This is case of double quote so variable value will be
interpolated. For example value of a = 10

This is case of single quote so variable value will be
interpolated. For example value of a = $a
=cut

$result = "This is \"number\"";
print "$result\n";
print "\$result\n";

=beign comment
This is "number"
$result
=cut