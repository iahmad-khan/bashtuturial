#!/bin/bash

for filename in ./*
do 
	if [[ -d "$filename" ]] 
	then
		ls -ld $filename
	fi
done

#taking the list from commandline
for item
do
echo "item number $item"
done

#arithmetic for loop

for (( num=0; num<5; num++ ))
do
   echo "Iteration number $num"
done
