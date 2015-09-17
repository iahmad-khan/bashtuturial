# This awk program has no BEGIN statment
awk '{ wcount += NF }
END   { 	print "Lines\tWords\tAverage" 
		print NR, "\t", wcount, "\t", wcount / NR }'$HOME/phone.list
