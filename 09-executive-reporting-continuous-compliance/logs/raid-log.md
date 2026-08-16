# RAID Log — Phase 09 (Programme Close)

## Risks carried into business as usual

| ID | Description | Rating | Owner | Treatment |
|---|---|---|---|---|
| RAID-901 | **No contractual response-time commitment from Truvance** for incident-driven token resolution. Marketa cannot scope an account data compromise on its own evidence | Moderate | Frank Mueller | **BAU-01.** The operational runbook is the only instrument. Next renewal 2028-03-31 |
| RAID-902 | **R-36's residual is contractual.** The right to perform authenticated scanning on nine appliances is a clause with a renewal date | Moderate | Trevor Kim | **BAU-02** — Route B, replacement of the appliance class, in the FY2028 store refresh |
| RAID-903 | **Three compensating controls, none with a vendor remediation roadmap.** Each must be re-argued annually | Moderate | Trevor Kim | Annual re-validation on the calendar as CAL-44; a firmware release lifting the 10-character cap converts CCW-01 into an unremediated finding |
| RAID-904 | **The 8.3.9 customized approach carries no forward assurance** and is re-argued from zero at the 2028 rotation | Moderate | Naomi Bhatt | **ADR-0036**; the retain-or-abandon decision deferred to 2027 Q4 under DEC-911 |
| RAID-905 | **Resourcing falls from 11.9 FTE to 4.2.** The controls do not know that | Moderate | Owen Castellanos | 09.08 §6 names the obligations where the honest answer is that less will be done |
| RAID-906 | **The 86.9% evidence figure decays.** It is the output of a programme with eleven people watching | Low | Owen Castellanos | The monthly control attestation is the mechanism that keeps artefacts being produced when nobody is coming |

## Assumptions tested at close

| ID | Assumption | Status |
|---|---|---|
| ASM-901 | That the Phase 03 close forecast of 0 · 13 · 31 was reachable under the register's own scoring discipline | **DISPROVED.** A 3 × 4 entry cannot reach Low. The close is 0 · 16 · 28 and 09.12 §3 publishes the arithmetic |
| ASM-902 | That a provider on whom a scope reduction depends would accept a response-time commitment at renewal | **DISPROVED.** Truvance declined. OI-07-01 does not close |
| ASM-903 | That the second segmentation penetration test would find at least one path from Z3, firing R-27's return-to-High condition | **Not realised.** 6 findings, 0 Critical, 0 from Z3. The condition did not fire — which is a result, not proof |
| ASM-904 | That closing the two Not in Place findings would take R-17 and R-36 to Low | **DISPROVED in Phase 08** and reported there. Both land at Moderate 8 |
| ASM-905 | That business-as-usual resourcing at roughly a third of programme resourcing is sufficient | **UNTESTED.** The first full BAU year runs to 2028-06-30 and nobody has run one yet |

## Issues at close

| ID | Issue | Resolution |
|---|---|---|
| ISS-901 | OI-06-04 was 18 days overdue at the Phase 08 handover and closed 34 days late | Reported as late in 09.06 rather than re-dated. The verifying proof-of-life test completed 2027-03-06 |
| ISS-902 | OI-06-08 closed 40 days late against a date Marketa did not control — the vendor's renewal date | Closed 2027-04-09. The lesson recorded: **an item written against somebody else's date is an item you cannot deliver on time** |
| ISS-903 | OI-06-09 validated 3 of 4 detection rules at the March controlled execution | Carried as **BAU-03** with the residual stated, rather than closed on three quarters of the work |

## Dependencies discharged

| ID | Dependency | Status |
|---|---|---|
| DEP-901 | Cadence agreeing pre-notification and rollback obligations at the March 2027 renewal | **Agreed 2027-03-14.** The basis for R-23's impact reduction |
| DEP-902 | Ironwood availability for the second annual segmentation test inside the May window | **Performed 2027-05-21** |
| DEP-903 | Verition credential release sustaining through the FY2027 support year | **Holding.** Renewal is the BAU-02 trigger |
| DEP-904 | Truvance agreeing an incident response-time commitment | **DECLINED.** BAU-01 |
