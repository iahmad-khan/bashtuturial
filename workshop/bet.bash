# This is for the optional exercises 
function bet 
{ 
	integer n=0 
	while [[ "${chars[n]}" != "$1" ]] 
	do 
		n=n+1 
	done 
	if [[ "$n" = 26 ]] 
	then 
		echo a 
	else 
		echo ${chars[n+1]} 
	fi 
} 
