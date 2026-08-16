# Template — Incident Record

> The plan activates on a **suspected** incident, not a confirmed one (ADR-0026). Records that turn out to be nothing are the intended shape of this log.

| Field | Entry |
|---|---|
| Incident ID |  |
| Raised by / detection source | *SIEM rule · 11.5.2 change detection · 10.7.2 failure · 11.6.1 payment-page alert · person* |
| Time detected |  |
| **Time plan activated** | *Not the time it was confirmed* |
| Severity assigned | SEV-1 / SEV-2 / SEV-3 / SEV-4 |
| Severity revised? | *Downgrades are normal operation, not errors* |

## 1. What was suspected
| Question | Entry |
|---|---|
| Description |  |
| Systems involved | *Of the 71 assessed components, or outside them* |
| **Is account data suspected to be involved?** |  |
| Channel affected | Card-present / e-commerce / MOTO / internal |

## 2. Determination
| Question | Entry |
|---|---|
| **What is the determination, and when was it made?** | *The C5 24-hour clock runs from determination. Determination is defined — see TTF-4* |
| Evidence supporting it |  |
| **Limitations of the evidence** | *State them. Do not close a gap by inference* |

## 3. Notification
| Obligation | Required? | Sent | When |
|---|---|---|---|
| Cardinal Merchant Bank — **C5, within 24 hours of determination** |  |  |  |
| Card brand procedures — per the plan's Annex A |  |  |  |
| Legal analysis of statutory reporting — General Counsel |  |  |  |
| Affected third-party service providers |  |  |  |

## 4. Response
| Phase | Action | Who | When |
|---|---|---|---|
| Contain |  |  |  |
| Eradicate |  |  |  |
| Recover |  |  |  |

## 5. Lessons — 12.10.6
| Lesson | **Changes the plan** / **Declined** | Reason | Decided by |
|---|---|---|---|
|  | *Exactly one of the two. There is no third state (ADR-0028)* |  |  |

## 6. If PAN was found where it was not expected
| Question | Entry |
|---|---|
| Which 12.10.7 procedure applies? | P-0 general · P-1 media · P-2 unstructured stores · P-3 orphaned assets · P-4 inbound customer data |
| Data remediated — deleted or migrated |  |
| **How did it get there, and what process gap was fixed?** | *Limb 3. This is the requirement, not the optional extra* |
