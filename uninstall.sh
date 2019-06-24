#!/bin/bash

# stop jenkins service
sudo systemctl stop jenkins

# reload daemon
sudo systemctl daemon-reload

# remove jenkins service
sudo rm -r /etc/systemd/system/jenkins.service

# deleting jenkins user using root
sudo su - root -c "userdel jenkins | rm -r /home/jenkins"
