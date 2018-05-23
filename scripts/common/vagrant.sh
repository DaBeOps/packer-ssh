#!/bin/sh

set -e
set -x

date | sudo tee /etc/vagrant_box_build_time

mkdir -m 0700 -p ~/.ssh
curl -fsSLo ~/.ssh/authorized_keys https://raw.githubusercontent.com/DaBeOps/packer-ssh/master/keys/vagrant.pub
chmod 600 ~/.ssh/authorized_keys
