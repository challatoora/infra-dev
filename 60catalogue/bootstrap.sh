#!/bin/bash
set -ex

component=$1

# Install dependencies
sudo dnf install -y python3 python3-pip git python3-libdnf

# Install ansible
pip3 install ansible

# Fix PATH
export PATH=$PATH:/usr/local/bin

cd /home/ec2-user

rm -rf ansible-roboshop-tf
git clone https://github.com/challatoora/ansible-roboshop-tf.git
cd ansible-roboshop-tf

# Create inventory
echo "[${component}]" > inventory
echo "localhost ansible_connection=local" >> inventory

# Run playbook
ansible-playbook -i inventory -e component=$component -e ansible_python_interpreter=/usr/bin/python3 roboshop.yaml