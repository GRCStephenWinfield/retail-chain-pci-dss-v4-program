# RAID Log — Phase 04

## Risks
| ID | Risk | Impact | Mitigation | Owner |
|---|---|---|---|---|
| RA-01 | A third-party script is modified at its origin after authorisation | 6.4.3 authorises; it cannot detect post-authorisation change | SRI pins the content; **11.6.1 in Phase 06** is the detective counterpart | Sonia Rendell |
| RA-02 | Marketing routes around the five-day SLA under seasonal pressure | The closed publication path reopens informally | The capability is removed, not merely governed — there is no path to route to | Sonia Rendell |
| RA-03 | The nine vendor-locked appliances drift undetected | Baseline compliance cannot be asserted for 9 of 71 components | Observation and vendor attestation; **CAP-06** at assessment | Trevor Kim |
| RA-04 | The patch SLA does not survive the October–January freeze | Critical patches deferred into peak trading | Pre-freeze remediation gate; freeze-exception route with CISO approval | Marcus Hale |

## Assumptions
| ID | Assumption | If wrong | Test |
|---|---|---|---|
| AS-01 | The 38-script inventory is complete | An unlisted script executes on a payment page | CSP report telemetry; **11.6.1** from Phase 06; monthly reconciliation |
| AS-02 | No account data comes to rest in the CDE | Requirement 3 obligations attach in full to the 8 CDE systems | Repeat discovery — the R-31 exit criterion is the same test |
| AS-03 | SRI covers every static third-party script | An unpinned script can change silently | Enforcement telemetry from 2026-06-02; served-page inspection |

## Issues
| ID | Issue | Status | Owner |
|---|---|---|---|
| IS-01 | Two legacy batch integrations authenticate with embedded credentials | **Open** — becomes the 8.6.2 Not in Place finding | Trevor Kim |
| IS-02 | Nine appliances cannot accept credentialed assessment or an agent | **Open** — becomes CAP-06 | Trevor Kim |
| IS-03 | 3.4.2 quarterly test failed 1 of 12 cases in its first cycle | **Closed** — corrected and re-tested | Trevor Kim |
| IS-04 | Two key-share holders had changed role since issue | **Closed** — reconciled at the May custodian review | Trevor Kim |
| IS-05 | Real customer records found in a pre-production dataset | **Closed** — purged; 6.5.6 gate strengthened | Sonia Rendell |

## Dependencies
| ID | Dependency | On whom | Needed by |
|---|---|---|---|
| DP-01 | 11.6.1 tamper detection to complete the script control | Phase 06 | 2026-08 |
| DP-02 | Vendor cooperation on the nine locked appliances | Appliance vendors | 2027 — CAP-06 |
| DP-03 | Truvance confirmation of iframe integrity controls on its side | Truvance Payments | Before fieldwork |
| DP-04 | Marketing acceptance of the five-day SLA through peak season | Marketing | October |
