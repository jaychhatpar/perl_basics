#Perl - Subroutines
## Function call
#!/usr/bin/perl
$a = 10;
@b = (1, 2, 3, 4);
###############  Function definition ############### 
sub Hello{
   print "Hello, World!\n";
}#Hello, World!

############### Passing Arguments to a Subroutine ############### 
sub Average{
   # get total number of arguments passed.
   $n = scalar(@_);
   $sum = 0;

   foreach $item (@_){
      $sum += $item;
   }
   $average = $sum / $n;

   print "Average for the given numbers : $average\n";
}#Average for the given numbers : 20

############### Passing Lists to Subroutines ############### 
sub PrintList{
   my @list = @_;
   print "Given list is @list\n";
}#Given list is 10 1 2 3 4

############### Passing Hashes to Subroutines ############### 
sub PrintHash{
   my (%hash) = @_;

   foreach my $key ( keys %hash ){
      my $value = $hash{$key};
      print "$key : $value\n";
   }
}
%hash = ('name' => 'Tom', 'age' => 19);
#name : Tom
#age : 19

############### Returning Value from a Subroutine ############### 

sub Average_ret{
   # get total number of arguments passed.
   $n = scalar(@_);
   $sum = 0;

   foreach $item (@_){
      $sum += $item;
   }
   $average = $sum / $n;

   return $average;
}#Average for the given numbers : 20

############### Private Variables in a Subroutine ############### 
# Global variable
$string = "Hello, World!";

sub PrintHello{
   # Private variable for PrintHello function
   my $string;
   $string = "Hello, Perl!";
   print "Inside the function $string\n";
}

################# Temporary Values via local()
$string = "Hello, World!";

sub PrintHello{
   # Private variable for PrintHello function
   local $string;
   $string = "Hello, Perl!";
   PrintMe();
   print "Inside the function PrintHello $string\n";
}
sub PrintMe{
   print "Inside the function PrintMe $string\n";
}

################### State Variables via state()

use feature 'state';

sub PrintCount{
   state $count = 0; # initial value

   print "Value of counter is $count\n";
   $count++;
}

Hello();
Average(10, 20, 30);
PrintList($a, @b);
PrintHash(%hash);
$num = Average_ret(10, 20, 30);
print "Average for the given numbers : $num\n";
PrintHello();
print "Outside the function $string\n";
PrintHello();
print "Outside the function $string\n";
for (1..5)
{
   PrintCount();
}

