#/bin/bash
sudo apt update -y
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt install python3.8 -y
python3.8 --version
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.8 1
python --version

sudo apt install python3-apt

sudo add-apt-repository --yes --update ppa:ansible/ansible -y
sudo apt install ansible -y

