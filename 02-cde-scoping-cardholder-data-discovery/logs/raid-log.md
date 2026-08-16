# RAID Log — Phase 02

## Risks
| ID | Risk | Impact | Mitigation | Owner |
|---|---|---|---|---|
| RA-01 | Segmentation is asserted from configuration and has not been tested | The store estate re-enters scope if it fails | Penetration test under 11.4.5, scheduled 2026-05-15 | Trevor Kim |
| RA-02 | A reduction condition lapses without anyone noticing | Systems silently re-enter scope between assessments | 35 conditions recorded with named verification and cadence | Owen Castellanos |
| RA-03 | Further unstructured account data exists in a population not yet searched | R-31 stays High | Repeat discovery; DLP live 2026-04-10; second clean search is the exit criterion | Marcus Hale |

## Assumptions
| ID | Assumption | If wrong | Test |
|---|---|---|---|
| AS-01 | The 71-component population is complete | The assessment samples from the wrong population | Monthly reconciliation; QSA review before fieldwork |
| AS-02 | Truvance cannot be induced to detokenise on Marketa's behalf | The token vault becomes a Marketa scope problem | Negative test performed and recorded; entitlement review |
| AS-03 | No further acceptance channels exist | An unassessed channel processes cards | Merchant ID reconciliation with Cardinal — found and closed one dormant ID |

## Issues
| ID | Issue | Status | Owner |
|---|---|---|---|
| IS-01 | Three stores had a non-conforming POI network path | **Closed 2026-02-15** — reduction suspended, then restored on evidence | Adaeze Nwosu |
| IS-02 | Seven device-register serial mismatches against physical terminals | Open — feeds the 9.5.1 regime in Phase 05 | Adaeze Nwosu |
| IS-03 | File-server access logs for the dispute share did not exist before a 24-month window | **Open as a stated limitation** — not resolved by inference | Elena Marchetti |
| IS-04 | 19 systems present on the network were absent from the CMDB | Open — reconciliation control introduced | Trevor Kim |

## Dependencies
| ID | Dependency | On whom | Needed by |
|---|---|---|---|
| DP-01 | Segmentation test window | Ironwood Security Labs | 2026-05-15 |
| DP-02 | Truvance confirmation of entitlement scope | Truvance Payments | Complete |
| DP-03 | Ashburn backup expiry of PAN-02 copies | Infrastructure | 2026-05-31 |
| DP-04 | QSA review of the scope determination | Sable Ridge Assurance | Before fieldwork |
