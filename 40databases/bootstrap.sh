#!/bin/bash
set -ex

component=$1

# Install dependencies
sudo dnf install -y python3 python3-pip git python3-libdnf
pip3 install ansible

cd /home/ec2-user

# Clone repo
rm -rf ansible-roboshop-tf
git clone https://github.com/challatoora/ansible-roboshop-tf.git
cd ansible-roboshop-tf

# Create inventory
echo "[${component}]" > inventory
echo "localhost ansible_connection=local" >> inventory

# Run playbook with Python 3
ansible-playbook -i inventory -e component=$component roboshop.yaml