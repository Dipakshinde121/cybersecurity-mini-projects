# MP1 - Build Your Own Cybersecurity Lab

## Goal
An isolated virtual lab where you can attack, defend and monitor.

## Architecture (see `network_diagram.mmd`)
| VM | Role | IP (host-only 192.168.56.0/24) | Suggested RAM |
|----|------|------|------|
| Kali Linux | Attacker | 192.168.56.10 | 2-4 GB |
| Metasploitable 2 | Vulnerable target | 192.168.56.20 | 512 MB-1 GB |
| Ubuntu + DVWA (or DVWA in Docker) | Web target | 192.168.56.30 | 1-2 GB |
| Wazuh / Security Onion (optional) | Monitoring | 192.168.56.40 | 4+ GB |

If your laptop has 8 GB RAM: run Kali + Metasploitable only, skip Wazuh.
If 16 GB: run everything.

## Steps (do one, take screenshots, then move on)
- [ ] **Step 1** Install VirtualBox (or VMware Workstation Player). Create a Host-only network 192.168.56.0/24.
- [ ] **Step 2** Import Kali (prebuilt VM image from kali.org). Set adapter 1 = Host-only (+ NAT adapter 2 only while updating).
- [ ] **Step 3** Import Metasploitable 2. Adapter = Host-only ONLY (never bridged).
- [ ] **Step 4** Set up DVWA (Docker: `docker run -d -p 80:80 vulnerables/web-dvwa`).
- [ ] **Step 5** Verify connectivity: `ping 192.168.56.20` from Kali.
- [ ] **Step 6** Take a snapshot of every VM called `clean-baseline`.
- [ ] **Step 7** (Optional) Install Wazuh and enroll an agent on the target.
- [ ] **Step 8** Run the attack-and-detect demo (`attack_detect_demo.md`).

## Deliverables
- Network diagram (render `network_diagram.mmd` at mermaid.live, export PNG)
- Screenshots for each step
- Completed `attack_detect_demo.md`
- Short report: tools chosen, why, problems faced, lessons learned
