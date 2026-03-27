#!/bin/bash

component=$1
environment=$2
app_version=$3
dnf install ansible -y

cd /home/ec2-user
git clone https://github.com/challatoora/ansible-roboshop-tf.git

cd ansible-roboshop-tf
git pull
ansible-playbook -e component=$component -e env=$environment roboshop.yaml