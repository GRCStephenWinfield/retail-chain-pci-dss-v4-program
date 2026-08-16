# Changelog — Phase 09: Executive Reporting & Continuous Compliance

Format follows [Keep a Changelog](https://keepachangelog.com/); semantic versioning.

## [1.0.0] — 2026-07-15 · PROGRAMME CLOSE

### Added
- Baselined the Phase 09 document set `09.00`–`09.14` (15 documents), closing the **Marketa Retail Group PCI DSS v4.0.1 compliance programme** on **2027-06-30** after **17.6 months**.
- Recorded the **Board and Audit Committee report of 2026-12-17**, at which the non-compliant Attestation of Compliance was presented in full, and the **quarterly report of 2027-03-11** and **closure report of 2027-06-24**.
- Published the **12-measure board scorecard** at **8 green · 3 amber · 1 red**, with the red measure — *incident response capability proved against a real compromise of account data* — retained under **ADR-0035** rather than retired as unmeasurable.
- Published the **continuous compliance metric catalogue: 34 measures across 6 categories, 9 leading and 25 lagging**, of which 12 sit on the board scorecard, alongside a section on **what a metric cannot tell you** drawn entirely from the programme's own record.
- Reported against **every commitment in the 01.06 programme charter**, without softening, including the commitments not delivered in full.
- Reported the **cost of compliance: $4,588,000 against a $4,600,000 envelope, $12,000 under**, with contingency drawn to **$175,000** — expressed three ways: **0.11% of $4.2B revenue**, **$0.067 per card transaction**, **$14,993 per applicable sub-requirement**.
- Disposed of **all seventeen assessor observations — 11 adopted, 3 adopted with amendment, 3 declined in writing with reasons and reversal conditions** — under **ADR-0034**.
- Closed the **eleven open items: 8 on time, 2 late, 1 not closed**, and carried **BAU-01, BAU-02 and BAU-03** into business as usual with their original framing.
- Delivered **eleven lessons learned, four of them uncomfortable**.
- Transitioned to business as usual under **ADR-0033**: the PCI Steering Committee becomes the **quarterly PCI Governance Forum**, the Working Group moves to fortnightly, the QSA checkpoint to quarterly, and **every recurring obligation is assigned to a named person before the programme closes**.
- Published the **2027–28 compliance calendar: 47 dated obligations** — 12 monthly governance, 4 ASV quarters, 4 POI inspection cycles, 4 quarterly TPSP reviews, **14 staggered targeted risk analysis reviews**, and 11 annual and semi-annual set-pieces — each with a named owner.
- Documented the **continuous compliance monitoring estate** (CSC-1…CSC-10, DA-1…DA-6, CA-1…CA-6, 11.6.1, MT-1, the monthly control attestation and the quarterly controlled execution) with each mechanism's recorded failure — **F-07, F-14, F-18** — and the thesis that **every one of them tells you a control stopped, and none tells you a control was never right**.
- Set out the **2028 assessor rotation** plan under **ADR-0036**: **12 QSA-derived testing procedures, 18 sampling rationales, 3 compensating controls and 4 Not Applicable determinations all reset to zero**, and the scope boundary itself rests on three third parties' validation status.
- `trackers/`: the final risk register, metrics and the board scorecard, observations and open items, the calendar and cost.
- `diagrams/`, `logs/`, `governance/`, `adr/` (**0033–0036**, plus the complete **ADR-0001 to ADR-0036** index) and `templates/` per the portfolio standard.
- Package scaffolding: `09.00-README.md`, `CHANGELOG.md`, `STRUCTURE.md`, `install.sh`, `MANIFEST.md`.

### Findings
- **The close forecast was missed by three entries, and the phase publishes the arithmetic.** 03.12 §6 forecast **0 High · 13 Moderate · 31 Low**; the actual close is **0 · 16 · 28**. Under this register's own discipline — a rating moves on likelihood unless the consequence itself changed, and a likelihood of 1 is reserved for events that are not reasonably foreseeable — **an entry scored 3 × 4 reaches 2 × 4 = 8 and stops. Eight is a floor.** **R-04, R-28 and R-33 are all 3 × 4**; **R-17 and R-36** both arrive at **2 × 4**; **R-13 and R-15** reached Low although the forecast did not expect them to. The forecast was written in month seven of an eighteen-month programme, before the discipline had been tested against a single year of evidence.
- **Truvance declined a contractual response-time commitment for incident-driven token resolution.** **OI-07-01 does not close**, is not re-worded into something closable, and becomes **BAU-01** with a named owner and the 2028-03-31 renewal date. Marketa still cannot scope an account data compromise on its own evidence.
- **Two open items closed late and are reported as late** — OI-06-04 by **34 days** and OI-06-08 by **40** — rather than re-dated. OI-06-08's lesson is recorded: **an item written against somebody else's date is an item you cannot deliver on time.**
- **The second annual segmentation penetration test closed 2027-05-21 with 6 findings, 0 Critical and 0 reached from Z3**, so **R-27's return-to-High condition did not fire.** Not firing is a result; it is not proof.
- **OI-06-09 closed with a residual** — 3 of 4 detection rules validated. The fourth is carried as **BAU-03** rather than the item being closed on three quarters of the work.
- **The shared-account population was understated by nine.** The nine appliances' built-in administrative accounts were governed under the appliance inventory rather than the enterprise identity store, so Marketa's own 8.2.2 figure of eleven understated a true population of **twenty**. Adopted as **OBS-05**; both registers reconciled **2027-04-17**.
- **Business as usual runs at 4.2 FTE against a programme average of 11.9.** 09.08 §6 names the obligations where the honest answer is that **less will be done**, rather than that the same will be done more efficiently.

### Changed
- Eight risks move, **all to Low**: **R-13** 9 → 6, **R-22** 9 → 6, **R-21** 12 → 6, **R-15** 12 → **4 at a likelihood of 1**, **R-23** 10 → 6, **R-08** 12 → 6, **R-18** 12 → 6, **R-32** 8 → 6.
- **Four impact reductions in this phase — R-23, R-08, R-18 and R-32 — bringing the programme total to seven, all named**: R-10 (Phase 06), R-14 and R-31 (Phase 07). The final phase carries four because **architecture changes consequences and operations change likelihood**, and the last four months are when the architectural changes landed.
- **R-15 carries the register's only non-expiring likelihood of 1**, argued explicitly against 08.13 §5's statement that the register would carry only an expiring one. The condition the entry describes — a static pre-shared key remnant — no longer exists in the estate: **population 214 → 0**, key decommissioned, SSID withdrawn. **The entry does not close**, because the estate can reacquire a static key the same way it acquired this one.
- Register position moves from **0 High · 24 Moderate · 20 Low** to **0 High · 16 Moderate · 28 Low**. **Forty-four entries; none closed, none removed, none ever added** across eighteen months.
- **The sixteen Moderate entries at close are named**: R-01, R-02, R-03, R-04, R-05, R-06, R-09, R-12, R-17, R-20, R-25, R-27, R-28, R-30, R-33, R-36.

### Not Claimed
- **That compliance is a state.** It is a point-in-time attestation about an assessed period, and there is **no PCI DSS certification for a merchant**.
- **That the environment is secure.** An assessment tests controls against a standard; it does not test an environment against an adversary. The programme's own instruments answered the second question and their answers were less comfortable.
- **That the incident response capability works.** It has never been tested by the event it exists for, one board measure is red for that reason, and **R-43 has not moved in nine phases**.
- **That the register reached its forecast.** It did not, and 09.12 §3 publishes the arithmetic rather than the excuse.
- **That business-as-usual resourcing at a third of programme resourcing is sufficient.** Nobody has run a business-as-usual year yet; the first completes 2028-06-30.
- That a Report on Compliance or an Attestation of Compliance constitutes compliance with any law, that a QSA's opinion binds a card brand or an acquirer, or that a merchant can be certified against PCI DSS. **PCI DSS is contractual, not statutory.** **No fine, fee schedule or penalty amount appears anywhere in this programme.**
