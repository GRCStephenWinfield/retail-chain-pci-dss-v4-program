# Template — Account Data Discovery Finding

> One record per location where account data is found outside the documented environment.
> Complete **every** section. A finding record that omits root cause is an incident ticket, not a finding.

| Field | Entry |
|---|---|
| Finding ID | PAN-nn |
| Date confirmed |  |
| Location | *System, share, archive or mailbox — be specific enough to re-find it* |
| Channel of origin | Card-present / e-commerce / MOTO / customer-initiated / unknown |
| Was it inside the assessed scope? | *If no, this is a scope failure as well as a data failure* |

## 1. What was found
| Field | Entry |
|---|---|
| Volume |  |
| Data elements present | PAN / cardholder name / expiry / service code / **SAD — track, CVV, PIN** |
| **Sensitive authentication data after authorisation?** | *If yes, this is a 3.3.1 violation and escalates immediately* |
| Storage state | Clear / encrypted / truncated / hashed |
| Retention period it had survived |  |

## 2. Why it existed
| Question | Entry |
|---|---|
| What process created it? |  |
| Why was that process never mapped? |  |
| Which control should have prevented it, and why did it not apply? |  |
| **Which assumption does this disprove?** | *Name the assumption ID. If none, say so explicitly* |

## 3. Access history
| Question | Entry |
|---|---|
| What access logs exist, and for what period? |  |
| **What period is NOT covered by logs?** | *State the limitation. Do not close it by inference* |
| Indicator of compromise? |  |

## 4. Containment and remediation
| Step | Entry | Date |
|---|---|---|
| Containment |  |  |
| Adjudication method |  |  |
| Destruction or remediation |  |  |
| Backup and replica copies addressed |  |  |

## 5. Consequences
| Question | Entry |
|---|---|
| 12.10.7 procedure created or amended |  |
| **Risk raised, created or restored** | *Under ADR-0005, a disproved assumption raises the rating even after full remediation* |
| Notification analysis | *Brand / acquirer / statutory — with the reasoning, whether or not the answer is "none"* |
| Detective control introduced so this class is found faster next time |  |
