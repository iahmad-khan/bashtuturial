#fileperm.ksh

print "ENTER A FILEAME: \c"
read filename junk
if [ -f $filename ]
then
	:
else
	echo "$filename is not an ordinary file."
	exit 25
fi

PS3="Please enter a number: "
select var1 in "list permissions" "view" "modify" "save to diskette" "exit"
do
	case $var1 in
		"list permissions") if [ -r $filename ]
				    then 
					echo "$filename has read permissions"
				    fi
				    if [ -w $filename ]
	 			    then 
					echo "$filename has write permissions"
				    fi
				    if [ -x $filename ]
				    then 
					echo "$filename has execute permissions"
				    fi ;;
		view) 		    print "USE Q TO QUIT, SPACE BAR TO SCROLL";				            sleep 3; more $filename ;;
		modify)             print "NOW ENTERING vi"; sleep 3;
			            vi $filename ;;
		"save to diskette") tar -cvf /dev/fd0 $filename ;;
		exit) 		    exit ;;
		*)	  	    echo "Not a choice.\n" ;;
	esac
done
