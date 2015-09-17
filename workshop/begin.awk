# This has no END statement 
awk ' BEGIN { print "Lines\tWords\tAverage So Far" } 
{ wcount += NF } 
END { print NR, "\t", wcount, "\t", wcount / NR }' $HOME/phone.list 
