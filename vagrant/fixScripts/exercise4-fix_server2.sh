#!/bin/bash#add fix to exercise4-server2 here

sleep 20

sudo chmod 777 /etc/hosts

sleep 1.5

sudo echo "192.168.100.10 server1" >> /etc/hosts
