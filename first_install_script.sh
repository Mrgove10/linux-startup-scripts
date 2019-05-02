#!/bin/bash

echo Adding repos to sources.list;
echo deb http://archive.ubuntu.com/ubuntu/ bionic main restricted universe multiverse >> /etc/apt/sources.list;
echo deb http://archive.ubuntu.com/ubuntu/ bionic-updates main restricted universe multiverse >> /etc/apt/sources.list;
echo deb http://archive.ubuntu.com/ubuntu/ bionic-backports main restricted universe multiverse >> /etc/apt/sources.list;
echo deb http://security.ubuntu.com/ubuntu bionic-security main restricted universe multiverse >> /etc/apt/sources.list;
echo deb http://archive.canonical.com/ubuntu bionic partner >> /etc/apt/sources.list;

echo Running apt update;
sudo apt update;

sudo apt install locate;
sudo apt install apache2;
sudo apt install mysql-server;
sudo apt install default-jre;
sudo apt install nodejs;
sudo apt install npm;
sudo apt install links2;
sudo apt install byobu;

echo Running apt full-upgrade;
sudo apt full-upgrade;

echo making symlinks;
ln -T -s /etc/init.d initDir;
ln -T -s /var/www/http webDir;

echo launching byobu;
sudo byobu;
