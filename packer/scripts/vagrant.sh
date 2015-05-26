#!/bin/bash

mkdir ~demiazz/.ssh
wget --no-check-certificate \
    'https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub' \
    -O ~demiazz/.ssh/authorized_keys
chown -R demiazz ~demiazz/.ssh
chmod -R go-rwsx ~demiazz/.ssh
