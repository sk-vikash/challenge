#! /bin/bash

# Install jquery
yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum install -y jq

curl -s http://169.254.169.254/latest/meta-data | jq .

# Retrieve image id
imageId=$(curl -s http://169.254.169.254/latest/meta-data/ami-id)
echo $imageId

# Retrieve instance id
instanceId=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)
echo $instanceId

# Retrieve instance type
instanceType=$(curl -s http://169.254.169.254/latest/meta-data/instance-type)
echo $instanceType