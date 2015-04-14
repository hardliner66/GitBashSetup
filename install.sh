#!/bin/sh
#Installation

 # 1) Download git bash from http://git-scm.com/
 # 2) During the installation process, select the default settings. Except for the PATH settings. For the PATH settings select "Use Git from the Windows Command Prompt"
 # 3) Open Git bash
 # 4) Clone this repository (git clone https://github.com/hardliner66/GitBashSetup.git)
 # 5) Execute ./install.sh

cp -r FILESYSTEM/bin/. /bin 
cp -r FILESYSTEM/home/USER/. $HOME
./scripts/install_nano.sh
clear
file="$HOME/.ssh/id_rsa"
if [ -f "$file" ]
then
 echo key already exists, skipping...
else
 echo when prompted, enter password, key name can stay the same
 ssh-keygen -t rsa
fi
. $HOME/.profile
. $HOME/.bashrc