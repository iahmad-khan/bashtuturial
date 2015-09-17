#!/usr/bin/ksh 
# This is an example of the complete program 
integer number=0 total=0 size=52 element 
for suit in CLUBS DIAMONDS HEARTS SPADES 
do
	for value in ACE 2 3 4 5 6 7 8 9 10 JACK QUEEN KING 
	do
		card[number]="$value of $suit" 
		number=number+1 
	done
done
another_card=yes
while (( total < 21 )) && [[ "$another_card" = "yes" ]] 
do
	element=RANDOM%size 
	choice=${card[element]} 
	print $choice 
	case $choice in 
		(KING*)		total=total+10 ;; 
		(QUEEN*)	total=total+10 ;; 
		(JACK*)		total=total+10 ;; 
		(10*)		total=total+10 ;; 
		(9*)		total=total+9 ;; 
		(8*)		total=total+8 ;; 
		(7*)		total=total+7 ;; 
		(6*)		total=total+6 ;; 
		(5*)		total=total+5 ;; 
		(4*)		total=total+4 ;; 
		(3*)		total=total+3 ;; 
		(2*)		total=total+2 ;; 
		(ACE*)		total=total+1 ;; 
		(*)		print "Do you always cheat?" 
	esac 
	print That makes $total 
	read another_card?"Another card [yes or no]: " 
	size=size-1 
	card[element]=${card[size]} 
done 
