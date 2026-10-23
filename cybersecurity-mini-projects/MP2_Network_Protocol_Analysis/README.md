# MP2 - Network Protocol Analysis

## Goal
Capture real traffic from your MP1 lab and explain what each protocol looks like on the wire.

## Steps
- [ ] **Step 1** Start Wireshark on Kali (or `tcpdump`, see `capture_commands.sh`).
- [ ] **Step 2** Generate traffic for each protocol (commands in `capture_commands.sh`).
- [ ] **Step 3** Save one `.pcap` per protocol into `captures/`.
- [ ] **Step 4** Apply the display filters from `wireshark_filters.md`, screenshot + annotate.
- [ ] **Step 5** Capture attack traffic (nmap scan, SYN flood) and show how it looks different.
- [ ] **Step 6** Fill in `analysis_report_template.md`.

## Protocols to cover
TCP 3-way handshake, ARP, ICMP, DNS, HTTP vs HTTPS, FTP/Telnet (plaintext creds), plus 2 attack patterns.

## Deliverables
.pcap files, annotated screenshots, filters used, written findings.
