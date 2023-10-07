#! /bin/bash

sudo apt-get -y update

sudo apt-get -y install git
sudo apt-get -y install ansible 
 
base_dir="$HOME/Documents/getting-started"
git clone https://github.com/DomenickD3/getting-started.git $base_dir

ansible_dir="$base_dir/ansible"
sudo ansible-playbook -i "$ansible_dir/hosts" "$ansible_dir/playbooks/install.yml" -vv
ansible-playbook -i "$ansible_dir/hosts" "$ansible_dir/playoboks/configure.yml" -vv
