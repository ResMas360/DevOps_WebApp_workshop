#!/bin/bash
sudo su
yum install -y epel-release
yum install -y ansible
yum install -y vim
cd /vagrant/
ansible-playbook -i "localhost", -c local playbook_prod.yml
