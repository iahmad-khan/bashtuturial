# This is for use with awk -f
BEGIN 	{ getline } 
{ FS=" "; bigger=0 } 
function max( s,l ) 
	{ 
		return s > l ? s:l 
	} { 
		bigger=max($6,bigger) 
	} 
END { print "The best grade in English is "bigger } 
