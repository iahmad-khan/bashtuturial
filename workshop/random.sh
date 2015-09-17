#!/bin/bash
MIN=200
MAX=500
let "scope = $MAX - $MIN"
if [ "$scope" -le "0" ]; then
   echo "Error - MAX is than MIN!"
fi

for i in `seq 1 10`
do
  let result="$RANDOM % $scope + $MIN"
  echo "A random number btw $MIN and $MAX is $result"
done
