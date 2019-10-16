
import os

print("Write file name that contains users")                   #Asks user for the file they want to read
UserNamesTxt = input()

myfile = open(str(UserNamesTxt), mode = 'r', encoding='utf-8') #Creates variable $myfile that opens the file specified by the user when called upon
UserList = []                                                  #UserList used to store the UserNames and their GroupNames 
ans = 'no'                                                     #Used for the if statement/ needed to be defined before the for loop

for line in myfile:                                            #For loop to read  specificed file stored in the $UserNamesTxt variable line by line 
    print(line)     
    username= str(line[:1]) 
    username2 = (line.split(' ')[1:4]) 
    username3 = ''.join(username2) 
    username4 = str(username) + str(username3) 
    if ans == 'no':                                            #If statement that checks to see if the  user wants to create users in the same group or not
        print('What group would you like the user ' + username4 + ' to be apart of?')
        grpname = input()
        grpname = (grpname + '// ')
        UserList.append(username4 + ', ' + grpname)
        os.system()
        print (username4 + ' has been added to group named ' + grpname)
        print ( 'Would you like to use the same  group name for the rest of the users? Write \'yes\' or \'no\'.')
        ans = input()
    else:        
        UserList.append(grpname + username4)
        print (username4 + ' has been added to group named ' + grpname)
    
    

usrlst = ''.join(UserList)                                    #Removes odd spacing from userlist
print(usrlst)


print("What file name do you want to save the UserNames and their Associated groups to?")    
usrtxt = input()                                              #Asks the user to specify what txt file they would like the UserName and Groups to be exported to.  
with open(str(usrtxt), mode = 'w+') as expfile:               #Writes and makes the file specified by the user            
    expfile.write(str(usrlst))
    expfile.close
