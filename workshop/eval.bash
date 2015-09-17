#!/usr/bin/ksh
for i in 1 2 3 4 
do 
	eval var$i=$i 
	eval echo var$i = \$var$i 
done
