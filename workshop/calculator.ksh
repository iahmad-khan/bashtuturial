#!/bin/ksh 
# A calculator that uses the bc command 
print " "
print "*-+/^*-+/^*-+/^*-+/^*-+/^*-+/^*-+/^*-+/^*-+/^*-+/^ "
print "      A CALCULATOR PROGRAM USING CO=PROCESS "
print "*-+/^*-+/^*-+/^*-+/^*-+/^*-+/^*-+/^*-+/^*-+/^*-+/^ "
print " "

bc |&					# Open co-process 

while true 
do					# Change to a meaningful prompt
	PS3="Select one of the operators: " 
	select oper in add sub mul div exp
do
    case $oper in 			# Figure out what operation to do 
	add) oper="+"; break ;; 
	sub) oper="-"; break ;; 
	mul) oper="*"; break ;; 
	div) oper="/"; break ;; 
	exp) oper="^"; break ;; 
	  *) print "Please choose a number" ;;
    esac 
done

print -p scale=3			# write to the co-process 
read first?"Enter two numbers then press <ENTER> " second   # and to stdout

print -p "$first" "$oper" "$second"	#write to the co-process 
read -p result				#read from the co-process 
	print $result 
	read more?"Do you want to do another? "
	
	case $more in 
		[Nn]* )  break  ;; 
		    * )  continue  ;; 
	esac 
 done 

print "That's All Folks! "

# END  
