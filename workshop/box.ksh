#!/bin/ksh

# PROGRAM:  box
# AUTHOR:   J R PECK 31/5/92
# PURPOSE:  Draws a message box at some specified screen location.
# USAGE:    box right down message text ...

# Check Args.
if [[ $# -lt 3 ]]
then
	print -u2 "$0: Usage: $0 right down message text ..."
	exit 1
fi

# Set Variables.
home=$(tput home)
cud=$(tput cud1) ; cud=$(echo "\033[B\c")
cuu=$(tput cuu1)  
cur=$(tput cuf1)
sbox=$(tput smcup)$(tput font1)
ebox=$(tput rmcup)$(tput font0)
boxset=$(tput box2)
for char in 1 2 3 4 5 6 
do
	eval b$char=$(print $boxset | cut -c$char,$char)
done
	
# Function Definitions.

# Repeating Character Function.
function repeat
{
	typeset char=$1
	typeset -i i=0 length=$2
	print "$(while (( (i=i+1)<=$length)) ; do print "$char\c" ; done)\c"
}
	
# Box Drawing Functon.
function box
{
	typeset -i right down length char
	typeset message line cdwn crht cend

	right=$1
	down=$2
        shift 2
	message=$@
	(( length = ${#message}+4 ))
	
	line=$(repeat $b2 $length)
	cdwn=$(repeat $cud $down)
	crht=$(repeat $cur $right)
	cend=$(repeat $cur $length)
	
	print "$home$cdwn\c"
	print "$crht$sbox$b1$line$b3$ebox"
	print "$crht$sbox$b4$ebox  $message  $sbox$b4$ebox"
	print "$crht$sbox$b6$line$b5$ebox"

	print "$cuu$cuu$crht$cend\c"
}

# Main Program.

# Call Box Draw Function.
box $@

box 0 0 "Another box ..."
box 45 10 "Yet more ..."
box 15 15 "Not!"
box 15 20 "That's all Folks! - Press RETURN To Continue"

# Dummy Read
read input

#END
clear

