#!/usr/bin/ksh
# Hacked : John Allwright IBM Hursley 6/8/93	
#
# Usage : pickc
#

function hit 
# Deal a card
{

	pickno=RANDOM%decksize
	print ${card[pickno]}
	card[pickno]=${card[decksize-1]}
	decksize=decksize-1

}

function scorecard
# scorecard cardstring currentscore
{
	  case $1 in
		( [2-9]* ) print $1 | cut -c1;;
        	( ACE* ) {  
		  	   if [[ $2 -gt 10 ]]
		       	      then print 1        
		           else
				   print 11		
		           fi       } ;;
		( * )   print 10;;
	esac         
}

function box
# box cardstring
{
	pos $x $y
	print -n "$sb"
	print -n "$b1$b2$b2$b2$b2$b2$b3$cl$cl$cl$cl$cl$cl$cl$cd$b4$eb"
	print -n "$(print "$1" | cut -c1-5 | sed 's/[OF]/ /g')"
	print -n "$sb$b4$cl$cl$cl$cl$cl$cl$cl$cd$b4$eb     $sb$b4$cl$cl$cl$cl$cd"
	print -n "$cl$cl$cl$b6$b2$b2$b2$b2$b2$b5$eb"
x=x+4
y=y+2

}

function pos
# pos x y - position the cursor
{
n=0
print "$sb$hm"
while [[ $n -le $2 ]]
do
	print -n "$cd"
	n=n+1

done
print -n "$sb"
n=0
while [[ $n -le $1 ]]
do
	print -n "$cr"
	n=n+1
done
print -n "$eb"
}

while [[ "$REPLY" != "n" ]]
do
clear
sb=$(tput smcup)$(tput font1)
eb=$(tput rmcup)$(tput font0)
bx=$(tput box2)
cr=$(tput cuf1)
cl=$(tput cub1)
cd=$(tput cud1) ; cd=$(echo "\033[B\c")
cu=$(tput cuu1)
hm=$(tput home)

typeset -L1 b1=$bx
typeset -L2 tmp2=$bx
typeset -L3 tmp3=$bx
typeset -L4 tmp4=$bx
typeset -L5 tmp5=$bx
typeset -L6 tmp6=$bx
typeset -R1 b2=$tmp2
typeset -R1 b3=$tmp3
typeset -R1 b4=$tmp4
typeset -R1 b5=$tmp5
typeset -R1 b6=$tmp6

integer n=0 x=0 y=2 number=0 decksize=52 score=0 pickno compscore=0

set -A card "ACE OF CLUBS" "2 OF CLUBS" "3 OF CLUBS" "4 OF CLUBS" "5 OF CLUBS" "6 OF CLUBS" "7 OF CLUBS" "8 OF CLUBS" "9 OF CLUBS" "10 OF CLUBS" "JACK OF CLUBS" "QUEEN OF CLUBS" "KING OF CLUBS" "ACE OF DIAMONDS" "2 OF DIAMONDS" "3 OF DIAMONDS" "4 OF DIAMONDS" "5 OF DIAMONDS" "6 OF DIAMONDS" "7 OF DIAMONDS" "8 OF DIAMONDS" "9 OF DIAMONDS" "10 OF DIAMONDS" "JACK OF DIAMONDS" "QUEEN OF DIAMONDS" "KING OF DIAMONDS" "ACE OF HEARTS" "2 OF HEARTS" "3 OF HEARTS" "4 OF HEARTS" "5 OF HEARTS" "6 OF HEARTS" "7 OF HEARTS" "8 OF HEARTS" "9 OF HEARTS" "10 OF HEARTS" "JACK OF HEARTS" "QUEEN OF HEARTS" "KING OF HEARTS" "ACE OF SPADES" "2 OF SPADES" "3 OF SPADES" "4 OF SPADES" "5 OF SPADES" "6 OF SPADES" "7 OF SPADES" "8 OF SPADES" "9 OF SPADES" "10 OF SPADES" "JACK OF SPADES" "QUEEN OF SPADES" "KING OF SPADES" 

while [[ $score -lt 21 && $(print $REPLY | grep '[Nn]' ; print $?) -ne 0 ]]
do
	pickcard=$(hit)
	box "$pickcard"
	score=score+$(scorecard "$pickcard" $score)
	pos 1 15
	print Your score is now $score
	print
	if [[ $score -lt 21 ]]
	then
		pos 1 16
		print "another card?"
		read
        fi


done
pos 1 15
if (( score < 22 ))
then
print "You stuck on : $score         "
else
print "You are Bust!       "
fi

print "                      "
print "                      "

x=20
y=2

while  ((  compscore < 21 && ( compscore < 17 || compscore < score )))
do
	pickcard=$(hit)
	box "$pickcard"
	compscore=compscore+$(scorecard "$pickcard" $compscore)
	pos 20 15
	print "Dealer scores $compscore"
done


if (( score > 21 )) 
then
score=0
fi

if (( compscore > 21 ))
then
pos 20 16
print "Dealer Bust         "
compscore=0
fi

sleep 5
pos 0 12
print

if (( compscore == score ))
then
	banner "DRAW!"
elif (( compscore > score ))
then
	banner "I WIN!"
else
	banner "YOU WIN!"
fi
read REPLY?"Another ?"
done
