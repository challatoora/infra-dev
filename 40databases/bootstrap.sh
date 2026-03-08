#!/bin/bash
set -ex

component=$1

dnf install ansible git -y

cd /home/ec2-user

rm -rf ansible-roboshop-tf
git clone https://github.com/challatoora/ansible-roboshop-tf.git

cd ansible-roboshop-tf

ansible-playbook -e component=$component roboshop.yaml