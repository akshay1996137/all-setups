#create amazonlinux ec2 with t2.micro and 30 gb of ebs with port 8081 

wget https://download.sonatype.com/nexus/3/nexus-3.81.1-01-linux-x86_64.tar.gz
tar -zxvf nexus-3.81.1-01-linux-x86_64.tar.gz
yum install java-17-amazon-corretto -y
sudo useradd nexus
chown -R  nexus:nexus  nexus-3.81.1-01
sudo sh nexus-3.81.1-01/bin/nexus start
