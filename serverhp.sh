#! /bin/bash

#This script is made to report the health of the server using lynis

update=$(sudo lynis --check-update)               #this variable will check to see if lynis is up to date
pentest=$(sudo lynis --pentest)                   #this will run a pentest to check status of server
warning=$(sudo grep Warning /var/log/lynis.log)   #this will retreive all the warnings within your system

echo "$pentest"                              #These print out all the variables from above
echo "$warning"
echo "$update"
