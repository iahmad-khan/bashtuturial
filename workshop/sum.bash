#!/bin/bash
#This program calculates the mean of the 3rd colomn of
#A csv file containing numeric values

count=0
sum=0
IFS=,

while read _ _ val
do
let sum="$sum + $val"
let count="$count + 1"
done < data.csv

if [ $count -ne 0 ]; then
   let avg="$sum / $count"
   echo "The avarage of 3rd colomn is $avg"
fi

echo "Done!"
