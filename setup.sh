#!/bin/bash

# Install commonly used commands
sudo apt-get install -y tree htop vim git 

# Install vscode
wget "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64" -O "code.deb"
sudo DEBIAN_FRONTEND=noninteractive dpkg -i code.deb
rm code.deb

# Install vscode extensions
code --install-extension ms-python.python
code --install-extension ms-vscode.cpptools
code --install-extension rust-lang.rust-analyzer
code --install-extension eamodio.gitlens

# Chrome install
sudo apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome*.deb
ls | grep 'google-chrome.*' | xargs rm

# Setup python virtual environment
sudo apt-get install -y python3-pip python3.12-venv
mkdir python
cd python
python3 -m venv myenv
source myenv/bin/activate
cd ..
echo -e '\n\n#Source python venv\nsource ~/python/myenv/bin/activate' >> .bashrc

# Git config
cat gitconfig | tee -a ~/.gitconfig
