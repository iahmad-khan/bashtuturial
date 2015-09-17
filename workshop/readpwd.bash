#!/bin/bash

IFS=:

while read name _ _ _ _ _ shell
do
   echo "Username $name has shell $shell"
done </etc/passwd
