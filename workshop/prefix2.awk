# This awk program will change the prefix of a phone number
 { x = substr($4,1,1) 
		if (x<4) { 
		print $2, "555-"$4 
		 } 
		 else {
		print $2, "666-"$4  
		 } 
	} 
