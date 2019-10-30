#This is a python script made to run in Linux which will display your network info and save it to a file.

import os                                             #imports os so we can run the operating system commands
import datetime                                       #imports object to tell time/date

print("Here is your network information")
now = datetime.datetime.now()                         #variable checks for current date in operating system
datenow= now.strftime('%d-%m-%Y')                     #configures display for the current date in operating system
txtfile= ("networkinfo" + datenow + ".txt")           #saves file with name and date

showip=("ip addr show")                               #variable used to show ip info
saveip=("ip addr show > " + txtfile)                  #variable that saves ip info
os.system(showip)
os.system(saveip)

showdns=("cat /etc/resolv.conf")                      #variable used to show ip info
savedns=("cat /etc/resolv.conf >> " + txtfile)        #variable that saves ip info
os.system(showdns)
os.system(savedns)

showports=("netstat -tulnp")                          #variable used to show ip info
saveports=("netstat -tulnp >> " + txtfile)            #variable that saves ip info
os.system(showports)
os.system(saveports)

print("The file named " + txtfile + " has been created!")  
