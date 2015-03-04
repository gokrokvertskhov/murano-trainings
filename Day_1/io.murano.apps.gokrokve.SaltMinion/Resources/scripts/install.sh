#!/bin/bash

master=$1

add-apt-repository ppa:saltstack/salt
apt-get -y update
apt-get -y install salt-minion

cp -f minion.conf /etc/salt/minion
sed -i.bkp "s/%%MASTER%%/$master/g" /etc/salt/minion