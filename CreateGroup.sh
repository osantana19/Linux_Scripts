#! /bin/bash

echo "Write group name you'd like to create"
read groupname
sudo groupadd ${groupname}
sudo mkdir ./Users/${groupname}
sudo mkdir ./Users/${groupname}/Policy
sudo chmod 744 ./Users/${groupname}/Policy
echo 'Group name' ${groupname} 'has been created'
