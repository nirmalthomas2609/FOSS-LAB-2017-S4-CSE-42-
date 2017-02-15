print("Please enter a string on which you would like to perform the regular expression operations\n");
$a=<>;
$c=0;
while ($c==0)
{
	print("Please enter the Regular expression to be evaluated\n");
	$b=<>;
	@regex=split("",$b);
	if ($regex[0] eq "m")
	{
		print ("The regular expression entered is a match operator\n");
		$len=length $b;
		$b=substr $b,2,$len-4;
		if($a=~$b)
		{
			print("There is a match found in the input string\n");
		}
		else
		{
			print ("There is no match found in the input string\n");
		}
	}
	elsif ($regex[0] eq "s")
	{
		print ("The regular expression is a substitute operator\n");
		$i=2;
		$t1="";
		for ($i=2;$i<length $b;$i=$i+1)
		{
			if($regex[$i] eq '/')
			{
				last;
			}
			else
			{
				$t1=$t1.$regex[$i];
			}
		}
		$i=$i+1;
		$t2="";
		for ($r=$i;$r<length $b;$r=$r+1)
		{
			if($regex[$r] eq '/')
			{
				last;
			}
			else
			{
				$t2=$t2.$regex[$r];
			}
		}
		$a=~s/$t1/$t2/;
		print ("The contents of the string now is $a\n");
	}
	elsif($regex[0] eq 't' && $regex[1] eq 'r')
	{
		print ("The regular expression if a translate operator\n");
		$i=3;
		$t1="";
		for ($i=3;$i<length $b;$i=$i+1)
		{
			if($regex[$i] eq '/')
			{
				last;
			}
			else
			{
				$t1=$t1.$regex[$i];
			}
		}
		$i=$i+1;
		$t2="";
		for ($r=$i;$r<length $b;$r=$r+1)
		{
			if($regex[$r] eq '/')
			{
				last;
			}
			else
			{
				$t2=$t2.$regex[$r];
			}
		}
		$a=~tr/$t1/$t2/;
		print ("The current contents of the string are $a\n");
	}
	print("Enter 0 if you would like to continue with the program, Enter 1 to exit from the program\n");
	$c=<>;
}