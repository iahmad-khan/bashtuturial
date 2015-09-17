until who | grep team20 > /dev/null
do
	echo "team20 is not logged on"
	sleep 10
done
echo "team20 has now logged on"
