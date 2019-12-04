#!/bin/bash

ssh -o StrictHostKeyChecking=no ec2-user@172.31.4.187 /opt/tomcat8/bin/shutdown.sh 
scp target/*.war ec2-user@172.31.4.187:/opt/tomcat8/webapps/devops.war 
ssh ec2-user@172.31.4.187 /opt/tomcat8/bin/startup.sh 