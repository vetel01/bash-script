#!bin/bash

#Description: Sonarqube complete installation script
#Author: sebastein
#Date 28-feb-2022


#SonarQube is an open-source platform developed by SonarSource for continuous inspection of code quality.
#SonarQube does static code analysis, which provides a detailed report of bugs, code smells, vulnerabilities, code duplications


echo "Step 1: Java 11 installation"

$ sudo yum update -y

$ sudo yum install java-11-openjdk-devel -y

$ sudo yum install java-11-openjdk -y

echo "Step 2: Downloading SonarQube latest versions"

cd /opt  
$ sudo yum install wget -y
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip

echo "Step 3: Extracting packages"

$ sudo unzip /opt/sonarqube-9.3.0.51899.zip

echo "Step 4: Change ownership to the user and Switch to Linux binaries directory to start service"

$ sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899

$ cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64

$ ./sonar.sh start


#Connect to SonaQube
#Connect to the SonarQube server through the browser. It uses port 9000.
#http://<your-ip-address>:9000
#NB: Some servers have firewall enabled. So if you are not able to connect from the browser, then you might want to open the port 9000 with this command:

#$ sudo firewall-cmd --permanent --add-port=9000/tcp

#Here are the default credentials for access:

#Login: admin
#Password: admin