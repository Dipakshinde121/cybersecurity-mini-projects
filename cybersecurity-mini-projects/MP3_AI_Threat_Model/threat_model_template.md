# Threat Model: <System name>

Name / Roll no. / Date:

## 1. System description
What it does, who uses it, what data it handles, what the ML model decides.

## 2. Assets
- Trained model, training data, logs, admin credentials, protected app

## 3. Data flow diagram
See `diagrams/dfd.mmd` (render at mermaid.live, paste PNG here). Trust boundaries: Internet/DMZ, DMZ/Internal, Internal/ML pipeline.

## 4. Threat table (draft rows - edit to match your design)
| ID | Component | STRIDE | AI threat (ATLAS-style) | Threat | Likelihood | Impact | Mitigation |
|----|-----------|--------|------------------------|--------|-----------|--------|-----------|
| T1 | ML classifier | Tampering | Evade ML model | Attacker crafts obfuscated payloads that the model scores as benign | High | High | Adversarial training, rule-engine fallback, input normalisation |
| T2 | Training data | Tampering | Poison training data | Poisoned or mislabeled logs shift decision boundary | Med | High | Data validation, signed datasets, review of retraining data |
| T3 | Model store | Information disclosure | Model theft / extraction | Attacker queries repeatedly to clone the model | Med | Med | Rate limiting, access control, query monitoring |
| T4 | Model store | Tampering | Supply chain compromise | Swapped model file or malicious dependency | Low | High | Hash checks, pinned dependencies, restricted write access |
| T5 | Reverse proxy | Denial of service | - | Flood exhausts the WAF so traffic fails open/closed | Med | High | Rate limits, autoscaling, defined fail mode |
| T6 | Admin dashboard | Spoofing / Elevation | - | Stolen admin creds change rules or disable protection | Med | High | MFA, RBAC, audit logging |
| T7 | Log store | Repudiation / Info disclosure | - | Logs altered or leak sensitive request data | Med | Med | Append-only logs, masking, access control |
| T8 | Classifier | Denial of service | - | Crafted inputs cause high inference latency | Low | Med | Input size caps, timeouts |

## 5. Risk ranking
Sort by likelihood x impact. List the top 3 and why.

## 6. Mitigation plan
Quick wins vs long term.

## 7. Conclusion
