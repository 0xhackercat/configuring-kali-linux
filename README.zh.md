[English](README.md) | [中文](README.zh.md)

# Configuring Kali Linux
此腳本旨在為使用者 Kali Linux 啟動之後的初始化配置環境、安裝工具，以及下載常用的 GitHub 專案，適用於滲透測試和安全分析工作人員。

## 使用方法
使用kali登入Kali Linux系統之後，執行下列指令
```
git clone https://github.com/0xhackercat/configuring-kali-linux.git
cd configuring-kali-linux/
chmod +x setup.sh
sudo ./setup.sh
```

## 功能概覽
- 配置環境
  - 關閉螢幕鎖定
  - 設置 root 帳戶密碼(root:toor)

- APT 更新
  - 更新系統套件列表
  - 升級所有安裝的套件

- 安裝系統輔助工具
  - Go（Golang）
  - Docker 及 Docker Compose
  - Terminator (支援多視窗的終端機)
  - Sublime Text (文字編輯器)
  - Google Chrome
  - htop/atop
  - strace
  - xxd
  - gdb
  - jq
    
- 安裝滲透測試工具
  - Crowbar (暴力破解)
  - httperf (壓力測試)
  - subfinder (子域名發現)
  - sublist3r (子域名列舉)
  - gobuster (Web列舉工具)
  
- 字典檔案處理
  - 安裝 Seclists
  - 解壓縮 rockyou.txt

- 下載滲透測試常用專案
  - Impacket (內網滲透處理網路協定)
  - Rubeus (Kerberos 滲透測試)
  - Masscan (Port Scan)
  - NmapAutomator (Nmap 掃描自動化腳本)
  - RustScan (Port Scan)
  - Chisel (Tunnel/Pivoting/Port Forwarding)
  - AD-Pentest-Script
  - ADRecon
