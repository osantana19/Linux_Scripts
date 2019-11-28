#! /bin/bash


#this is a super simple script I used to create a snapshot of users in my CentOS7 server
#I used this script as a cronjob to check if user info was changed

lvcreate -L 1GB -s -n User_Snap /etc/group     #This will create a snapshot of my users and will let me know if changes are being made to my users like adding or deleting them.

