# This awk script will count how many lines have 1 word, 2 words, etc.
awk '{ len[NF]++ } 
	END	{ i = 0 
		while( i <= NR+1 )	{ 
		if (len[i])	{
			print len[i], " lines with ", i, " words" 
				} 
			  i++ 
			}
		} '  $HOME/results  
