#!/bin/bash
echo "Gathering updates"
yum update -qy

# Installation
echo "Installing applications"
yum install -qy python3-pip git silversearcher-ag unzip

# Install Pip Modules
echo "Installing Python Modules"
pip3 install cfn-lint

# # Install AWS CLI
echo "Installing AWS"
curl -s "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" &&\
unzip -q awscliv2.zip &&\
./aws/install
