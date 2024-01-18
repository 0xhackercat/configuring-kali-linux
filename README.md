[English](README.md) | [中文](README.zh.md)

# Configuring Kali Linux
This script is intended for initializing the environment, installing tools, and downloading commonly used GitHub projects after booting Kali Linux, suitable for penetration testers and security analysts.

## How to Use
After logging into Kali Linux, execute the following commands:
```
git clone https://github.com/0xhackercat/configuring-kali-linux.git
cd configuring-kali-linux/
chmod +x setup.sh
sudo ./setup.sh
```

## Feature Overview
- Environment Configuration
  - Disable screen locking
  - Set root account password (root:toor)

- APT Update
  - Update the system package list
  - Upgrade all installed packages

- Install System Tools
  - Go (Golang)
  - Docker & Docker Compose
  - Terminator (multi-window terminal)
  - Sublime Text (text editor)
  - Google Chrome
  - htop/atop
  - strace
  - xxd
  - gdb
  - jq
    
- Install Penetration Testing Tools
  - Crowbar (Brute Force)
  - httperf (Stress Testing)
  - subfinder (Subdomain Discovery)
  - sublist3r (Subdomain Enumeration)
  - gobuster (Web Enumeration)
  
- Dictionary
  - Install Seclists
  - Uncompress rockyou.txt

- Download Common Penetration Testing Projects
  - Impacket (Network Protocol Manipulation for Post Exploitation)
  - Rubeus (Kerberos Penetration Testing)
  - Masscan (Port Scan)
  - NmapAutomator (Automated Nmap Scanning Script)
  - RustScan (Port Scan)
  - Chisel (Tunnel/Pivoting/Port Forwarding)
  - AD-Pentest-Script
  - ADRecon
