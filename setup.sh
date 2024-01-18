#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

# 修改 root 密碼
echo 'root:toor' | sudo chpasswd

# 關閉螢幕鎖定
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0

# 更新系統
sudo apt-get update
sudo apt-get upgrade -y

# 安裝 docker
sudo apt-get install -y docker.io
sudo apt-get install -y docker-compose
sudo usermod -aG docker $USER
sudo newgrp docker

# 安裝 Go
sudo apt-get install -y golang-go

# 安裝 system tools
sudo apt-get install -y terminator htop atop strace xxd gdb jq

# 安裝 pentest tools
sudo apt-get install -y crowbar httperf subfinder sublist3r gobuster

# 安裝 Sublime Text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install -y apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install -y sublime-text
sudo rm /etc/apt/sources.list.d/sublime-text.list

# 安裝 Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get install -y ./google-chrome-stable_current_amd64.deb
rm -f google-chrome-stable_current_amd64.deb
sudo sed -i '$s|$| --user-data-dir --no-sandbox|' /usr/bin/google-chrome

# 移除不需要的 packages
sudo apt-get autoremove

# 字典檔
sudo gzip -d /usr/share/wordlists/rockyou.txt.gz
sudo apt-get install -y seclists

# 下載需要的 GitHub 專案至 root 目錄
sudo git clone https://github.com/fortra/impacket /root/impacket
sudo git clone https://github.com/GhostPack/Rubeus /root/Rubeus
sudo git clone https://github.com/robertdavidgraham/masscan /root/masscan
sudo git clone https://github.com/21y4d/nmapAutomator /root/nmapAutomator
sudo git clone https://github.com/RustScan/RustScan /root/RustScan
sudo git clone https://github.com/jpillora/chisel /root/chisel
sudo git clone https://github.com/Twi1ight/AD-Pentest-Script /root/AD-Pentest-Script
sudo git clone https://github.com/sense-of-security/ADRecon /root/ADRecon
