# Attack-and-Detect Demo (fill this in)

## Scenario
Port scan from Kali against Metasploitable 2, then show it in the logs.

## 1. Attack (from Kali)
```bash
nmap -sS -sV -p- 192.168.56.20 -oN scan_results.txt
```
Screenshot: `screenshots/demo-01-nmap-scan.png`

## 2. What the attack found
- Open ports/services:
- Interesting vulnerable service:

## 3. Detection
- Where you looked (Wazuh dashboard / `tcpdump` on target / syslog):
- Event or alert seen:
Screenshot: `screenshots/demo-02-detection.png`

## 4. Defence idea
How would you block or alert on this in a real network?
