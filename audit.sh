#! /bin/bash

#This script is made to check the integrity of files on my Linux server and check to see if any changes were made
#I added it to a cronjob so it would run whenever my server was up

sudo auditctl -w /etc/passwd -p rwxa -k passwdchange  #Will check to see if passwd list changed

sudo auditctl -w /etc/.* -p rwxa -k hiddenchange  #will check hidden files to look for changes

sudo auditctl -w /root/.* -p rwxa -k rootchange   #will check changes in root
