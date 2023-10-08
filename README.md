# getting-started                                                                                                                                                                                           
A repository to set up my Ubuntu 22.04 environment from scratch

## Requirements
- curl (setup.sh installs git and ansible and clones this repository!)

## Install
Run the install/configure playbooks by doing the following: \
```curl -L https://raw.githubusercontent.com/DomenickD3/getting-started/master/setup.sh | bash```

You will be prompted for your password to **sudo as root** before running the playbook.

## Generate & Upload New GitHub SSH Key                                                                                                                                                                     
If your new environment needs to interact with private repositories, you will need an SSH key on your system which is linked with your GitHub account.

1. Generate a fine-grained [access token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens) with read/write to Git SSH Keys
2. Run the github_ssh_key.yml playbook

## Playbooks
TODO

## Running Playbooks
TODO

```cd ~/Documents/getting-started/ansible``` \
```ansible-playbook -i hosts playbooks/<playbook> -t <tags> -vv```
