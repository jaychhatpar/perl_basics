#Format
#Perl uses a writing template called a 'format' to output reports. To use the format feature of Perl, you have to define a format first and then you can use that format to write formatted data.
#!/usr/bin/perl

format EMPLOYEE =
===================================
@<<<<<<<<<<<<<<<<<<<<<< @<< 
$name $age
@#####.##
$salary
===================================
.

format EMPLOYEE_TOP =
===================================
Name                    Age Page @<
                                 $%
===================================                               
.


select(STDOUT);
$~ = EMPLOYEE;
$^ = EMPLOYEE_TOP;

@n = ("Jayesh", "Bhushan", "Rahul");
@a  = (20,30, 40);
@s = (2000.00, 2500.00, 4000.000);

$i = 0;
foreach (@n){
   $name = $_;
   $age = $a[$i];
   $salary = $s[$i++];
   write;
}