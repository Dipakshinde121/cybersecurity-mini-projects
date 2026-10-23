#!/usr/bin/env bash
# Run ONLY inside your isolated lab. Run each block while Wireshark/tcpdump is capturing.
TARGET=192.168.56.20
IFACE=eth0   # change to your lab interface (check with: ip a)

# --- capture (run in a separate terminal) ---
# sudo tcpdump -i $IFACE -w captures/lab_all.pcap

# TCP handshake + HTTP
curl -s http://192.168.56.30/ > /dev/null

# ICMP
ping -c 4 $TARGET

# ARP
sudo arp-scan -l 2>/dev/null || sudo nmap -sn 192.168.56.0/24

# DNS (needs a resolver reachable; use NAT adapter briefly)
nslookup example.com

# FTP plaintext creds (Metasploitable default creds: msfadmin / msfadmin)
ftp $TARGET

# Telnet plaintext creds
telnet $TARGET

# Port scan pattern
sudo nmap -sS $TARGET

# SYN flood pattern (lab only, short burst, then Ctrl+C)
# sudo hping3 -S --flood -p 80 $TARGET
