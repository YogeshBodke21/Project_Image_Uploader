#!/usr/bin/env bash

sudo apt install -y python3-pip

sudo apt install -y nginx
sudo apt install -y virtualenv


# Create a new virtual environment
virtualenv venv
source venv/bin/activate
sudo pip3 install -r requirements.txt