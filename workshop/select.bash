#!/usr/bin/bash

echo 'Select your terminal type:'
PS3='terminal? '
select term in 'IBM 3151' 'WYSE 60' 'DEC vt220' 'xterm'
do
	case $REPLY in
		1 ) TERM=ibm3151 ;;
		2 ) TERM=wyse60 ;;
		3 ) TERM=vt220 ;;
		4 ) TERM=xterm ;;
		* ) echo 'invalid entry' ;;
	esac
done
