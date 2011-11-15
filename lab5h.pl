use warnings;
use strict;

open (FILE,"situatie-1.txt") or die $!;
foreach(<FILE>)
{
	
		if(@_ = (~m/^(<li>)(\w*)\s(\S*)\s([--]|[-])\s(\d)(\s*)/)&(~m/^(<li>)(\w*)\s(\S*)\s(\S*)\s([--]|[-])\s(\d)/))
		{
			print "$2 $3 $5 $6";
		}

	print "\n";
}
close(FILE);
