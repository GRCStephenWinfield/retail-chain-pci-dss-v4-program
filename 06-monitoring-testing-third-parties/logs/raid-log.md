# RAID Log — Phase 06

## Risks
| ID | Risk | Impact | Mitigation | Owner |
|---|---|---|---|---|
| RA-01 | The 11.3.1.2 remediation depends on vendors who have no contractual obligation to help | The Not in Place finding persists past 2027-01-31 and into re-assessment | Vendor escalation through Frank Mueller; replacement evaluated as the fallback | Trevor Kim |
| RA-02 | 11.6.1 alerting is tuned to silence after the first quarter of false positives | The detective half of the script control quietly stops working | Alert volume and disposition reported monthly; a quarter with zero alerts is treated as a defect to investigate, not a success | Sonia Rendell |
| RA-03 | Both Not in Place findings share a remediation date and a re-assessment window | A single slip on either makes the re-assessment fail | Monthly reporting on both; no float in the plan and that is stated rather than disguised | Naomi Bhatt |
| RA-04 | Provider AOCs lapse between annual reviews | A TPSP is out of validation and Marketa does not know | Quarterly status check under TRA-12.8.4, specifically to catch expiry | Owen Castellanos |

## Assumptions
| ID | Assumption | If wrong | Test |
|---|---|---|---|
| AS-01 | The 11.6.1 baseline reflects the authorised state | The mechanism alerts on the wrong thing, or fails to alert on the right one | Baseline reconciled to the 6.4.3 inventory monthly; a divergence is a finding in both directions |
| AS-02 | Synthetic agents fetching from outside the network see what a customer sees | Geographic or device-specific injection goes undetected | 192 fetch permutations across geography, device class and network path |
| AS-03 | Provider responsibility matrices are accurate | A requirement is managed by nobody, each party believing the other holds it | Each matrix confirmed with the provider, not inferred from the contract |

## Issues
| ID | Issue | Status | Owner |
|---|---|---|---|
| IS-01 | **11.3.1.2 Not in Place** — authenticated scanning incomplete on 9 of 71 | **Open** — CAP-06, dated 2027-01-31 | Trevor Kim |
| IS-02 | **8.6.2 Not in Place** carried from Phase 05 — two embedded credentials | **Open** — dated 2027-01-31 | Trevor Kim |
| IS-03 | Q1 ASV scan failed on three findings | **Closed** — rescanned clean in 11 days; root cause fed the significant-change definition | Owen Castellanos |
| IS-04 | A Truvance AOC scope statement did not cover a service Marketa relies on | **Closed** — clarified and re-issued | Owen Castellanos |

## Dependencies
| ID | Dependency | On whom | Needed by |
|---|---|---|---|
| DP-01 | Vendor support to enable credentialed assessment on 9 appliances | Appliance vendors | 2027-01-31 |
| DP-02 | Current AOCs from all six providers ahead of fieldwork | The six TPSPs | 2026-11-02 |
| DP-03 | Ashburn provider attestation for physical controls | TPSP-06 | Before fieldwork |
| DP-04 | Ironwood retest confirmations for all 19 findings | Ironwood Security Labs | Before fieldwork |
