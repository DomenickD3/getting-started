#! /bin/bash

sudo apt-get -y update

sudo apt-get -y install git
sudo apt-get -y install ansible 
 
base_dir="$HOME/Documents/getting-started"
git clone https://github.com/DomenickD3/getting-started.git $base_dir
ansible-galaxy collection install -r requirements.yml -p $base_dir/collections/

sudo ansible-playbook -i "$base_dir/hosts" "$base_dir/playbooks/install.yml" -vv
ansible-playbook -i "$base_dir/hosts" "$base_dir/playbooks/configure.yml" -vv
