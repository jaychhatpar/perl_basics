#Perl - File I/O
#!/usr/bin/perl

open(DATA, "<file.txt") or die "Couldn't open file file.txt, $!";

while(<DATA>){
   print "$_";
}
#open a file for updating without truncating it −
#open(DATA, "+<file.txt"); or die "Couldn't open file file.txt, $!";

#To truncate the file first and then open a file in write mode −
#open DATA, "+>file.txt" or die "Couldn't open file file.txt, $!";

#You can open a file in the append mode. In this mode writing point will be set to the end of the file.
#open(DATA,">>file.txt") || die "Couldn't open file file.txt, $!";

=begin comment
Entities	Definition
< or r	Read Only Access
> or w	Creates, Writes, and Truncates
>> or a	Writes, Appends, and Creates
+< or r+	Reads and Writes
+> or w+	Reads, Writes, Creates, and Truncates
+>> or a+	Reads, Writes, Appends, and Creates
=cut

close(DATA) || die "Couldn't close file properly";

#Sysopen Function
sysopen(DATA, "file.txt", O_RDWR);

#To truncate the file before updating 
sysopen(DATA, "file.txt", O_RDWR|O_TRUNC );

=begin comment
Entities	Definition
O_RDWR	Read and Write
O_RDONLY	Read Only
O_WRONLY	Write Only
O_CREAT	Create the file
O_APPEND	Append the file
O_TRUNC	Truncate the file
O_EXCL 	Stops if file already exists
O_NONBLOCK	Non-Blocking usability
=cut

#Copying Files

# Open file to read
open(DATA1, "<file1.txt");

# Open new file to write
open(DATA2, ">file2.txt");

# Copy data from one file to another.
while(<DATA1>)
{
   print DATA2 $_;
}
close( DATA1 );
close( DATA2 );

#Renaming a file
rename ("/usr/test/file1.txt", "/usr/test/file2.txt" );

#Deleting an Existing File
unlink ("/usr/test/file1.txt");

#File Information


my $file = "/usr/test/file1.txt";
my (@description, $size);
if (-e $file)
{
   push @description, 'binary' if (-B _);
   push @description, 'a socket' if (-S _);
   push @description, 'a text file' if (-T _);
   push @description, 'a block special file' if (-b _);
   push @description, 'a character special file' if (-c _);
   push @description, 'a directory' if (-d _);
   push @description, 'executable' if (-x _);
   push @description, (($size = -s _)) ? "$size bytes" : 'empty';
   print "$file is ", join(', ',@description),"\n";
}

=begin commment
You can test certain features very quickly within Perl using a series of test operators known collectively as -X tests. For example, to perform a quick test of the various permissions on a file, you might use a script like this −

Operator	Definition
-A	Script start time minus file last access time, in days.
-B 	Is it a binary file?
-C 	Script start time minus file last inode change time, in days.
-M 	Script start time minus file modification time, in days.
-O 	Is the file owned by the real user ID?
-R 	Is the file readable by the real user ID or real group?
-S 	Is the file a socket?
-T 	Is it a text file?
-W 	Is the file writable by the real user ID or real group?
-X 	Is the file executable by the real user ID or real group?
-b 	Is it a block special file?
-c 	Is it a character special file?
-d 	Is the file a directory?
-e 	Does the file exist?
-f 	Is it a plain file?
-g 	Does the file have the setgid bit set?
-k 	Does the file have the sticky bit set?
-l 	Is the file a symbolic link?
-o 	Is the file owned by the effective user ID?
-p 	Is the file a named pipe?
-r 	Is the file readable by the effective user or group ID?
-s 	Returns the size of the file, zero size = empty file.
-t 	Is the filehandle opened by a TTY (terminal)?
-u 	Does the file have the setuid bit set?
-w 	Is the file writable by the effective user or group ID?
-x 	Is the file executable by the effective user or group ID?
-z	Is the file size zero?
=cut
