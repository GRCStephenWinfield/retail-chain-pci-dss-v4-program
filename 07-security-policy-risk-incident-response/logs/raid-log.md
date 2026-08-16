# RAID Log — Phase 07

## Risks
| ID | Risk | Impact | Mitigation | Owner |
|---|---|---|---|---|
| RA-01 | Either Not in Place remediation slips past 2027-01-31 | The re-assessment on 2027-02-18 fails; the AOC stays non-compliant | Monthly reporting on both; vendor escalation through the General Counsel; **no float, stated** | Trevor Kim |
| RA-02 | The QSA takes a different view of scope at fieldwork than the July confirmation | Late scope change with no time to remediate | Scope reviewed with Sable Ridge in March and again before fieldwork; six-in/six-out movement documented | Owen Castellanos |
| RA-03 | The customized approach at 8.3.9 is not accepted | 8.3.9 becomes a third finding | Testing procedures derived by the QSA in advance; evidence maintained continuously | Naomi Bhatt |
| RA-04 | Awareness completion falls below the 95% bar during the seasonal intake | A 12.6.3 finding in the busiest quarter | Seasonal completion tracked separately (95.7%) rather than hidden inside the blend | Adaeze Nwosu |

## Assumptions
| ID | Assumption | If wrong | Test |
|---|---|---|---|
| AS-01 | The 71-component scope holds through fieldwork | The assessment samples the wrong population | Monthly reconciliation; significant-change classification under SIG-1 to SIG-10 |
| AS-02 | Both Not in Place findings are the only two | A third emerges at fieldwork | Every requirement walked before fieldwork; ADR-0004 forbids a "Not Tested" landing |
| AS-03 | The fourteen targeted risk analyses are complete and current | A missing or stale analysis is a finding in its own right | Consolidated register with review dates; each one owned by a named individual |

## Issues
| ID | Issue | Status | Owner |
|---|---|---|---|
| IS-01 | **8.6.2 Not in Place** — two embedded credentials | **Open**, dated 2027-01-31 | Trevor Kim |
| IS-02 | **11.3.1.2 Not in Place** — authenticated scanning on 9 of 71 | **Open**, dated 2027-01-31 | Trevor Kim |
| IS-03 | R-27's movement carries a recorded dissent | Open — return-to-High condition attached | Rosa Delgado |
| IS-04 | One out-of-hours activation test went unanswered (2026-08-19) | **Closed** — roster gap corrected; three subsequent tests answered in 4, 9 and 11 minutes | Marcus Hale |

## Dependencies
| ID | Dependency | On whom | Needed by |
|---|---|---|---|
| DP-01 | Vendor agreement to enable credentialed assessment on 9 appliances | Appliance vendors | 2027-01-31 |
| DP-02 | Vendor support to remove embedded credentials from two integrations | Application vendors | 2027-01-31 |
| DP-03 | Sable Ridge fieldwork resourcing | Sable Ridge Assurance | 2026-11-02 |
| DP-04 | Current AOCs from all six TPSPs | The six providers | Before fieldwork |
