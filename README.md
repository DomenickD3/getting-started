# getting-started                                                                                                                                                                                           
A repository to set up my Ubuntu 22.04 environment from scratch

## Requirements

- ansible >= 2.10
- git 

## Install
To run the install  (main.yml) you can run the following: \
```curl -L https://raw.githubusercontent.com/DomenickD3/getting-started/master/setup.sh | bash```

You will be prompted for your password to **sudo as root** before running the playbook.

## Generate & Upload New GitHub SSH Key 

If your new environment needs to interact with private repositories, you will need an SSH key on your system which is linked with your GitHub account.

1. Generate a fine-grained [access token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens) with read/write to Git SSH Keys
2. Run the github_ssh_key.yml playbook

## Playbooks
##### install.yml
- Perform apt-get update/upgrade *| tags: [install]*
- Install packages as root *| tags: [install, packages]*
- Install applications as root *| tags: [install, applications]*
- Install programming languages *| tags; [install, languages]*

##### configure.yml
- Clone [dotfiles](https://github.com/DomenickD3/.dotfiles) *| tags: [configure]*
- Stow dotfiles *| tags: [configure]*

##### github_ssh_key.yml
- Create .ssh directory with correct permissions if DNE *| tags: [generate]*
- Generate SSH key *| tags: [generate]*
- Add SSH key to authentication agent (ssh-key add) *| tags: [generate]*
- Upload SSH Key to GitHub account` *| tags: [upload]*

## Running Playbooks
```cd ~/Documents/getting-started/ansible``` \
```ansible-playbook -i hosts <playbook> -t <tags> -vv```
