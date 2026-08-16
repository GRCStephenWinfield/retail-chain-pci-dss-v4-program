# RAID Log — Phase 01

## Risks
| ID | Risk | Impact | Mitigation | Owner |
|---|---|---|---|---|
| RA-01 | Scope proves larger than believed | Cost, schedule, possibly the fieldwork date | Discovery across 100% of the estate in Phase 02 | Owen Castellanos |
| RA-02 | Segmentation cannot be proved effective | The store estate re-enters scope | Independent segmentation penetration test, early enough to remediate | Trevor Kim |
| RA-03 | Store execution at 482 sites is inconsistent | 9.5.1 findings at assessment | Procedure, training, quarterly cycle, sampling before fieldwork | Adaeze Nwosu |

## Assumptions
| ID | Assumption | If wrong | Test |
|---|---|---|---|
| AS-01 | The Verition solution is deployed as validated at every lane | The affected stores become CDE | Per-store PIM verification in Phase 02 |
| AS-02 | No Marketa origin collects a card field on any of the six payment templates | The AWS e-commerce tier becomes CDE — the largest possible expansion | Template-by-template inspection and traffic analysis |
| AS-03 | DTMF masking has eliminated spoken PAN from call recordings | Historic recordings hold account data | Sampling of the QA recording archive — **this assumption does not survive Phase 02** |

## Issues
| ID | Issue | Status | Owner |
|---|---|---|---|
| IS-01 | Nine POS back-office appliances are vendor-locked against credentialed scanning | Open — becomes the 11.3.1.2 finding | Trevor Kim |
| IS-02 | Two legacy batch integrations authenticate with embedded credentials | Open — becomes the 8.6.2 finding | Trevor Kim |
| IS-03 | The marketing team currently deploys tags to payment pages without security review | Open — 6.4.3 governance to be established | Sonia Rendell |

## Dependencies
| ID | Dependency | On whom | Needed by |
|---|---|---|---|
| DP-01 | Current AOCs from Truvance and Cadence | The two TPSPs | Before fieldwork |
| DP-02 | P2PE Instruction Manual current version | Verition POS Systems | Phase 02 |
| DP-03 | Segmentation test window | Ironwood Security Labs | 2026-05-15 |
| DP-04 | QSA fieldwork resourcing | Sable Ridge Assurance | 2026-11-02 |
