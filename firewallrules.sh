#! /bin/bash

#Script I used to change my firewall wall rules for my Centos 7 Linux server

iptables-save > orignaliptables.txt        #Saves the iptables before the change

systemctl start firewalld.service          #This command starts up the firewall

firewall-cmd --zone=public --add-forward-port=port=80:proto=tcp:toport=8080 --permanent  #This forwards port 80 traffic to 8080

firewall-cmd --permanent --zone=trusted --add-port=3306/tcp             #This opens MySQL ports

firewall-cmd --permanent --zone=trusted --add-port=22/tcp               #This opens SSH service

# Can block all SSH by removing the '#' in the script below
#firewall-cmd --permanent --zone=drop --add-port=22/tcp

firewall-cmd --permanent --zone=trusted --add-port=110/tcp              #This opens POP3 port for email
firewall-cmd --permanent --zone=trusted --add-port=25/tcp               #This opens SMTP port for email
firewall-cmd --permanent --zone=trusted --add-port=143/tcp              #This opens IMAP port for email

firewall-cmd --permanent --add-rich-rule='rule family="ipv4" source address="10.0.0.1" reject'     #This will block the ip host 10.0.0.1 from reaching the server

firewall-cmd --permanent --zone=drop --add-port=23/tcp                                            #This code blocks telnet

firewall-cmd --zone=drop --remove-icmp-block={echo-request,echo-reply,timestamp-reply,timestamp-request} --permanent    #This blocks icmp requests from trying to reach my server

sudo firewall-cmd --reload                                             #This reloads the firewall and sets all the above requests

iptables-save > newiptables.txt                                        #This saves the new iptable changes to a new file
