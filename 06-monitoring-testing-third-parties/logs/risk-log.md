# Risk Log — Phase 06

The baseline register is `03.11-risk-register.md` — **44 risks, 9 High · 21 Moderate · 14 Low**. This log records what Phase 06 changed.

| ID | Risk | Baseline | Phase 06 effect | Standing | Owner |
|---|---|---|---|---|---|
| **R-01** | Unauthorised or malicious script executing on a payment page | **High 20** | **11.6.1 completes the control 6.4.3 started.** Continuous evaluation of headers, DOM and script content as received by the consumer browser, alerting inside 24 hours | **REDUCED — Moderate 10.** Likelihood 4 → 2; **impact held at 5** | Sonia Rendell |
| R-09 | Undetected intrusion in the CDE | High 15 | SIEM across all 71 components; automated review under 10.4.1.1; IDS at the CDE perimeter and critical internal points; 10.7.2 failure detection | **REDUCED — Moderate** | Marcus Hale |
| **R-36** | Components that cannot accept credentialed assessment | **High 16** | Authenticated scanning achieved on **62 of 71**. The remaining **9 are the 11.3.1.2 Not in Place finding** | **HELD at High** — CAP-06, dated 2027-01-31 | Trevor Kim |
| **R-17** | Application and system accounts with embedded credentials | **High 16** | No change in this phase | **HELD at High** — the 8.6.2 Not in Place finding from Phase 05, dated 2027-01-31 | Trevor Kim |
| R-10 | Vulnerability exploited before it is detected | Moderate 12 | Four internal cycles; quarterly ASV; 15 change-driven external scans; TRA-11.3.1.1 bounding the non-critical population | **REDUCED — Low** | Marcus Hale |
| R-19 | Decommissioned assets remaining live | Moderate 9 | Scanning reconciled against the component register; the Q1 ASV failure's root cause fed the significant-change definition | **REDUCED — Low** | Trevor Kim |
| R-26 | Physical access not individually accountable | Moderate 9 | Log coverage of physical access systems folded into the SIEM population | **REDUCED — Low** | Trevor Kim |
| R-34 | Payment-page script inventory drift | Moderate 12 | 11.6.1 detects drift the inventory would not catch until the next reconciliation | **REDUCED — Low** | Sonia Rendell |

## The one the portfolio has been waiting for

**R-01 moves.** It was held at High 20 through Phase 04 despite 6.4.3 being fully implemented, and four separate documents said why: a preventive control alone leaves the post-authorisation modification path open. An entity that moved the risk in Phase 04 would have been rewarding itself for half a control.

**Impact stays at 5.** A skimming script on a payment page is a card-data compromise whatever else is true. Only the likelihood moved, and it moved on evidence.

## Interim position

Seven High risks remain at the close of Phase 06, of which **two — R-17 and R-36 — are held by the programme's two Not in Place findings**, both dated 2027-01-31 and both sharing a re-assessment window with no float.
