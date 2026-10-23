# Wireshark Display Filters

| What | Filter |
|------|--------|
| TCP handshake start (SYN) | `tcp.flags.syn == 1 && tcp.flags.ack == 0` |
| SYN-ACK | `tcp.flags.syn == 1 && tcp.flags.ack == 1` |
| One TCP conversation | `tcp.stream eq 0` |
| ARP | `arp` |
| ICMP | `icmp` |
| DNS | `dns` |
| HTTP requests | `http.request` |
| TLS handshake (HTTPS) | `tls.handshake` |
| FTP commands | `ftp` |
| FTP password | `ftp.request.command == "PASS"` |
| Telnet | `telnet` |
| Port scan hint (many SYNs, no ACK) | `tcp.flags.syn == 1 && tcp.flags.ack == 0 && ip.src == 192.168.56.10` |
| Follow stream | Right click packet -> Follow -> TCP Stream |

Tip: Statistics -> Conversations and Statistics -> I/O Graph make good screenshots for floods/scans.
