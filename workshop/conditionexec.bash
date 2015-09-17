#!/bin/bash

#conditional execution demo

#if command1 is successful , execute command2

ls -l | grep 'ip' && echo "command1 executed successfuly"

#if command1 is unsuccessful , execute command2

who | grep ijaz || echo "ijaz not present"

