# Usage: devices.ksh
# This script allows the user to list devices with various specifications

PS3="What devices would you like a listing of?"
select DEV in customized predefined defined available quit
do
	case $REPLY in
		customized|1) lsdev -CH;;
		predefined|2) lsdev -PH;;
		defined|3)    lsdev -CH | grep Defined;;
		available|4)  lsdev -CH | grep Available;;
		quit|5)       exit;;
		*)            echo "Not a choice";;
	esac
done
