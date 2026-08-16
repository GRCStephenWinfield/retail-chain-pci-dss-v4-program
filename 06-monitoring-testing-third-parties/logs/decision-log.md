# Decision Log — Phase 06

| ID | Date | Decision | Rationale | Decided by | Reference | Status |
|---|---|---|---|---|---|---|
| DEC-601 | 2026-02-28 | **Report the Q1 ASV failure to Cardinal as a failure**, rather than rescanning first and reporting only the pass | The attestation is issued to the acquirer independently of Marketa. A failure reported is the evidence the same-firm QSA/ASV arrangement has not softened anything | Owen Castellanos | ADR-0003, 06.06 §4 | Approved |
| DEC-602 | 2026-04-17 | Treat a SIEM dashboard as **not** satisfying 10.4.1.1's automation requirement | "Automated mechanisms to perform the review" means the mechanism performs the review. A dashboard nobody opens is a place where a review could happen | Marcus Hale | 06.03 §3 | Approved |
| DEC-603 | 2026-05-20 | Set **TRA-10.4.2.1 at monthly**, risk-weighted by component class, for the 11 of 71 components outside the daily population | Daily review of every component produces volume, not attention. The analysis is what makes the split defensible | Marcus Hale | 06.03 §6 | Approved |
| DEC-604 | 2026-07-08 | Record **11.3.1.2 as Not in Place** for 9 of 71 components rather than documenting them as unable to accept credentials | A system technically unable to accept credentials is not the same as an entity contractually unable to obtain them. The QSA tested Marketa's argument and rejected it | Naomi Bhatt | ADR-0004, 06.05 §5 | Approved |
| DEC-605 | 2026-07-08 | **Do not argue a compensating control** for 11.3.1.2 | The same discipline applied to 8.6.2 in Phase 05. A compensating control here would produce a compliant AOC and a false position | Naomi Bhatt | 06.05 §5 | Approved |
| DEC-606 | 2026-08-13 | Run **11.6.1 continuously with alerting inside 24 hours**, rather than at the weekly floor the requirement permits | The window between evaluations is the window in which a skimming script operates undetected. Weekly is a floor, not a target | Sonia Rendell | TRA-11.6.1 | Approved |
| DEC-607 | 2026-08-13 | Evaluate payment pages **as received by the consumer browser, from outside the network** | A check performed inside the estate against source control tests what Marketa published, not what the customer received | Sonia Rendell | 06.09 §4 | Approved |
| DEC-608 | 2026-09-18 | Perform **forensic enumeration of prior access** to the unauthenticated administrative interface rather than assuming none occurred | The interface had been reachable for a long period. "No evidence of access" obtained by not looking is not a finding | Marcus Hale | 06.08 §6 | Approved |
| DEC-609 | 2026-10-02 | **Move R-01 from High 20 to Moderate 10** now that 11.6.1 operates | The register held R-01 through Phase 04 because 6.4.3 alone is half a control. It moves when the other half exists, and not before | Naomi Bhatt | 06.12 §4 | Approved |
| DEC-610 | 2026-10-16 | Set the **elective TRA-12.8.4** at annual formal review plus a quarterly status check | Annual alone leaves an AOC able to lapse for eleven months unnoticed. The quarterly check is cheap and catches expiry | Owen Castellanos | TRA-12.8.4 | Approved |

## Source
`06.03`, `06.05`, `06.06`, `06.08`, `06.09`, `06.10`, `06.12`, and `adr/`.
