# getting-started                                                                                                                                                                                           
A repository to set up my Ubuntu 22.04 environment from scratch

## Requirements
- curl (setup.sh installs git and ansible and clones this repository!)

## Install
To run the install  (main.yml) you can run the following: \
```curl -L https://raw.githubusercontent.com/DomenickD3/getting-started/master/setup.sh | bash```

You will be prompted for your password to **sudo as root** before running the playbook.

## Generate & Upload New GitHub SSH Key 

If your new environment needs to interact with private repositories, you will need an SSH key on your system which is linked with your GitHub account.

1. Generate a fine-grained [access token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens) with read/write to Git SSH Keys
2. Run the github_ssh_key.yml playbook

## Installing collection requirements.yml
Installing the collections needed for this repository is performed by setup.sh, but if you need to install them yourself, do the following: \
```ansible-galaxy collection install domenickd3.my_ubuntu_collection -p $HOME/Documents/getting-started/collections```

## Playbooks
#### install.yml
- Imports [domenickd3.my_ubuntu_collection.install playbook](https://github.com/DomenickD3/my-ubuntu-collection/tree/master/roles/install/README.md)

#### configure.yml
- Imports [domenickd3.my_ubuntu_collection.configure playbook](https://github.com/DomenickD3/my-ubuntu-collection/tree/master/roles/configure/README.md)

#### github_ssh_key.yml
- Create .ssh directory with correct permissions if DNE *| tags: [generate]*
- Generate SSH key *| tags: [generate]*
- Add SSH key to authentication agent (ssh-key add) *| tags: [generate]*
- Upload SSH Key to GitHub account` *| tags: [upload]*

## Running Playbooks
```cd ~/Documents/getting-started``` \
```ansible-playbook -i hosts playbooks/<playbook> -t <tags> -vv```
