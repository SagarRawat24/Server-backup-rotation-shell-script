#!/bin/bash

# script for the aws cli  installation
sudo apt-get update
sudo apt-get install unzip

unzip --version

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

