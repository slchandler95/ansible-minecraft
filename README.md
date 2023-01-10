# ansible-minecraft

## requirements ##

working Ubuntu server install with sudo and ssh access\
only tested on Ubuntu 22.04 LTS\
port forwarding needed for anyone to access outside local network

## run on server to install required packages and ansible ##

sudo apt update\
sudo apt install software-properties-common\
sudo add-apt-repository --yes --update ppa:ansible/ansible\
sudo apt install ansible -y

## clone git repo ##

git clone https://github.com/slchandler95/ansible-minecraft.git

## make edits to variables ##

at minimum the following 2 files need to be edited:\
ansible-minecraft/vault-hunters/defaults/main.yml needs to be edited to add your curseforge_api_key\
ansible-minecraft/vault-hunters/vars/whitelist.json.yml needs to be edited to add your minecraft user.name and user.uuid

## run playbook ##

from the ansible-minecraft directory run the following command:\
ansible-playbook vault-hunters.yml

## copy defaultconfigs folder from tmp directory ##

sudo unzip /opt/minecraft/tmp/Vault+Hunters+3rd+Edition-update-4.1.zip -d /opt/minecraft/tmp/client\
sudo cp -r /opt/minecraft/tmp/client/overrides/defaultconfigs /opt/minecraft/server

## enable/start/stop minecraft service with the following commands ##

sudo systemctl enable minecraft.service\
sudo systemctl start minecraft.service\
sudo systemctl stop minecraft.service

## switch to minecraft user to login to the tmux session to access server console ##

sudo su minecraft\
tmux attach -t minecraft\
ctrl b+d to detach from tmux session