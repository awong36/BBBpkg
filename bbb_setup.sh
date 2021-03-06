#!/bin/bash

echo "=========== Device Update ==========="
apt-get update
apt-get -y upgrade
apt-get -y install ntp
apt-get -y install cython
apt-get -y install usbmount
apt-get -y install dos2unix
apt-get -y install lsof
echo "=========== Date Modification ==========="
mv /etc/localtime /etc/localtime.old
ln -s /usr/share/zoneinfo/America/New_York /etc/localtime
date
echo "=========== Python Library Setup ==========="
pip install minimalmodbus
pip install modbus-tk
pip install python-can
pip install boto3
