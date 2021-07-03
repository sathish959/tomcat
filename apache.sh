#! /bin/bash
cd /opt
sudo chown ec2-user:ec2-user /opt
wget https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u292-b10/OpenJDK8U-jdk_x64_linux_hotspot_8u292b10.tar.gz
sudo yum install maven -y
wget https://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.68/bin/apache-tomcat-8.5.68.tar.gz
tar -zxvf OpenJDK8U-jdk_x64_linux_hotspot_8u292b10.tar.gz
tar -zxvf apache-tomcat-8.5.68.tar.gz
mv jdk8u292-b10 java8
mv apache-tomcat-8.5.68 tomcat
sudo sed -i '$a export JAVA_HOME=/opt/java8' /etc/profile
sudo sed -i '$a export PATH=$PATH:/opt/java8/bin' /etc/profile
source /etc/profile
yum install maven -y
sudo yum install git -y
git clone https://github.com/sriison/srini-petclinic.git
cd /opt/srini-petclinic
mvn clean install package
mv /opt/srini-petclinic/target/petclinic.war /opt/tomcat/webapps
sh /opt/tomcat/bin/startup.sh 
