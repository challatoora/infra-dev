#!/bin/bash

component=$1
environment=$2
dnf install ansible -y

cd /home/ec2-user
git clone https://github.com/challatoora/ansible-roboshop-tf.git

cd ansible-roboshop-tf

ansible-playbook -e component=$component roboshop.yaml