#! /bin/bash

#Used this as a cronjob to create a hashed version of my user group file to see if anyone added/deleted users

count=$(date +%u)                  #This variable will hold the day of the week as a number

filename="group_new${count}"
sudo cp /etc/group /etc/${filename}    #Will make a copy of the group file so we can hash it later to compare

filename2="group_hash${count}.md5"
sudo md5sum /etc/${filename} > ~/hash/${filename2}    #Will save a hashed version of the group file

