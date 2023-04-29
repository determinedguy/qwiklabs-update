#!/bin/sh

# Solution: https://www.coursera.org/learn/python-operating-system/discussions/weeks/7/threads/xhj4Y-HsEe2Rxw5vmkBsRw/replies/18eZJ-PtEe2Rxw5vmkBsRw
# Author: Muhammad Zaid Pirwani

sudo curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo sed -i s/deb.debian.org/archive.debian.org/g /etc/apt/sources.list
sudo sed -i 's|security.debian.org|archive.debian.org/debian-security/|g' /etc/apt/sources.list 
sudo sed -i '/stretch-updates/d' /etc/apt/sources.list 
sudo sed -i s/deb.debian.org/archive.debian.org/g /etc/apt/sources.list.d/backports.list
sudo apt update
