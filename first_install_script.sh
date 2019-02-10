#!/bin/bash

echo("Adding repos to sources.list");
echo"deb http://archive.ubuntu.com/ubuntu/ artful main restricted universe multiverse" >> /etc/apt/sources.list;
echo"deb http://archive.ubuntu.com/ubuntu/ artful-updates main restricted universe multiverse" >> /etc/apt/sources.list;
echo"deb http://archive.ubuntu.com/ubuntu/ artful-backports main restricted universe multiverse" >> /etc/apt/sources.list;
echo"deb http://security.ubuntu.com/ubuntu artful-security main restricted universe multiverse" >> /etc/apt/sources.list;
echo"deb http://archive.canonical.com/ubuntu artful partner" >> /etc/apt/sources.list;

echo("Running apt update")
sudo apt update;

sudo apt install locate;
sudo apt install apache2;
sudo apt install mysql-server;
sudo apt install default-jre;
sudo apt install nodejs;
sudo apt install npm;

echo("Running apt full-upgrade");
sudo apt full-upgrade;
