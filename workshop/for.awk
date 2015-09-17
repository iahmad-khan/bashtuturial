# Name: awk_for
# Print out the number of lines with a certain number of words using for.     

awk '{ len[NF]++ }
	END	{
 		for ( i=0; i <= NR+1; i++)
		{  if (len[i])
			print len[i], "  lines with ", i, " words"
			}
		}' $HOME/results

