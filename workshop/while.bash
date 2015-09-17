while [[ $# -gt 0 ]]
do
	echo $1
	sleep 5
	shift
done >> /tmp/$LOGNAME
