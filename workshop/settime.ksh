# This script will place the current time into your prompt.
export SECONDS="$(date '+3600*%H+60*%M+%S')" 
typeset -Z2 hour minute 
eval timenow='$((hour=(SECONDS/3600)%24)):$((minute=(SECONDS/60%60))'
export PS1='($timenow) > '
