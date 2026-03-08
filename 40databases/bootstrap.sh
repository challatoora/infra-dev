#!/bin/bash
set -ex

component=$1

# Install required packages
sudo dnf install -y python3 python3-pip git

# Install latest ansible using pip (more stable)
pip3 install ansible

cd /home/ec2-user

rm -rf ansible-roboshop-tf
git clone https://github.com/challatoora/ansible-roboshop-tf.git

cd ansible-roboshop-tf

ansible-playbook -e component=$component roboshop.yaml