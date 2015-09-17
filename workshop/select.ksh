#!/usr/bin/ksh

print 'Select your terminal type:'
PS3='terminal? '
select term in 'IBM 3151' 'WYSE 60' 'DEC vt220' 'xterm'
do
	case $REPLY in
		1 ) TERM=ibm3151 ;;
		2 ) TERM=wyse60 ;;
		3 ) TERM=vt220 ;;
		4 ) TERM=xterm ;;
		* ) print 'invalid entry' ;;
	esac
done
