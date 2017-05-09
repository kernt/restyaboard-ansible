#! /bin/bash
# If you are running a debian variant with apt-get this should work for local install... we do not support this script, however.
if [ "$1" = '-r' ] ; then 
  echo "restarting from last state."
  sudo -u $USER git pull
  ansible-playbook restyaboard.yml -c local  --limit @/home/$USER/restyaboard.retry
else
  sudo -u $USER git pull
  sudo apt-get install python-pip python-dev libssl-dev build-essential libtool autoconf -y
  sudo pip install --upgrade pip
  sudo pip install ansible
  sudo mkdir -p /etc/ansible
  sudo cp -f ./defaults/hosts /etc/ansible/hosts 
  sudo ansible-playbook install-requirements.yml -c local
  sudo ansible-playbook restyaboard.yml -c local 
fi

