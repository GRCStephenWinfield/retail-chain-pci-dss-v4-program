# RAID Log — Phase 08

## Risks

| ID | Description | Rating | Owner | Treatment |
|---|---|---|---|---|
| RAID-801 | Both remediation dates are 2027-01-31 against a re-assessment on 2027-02-18. **There is no float** | High | Trevor Kim | Both plans complete ahead of the date; Route B retained as a fallback for CAP-06 |
| RAID-802 | The right to perform authenticated scanning on nine appliances now rests on a **contract clause with a renewal date** | Moderate | Trevor Kim | Route B — appliance replacement — retained on the 2027 roadmap |
| RAID-803 | The 8.3.9 customized approach must be **re-argued at every assessment**, and from scratch when the assessor rotates in 2028 | Moderate | Naomi Bhatt | 51 assessor hours budgeted annually; the 2026 variance recorded for the 2027 estimate |
| RAID-804 | The three compensating controls are **not permanent**; each must be re-validated annually and none has a vendor roadmap behind it | Moderate | Trevor Kim | Annual re-validation calendared; Phase 09 inherits |
| RAID-805 | Seventeen assessor observations are open and unassigned at the close of the phase | Low | Owen Castellanos | Handed to Phase 09 for owner and date assignment |

## Assumptions

| ID | Assumption | Status |
|---|---|---|
| ASM-801 | That the evidence built during the work would satisfy an assessor without re-production | **Held** — 186 of 214 requests (86.9%) satisfied from existing artefacts |
| ASM-802 | That every store-side control would have operating history before fieldwork | **Held** — no requirement was assessed as lacking it. R-41 moves on this |
| ASM-803 | That backup destinations inherit the protection of their source | **Disproved narrowly** — two of nine ruleset backups found on an unrestricted share (1.2.8), corrected 2026-11-05 |
| ASM-804 | That a policy prohibition on removable media would support a 5.3.3 Not Applicable determination | **Disproved** — the QSA rejected it; USB ports remained enabled on 31 of 71 components |

## Issues

| ID | Issue | Resolution |
|---|---|---|
| ISS-801 | CTP-7 — the per-account behavioural baseline report did not initially cover all 61 accounts across the whole period | Full-period per-account reports produced; passed on the second evidence round |
| ISS-802 | CTP-11 — Marketa could show the configured alert but not an instance of it firing | Three real threshold breaches produced from the operating period; passed on the second evidence round |
| ISS-803 | Six evidence responses were judged insufficient at first pass | All six re-produced and accepted; zero requests unsatisfied |

## Dependencies

| ID | Dependency | Status |
|---|---|---|
| DEP-801 | Verition POS Systems agreeing a contract amendment granting credential release | Executed 2027-01-08 |
| DEP-802 | Steering Committee approval of a change-freeze exemption for the 8.6.2 work | Approved 2026-12-17 |
| DEP-803 | Sable Ridge availability for a re-assessment inside the February window | Confirmed; performed 2027-02-18 |
| DEP-804 | Cardinal Merchant Bank accepting a dated remediation plan rather than requiring immediate re-validation | Acknowledged 2026-12-16 with monthly status reporting |
