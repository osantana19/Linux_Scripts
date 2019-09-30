#! /bin/bash

echo "Write group name you'd like to create"
read groupname
sudo groupadd ${groupname}
sudo mkdir ./Users/${groupname}
echo 'Group name' ${groupname} 'has been created'
