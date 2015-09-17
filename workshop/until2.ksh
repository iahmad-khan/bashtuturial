until who | grep team20 > /dev/null
do
	print "team20 is not logged on"
	sleep 10
done
print "team20 has now logged on"
