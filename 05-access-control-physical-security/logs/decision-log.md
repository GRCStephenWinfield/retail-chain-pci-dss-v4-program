# Decision Log — Phase 05

| ID | Date | Decision | Rationale | Decided by | Reference | Status |
|---|---|---|---|---|---|---|
| DEC-501 | 2026-04-08 | Keep the role catalogue to **24 roles**, accepting some over-provisioning, rather than pursuing perfect granularity | A catalogue nobody can review in a six-month cycle is not a control. Reviewability beats precision | Elena Marchetti | ADR-0013 | Approved |
| DEC-502 | 2026-04-22 | Read 8.4.2 as **MFA for all access into the CDE**, including ordinary non-administrative users on the internal network | The requirement says all access. An organisation with v3.2.1 MFA can read 8.4.2 and wrongly conclude it is already compliant | Trevor Kim | 05.05 §12 | Approved |
| DEC-503 | 2026-04-22 | Apply MFA to **connected-to components** whose compromise would yield CDE access, though 8.4.1/8.4.2 are literally scoped to the CDE | A conservative reading costs a few hundred authentications a week. A narrow one costs an argument at fieldwork | Trevor Kim | ADR-0014 | Approved |
| DEC-504 | 2026-05-06 | Elect the **customized approach at 8.3.9** for 61 password-only accounts on 19 connected-to or vendor-managed components | The defined approach's second option cannot honestly be stretched: for 51 of 61 the component authenticates locally with no external decision point | Naomi Bhatt | 05.06 | Approved |
| DEC-505 | 2026-05-06 | Have **Sable Ridge derive the testing procedures** for the customized approach, and do not propose Marketa's own | Under the customized approach the assessor derives the test. An entity that writes its own has misunderstood the mechanism | Owen Castellanos | 05.06 §8 | Approved |
| DEC-506 | 2026-06-03 | Record **break-glass access as a documented 8.5.1 exception**, time-bounded in use rather than in authorisation | 8.5.1 permits bypass only by documented exception. Reading "limited time period" as bounding the use is the defensible reading, and it is written down so it can be challenged | Trevor Kim | ADR-0015 | Approved |
| DEC-507 | 2026-06-17 | **Refuse a compensating control for 8.6.2** and record the requirement as **Not in Place** with a date | The credentials are readable by anyone with configuration access. Monthly rotation does not change that. A compensating control here would make the AOC compliant and the position false | Naomi Bhatt | ADR-0004, 05.07 §7 | Approved |
| DEC-508 | 2026-06-24 | Add the **Ashburn co-location provider as TPSP-06**, absent from the Phase 01 register | Physical security at a third-party facility is a shared responsibility that must be **evidenced, not inherited** | Owen Castellanos | ADR-0016 | Approved |
| DEC-509 | 2026-09-30 | **Tighten the POI inspection procedure** after the Q3 discrepancies, though all six were cleared as maintenance | A vendor service wave leaving six unexplained seals is a process gap even when no device was touched. "All cleared" is not "nothing to learn" | Adaeze Nwosu | ADR-0018 | Approved |
| DEC-510 | 2026-09-30 | **Do not raise the POI escalation threshold** in response to six benign discrepancies | Raising a threshold because the first findings were benign is how the next one gets missed | Adaeze Nwosu | 05.09 §8 | Approved |
| DEC-511 | 2026-10-01 | Give seasonal colleagues the **full** 9.5.1.3 and 12.6.3 training, not an abridged version | A colleague who joined six weeks ago is standing at the same terminal as one who has been here nine years | Adaeze Nwosu | ADR-0019 | Approved |

## Source
`05.05`, `05.06`, `05.07`, `05.08`, `05.09`, `05.11`, and `adr/`.
