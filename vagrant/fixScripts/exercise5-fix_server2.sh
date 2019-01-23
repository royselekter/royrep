#!/bin/bash#add fix to exercise5-server2 here

sudo apt-get install sshpass

ssh-keygen -t rsa -f /home/vagrant/.ssh/id_rsa -q -N ""

sudo sed -i 's/#   ForwardAgent no/StrictHostKeyChecking no/' /etc/ssh/ssh_config

sudo chown vagrant /home/vagrant/.ssh/id_rsa

sudo chown vagrant /home/vagrant/.ssh/id_rsa.pub

sudo sed -i 's/HashKnownHosts yes/HashKnownHosts no/' /etc/ssh/ssh_config

sshpass -p "vagrant" ssh-copy-id -i /home/vagrant/.ssh/id_rsa.pub vagrant@192.168.100.10

sshpass -p "vagrant" scp vagrant@192.168.100.10:/home/vagrant/.ssh/id_rsa.pub /vagrant/.ssh/

sudo sleep 15

sudo mv /home/vagrant/.ssh/ass.pub /home/vagrant/.ssh/id_authorized_keys
