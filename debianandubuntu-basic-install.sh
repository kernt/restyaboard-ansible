#! /bin/bash
# If you are running a debian variant with apt-get this should work for local install... we do not support this script, however.

sudo apt-get install python-pip ansible -y
sudo ansible-playbook restyaboard.yml
