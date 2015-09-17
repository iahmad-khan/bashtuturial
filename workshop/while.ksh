while [[ $# -gt 0 ]]
do
	print $1
	sleep 5
	shift
done >> /tmp/$LOGNAME
