#! /bin/bash

#This scrippt is used to detect ip info happening on your Linux server and make a pcap file so you can examine ip packets. 
#This script also gives you the last login info of users coming onto your server.

#I personally used this script as a cron job which I made run over night from 12am-6am to see info happening over night.




sudo tcpdump -w ipinfo.pcap -n -i enp0s3 tcp  #creates a pcap file that you can use to view ip packets going through your network card

last | head >> loginfo.txt                    #tells you what are the last handful of logins onto your server

last oliver >> loginfo.txt                    #tells you when a certain user logs into the server. replace "oliver" with username you want to check.
