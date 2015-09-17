#usage: ipcheck.bash

echo "Enter ip address:"
read ip_address
echo ${ip_address}
if echo ${ip_address} | grep '^[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}$' > /dev/null
then
	echo "Correct format"
else
	echo "Incorrect format"
fi
