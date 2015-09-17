#!/bin/bash

if [ "$UID" -ne "0" ]; then
   echo "Sorry , you are not root!!!"
else
   echo "You are root , you may proceed plz.!!!"
fi
