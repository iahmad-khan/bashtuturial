#!/usr/bin/ksh
#####################################################################
#
# cread - KORN shell script to read up to 9 characters from standard
#         input, without requiring the user to press enter or return.
#
# Written By:  John Peck - IBM (UK) Ltd.
#
# Date Last Modified:  19/5/94
#
# Permissions:  -rwxr-xr-x  bin  bin
#
# Syntax:  Run "cread -?" for usage below.
#
#####################################################################

# Set variables.
prog=$0

# Define usage function for error messages.
function usage
{
   print -u2 "$prog: Usage: $prog [-v] [count_to_read [output_stream] ]"
   print -u2 "                      default count_to_read = 1 (1 - 9)"
   print -u2 "                      default output_stream = 1 (stdout)"
   print -u2 '         Example of use in another script: REPLY=$(cread)'
   exit $1
}

# Check options for "-v", "-?" or an erroneous option.
if [[ "$1" = "-v" ]]
then
   DEBUG=on
   shift
elif [[ "$1" = "-?" ]]
then
   usage 1
else
   DEBUG=off
fi

# Check arguments for default values to be used.
if [[ -z "$1" ]]
then
   set 1 $3
fi
if [[ -z "$2" ]]
then
   set $1 1
fi

# Check for other errors in usage.
if [[ "$1" != [1-9] || "$2" != [1-9] ]]
then
   usage 2
fi

# Set number of characters to read in.
charcount=$1
if [[ $charcount -ne 1 ]]
then
   s=s
fi

# If "-v" print prompts.
if [[ $DEBUG = on ]]
then
   print -u$2 -n "\n  Please type just $1 character$s : "
fi

# Go into raw mode, and use dd to capture required input.
trap 'stty -raw; exit 3' 1 2 3 15
stty raw
char=$(dd if=$(tty) bs=1 count=$charcount 2> /dev/null)
stty -raw
trap - 1 2 3 15

# If "-v" print prompts.
if [[ $DEBUG = on ]]
then
   print -u$2 -n "\n\n\t\tYour character$s : "
fi

# Print out the input.
print -u$2 -R $char

# If "-v" print end of prompts.
if [[ $DEBUG = on ]]
then
   print -u$2 
fi
