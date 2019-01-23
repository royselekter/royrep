#!/bin/bash#add fix to exercise2 here

sudo chmod 777 /etc/hosts

sleep 1.5

sudo sed -i 's/127.0.0.1 www.ascii-art.de//' /etc/hosts
