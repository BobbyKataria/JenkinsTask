#!/bin/bash

# stop jenkins service
sudo systemctl stop jenkins

# delete outdated jenkins WAR file
sudo rm -r /home/jenkins/jenkins.war

# using user - jenkins to install latest jenkins WAR file 
sudo su - jenkins -c "wget https://updates.jenkins-ci.org/latest/jenkins.war"

# start jenkins servie again
sudo systemctl start jenkins
