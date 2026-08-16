# Secure Development — Annual Review Record

| Field | Value |
|---|---|
| Review | Requirement 6.2 secure development practice |
| Date | 2026-06-30 |
| Chair | Sonia Rendell, Director of E-Commerce Engineering |
| Present | Naomi Bhatt (CISO), Marcus Hale, Owen Castellanos, engineering leads |

## 1. Coverage

| Measure | Value |
|---|---|
| Development personnel in scope of 6.2.2 training | **74** |
| Completion | 74 of 74 |
| Qualified code reviewers | 29 |
| Reviews performed by someone other than the author (6.2.3.1) | 100% of releases to production |
| Management approval before release | 100% |

## 2. The finding nobody enjoyed

The 6.5.6 pre-production gate found **real customer records in a pre-production dataset** — 2,140 of them. They contained names, addresses and order history. **They contained no account data**, which is the only reason this is a finding rather than an incident.

Root cause: a fixture-generation script had been pointed at a production replica in 2024 to reproduce a specific defect, and the change was never reverted.

| Question | Answer |
|---|---|
| Was any account data involved? | **No.** Verified against the discovery patterns from Phase 02 |
| Was it in scope of PCI DSS? | Not directly — but 6.5.6 and 6.5.5 exist to prevent exactly this class, and the next one might not be so lucky |
| What changed? | Fixture generation now draws from synthetic sources only; the pre-production gate blocks a release where a dataset's provenance cannot be established |
| Was it reported? | Yes — to the Steering Committee, and recorded here rather than closed quietly |

## 3. What the review declined to claim

Rendell recorded that one completed training cycle and six months of enforced review is **not evidence of a secure development culture**:

> "We can show that every release was reviewed by someone other than its author. We cannot yet show that the review found anything an attacker would have found. That takes a penetration test, and ours is in September."

**R-37 is therefore held, not reduced.**
