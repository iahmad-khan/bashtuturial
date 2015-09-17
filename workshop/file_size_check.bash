#!/bin/bash

#check file size greater than zero

if test -s data.csv; then
   echo "file size greater than zero using test -s filename"
fi
if [ -s data.csv ]; then
   echo "file size greater than zero using [ -s filename]"
fi
if [[ -s data.csv ]]; then
   echo "file size greater than zero using [[ -s filename ]]"
fi
echo "Done!!"
