
print("Write file name that contains users")
UserNamesTxt = input()

myfile = open(str(UserNamesTxt), mode = 'r', encoding='utf-8')
UserList = []
for line in myfile:
    print(line)
    username= str(line[:1])
    username2 = (line.split(' ')[1:4])
    username3 = ''.join(username2)
    username4 = str(username) + str(username3)
    print(username4)
    UserList.append(username4)
usrlst = ''.join(UserList)
print(usrlst)


print("What file name do you want to save as?")
usrtxt = input()
with open(str(usrtxt), mode = 'w+') as expfile:
    expfile.write(str(usrlst))
    expfile.close
