# MP3 - AI-Assisted Cybersecurity Threat Model

## Goal
Threat-model an AI-enabled system with STRIDE plus an AI-specific framework.

## Steps
- [ ] **Step 1** Pick the system (default draft: CyberShield AI WAF - edit to match your real design).
- [ ] **Step 2** Draw the data flow diagram (`diagrams/dfd.mmd`), mark trust boundaries.
- [ ] **Step 3** Run STRIDE on each component (`threat_model_template.md`).
- [ ] **Step 4** Add AI-specific threats (poisoning, evasion, model theft).
- [ ] **Step 5** Rate risk (likelihood x impact) and propose mitigations.
- [ ] **Step 6** Write the summary.

## Which AI framework?
- MITRE ATLAS: attacks on any ML system (best fit for a classic ML WAF).
- OWASP Top 10 for LLM Apps: only if your system uses an LLM.
- Verify technique IDs/names on atlas.mitre.org before citing them.
