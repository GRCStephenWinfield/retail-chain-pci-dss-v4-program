# RAID Log — Phase 05

## Risks
| ID | Risk | Impact | Mitigation | Owner |
|---|---|---|---|---|
| RA-01 | MFA has not operated through a peak trading season | An exception path opens under pressure and is not closed | Five documented exceptions MFA-EX-01…05, each time-bounded; reviewed before the freeze | Trevor Kim |
| RA-02 | The customized approach is not accepted at fieldwork | 8.3.9 becomes a finding and the population needs another answer | Testing procedures derived by the QSA in advance; monthly checkpoints from March | Naomi Bhatt |
| RA-03 | POI inspection quality degrades as seasonal colleagues rotate out | Coverage holds while detection quality falls | Unannounced repair-personnel testing measures detection, not coverage — 9 tests, 2 failures, retrained | Adaeze Nwosu |
| RA-04 | The 8.6.2 remediation slips past 2027-01-31 | A dated Not in Place becomes an overdue one before re-assessment | Vendor dependency tracked; re-assessment is 2027-02-18, leaving no float | Trevor Kim |

## Assumptions
| ID | Assumption | If wrong | Test |
|---|---|---|---|
| AS-01 | The 24-role catalogue covers all CDE access | Access exists outside the model and is not reviewed | Six-monthly 7.2.4 review reconciled against the IAM extract, not the catalogue |
| AS-02 | The POI device register is accurate | A substituted device passes inspection because the register agrees with it | Serial verification at every inspection; the seven Phase 02 mismatches were found this way |
| AS-03 | Ashburn's physical controls meet Marketa's obligations | A shared-responsibility gap surfaces at fieldwork | Evidenced through TPSP-06, not inherited (ADR-0016) |

## Issues
| ID | Issue | Status | Owner |
|---|---|---|---|
| IS-01 | Two legacy batch integrations with embedded credentials | **Open — the 8.6.2 Not in Place finding**, dated 2027-01-31 | Trevor Kim |
| IS-02 | Seven device-register serial mismatches carried from Phase 02 | **Closed** — resolved during the first inspection cycle | Adaeze Nwosu |
| IS-03 | Two of nine unannounced repair-personnel identity tests failed | **Closed** — retrained and re-tested | Adaeze Nwosu |
| IS-04 | Ashburn co-location absent from the TPSP register | **Closed** — added as TPSP-06 on 2026-06-24 | Owen Castellanos |
| IS-05 | Four visitor badges unsurrendered; eleven missing exit times | Open — visitor process tightened | Trevor Kim |

## Dependencies
| ID | Dependency | On whom | Needed by |
|---|---|---|---|
| DP-01 | Vendor support to remove embedded credentials from two integrations | Application vendors | 2027-01-31 |
| DP-02 | QSA derivation and acceptance of the 8.3.9 testing procedures | Sable Ridge Assurance | Before fieldwork |
| DP-03 | Ashburn provider attestation for physical controls | Co-location provider (TPSP-06) | Before fieldwork |
| DP-04 | Verition service records to reconcile POI seal replacements | Verition POS Systems | Quarterly |
