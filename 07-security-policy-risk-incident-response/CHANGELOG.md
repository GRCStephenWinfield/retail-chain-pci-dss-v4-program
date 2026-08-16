# Changelog — Phase 07: Security Policy, Risk & Incident Response

Format follows [Keep a Changelog](https://keepachangelog.com/); semantic versioning.

## [1.0.0] — 2026-07-15
### Added
- Baselined the Phase 07 document set `07.00`–`07.13` (14 documents), delivering **PCI DSS Requirement 12** — the governance spine and the last build phase before the QSA assessment.
- Published the **policy architecture**: one overarching information security policy, **14 topic-specific policies**, 3 programme-level policies and **61 operational procedures**, with each topic-specific policy assigned a named owner expected to answer questions about it without reading it.
- Tested **dissemination rather than assuming it** under 12.1.1: four mechanisms across ~34,000 staff and 6,800 seasonal colleagues, with **findability measured** — colleagues asked to locate the policy governing a specific situation within a set time. The weakest population was the one expected: colleagues furthest from the corporate network.
- Tested **12.1.3 acknowledgement by interview rather than by counting clicks**: 46 people asked what their own responsibilities were under the policy; **42 answered correctly**. A 100% click-through rate and a 91% comprehension rate are not the same measurement.
- Delivered **12.2.1 acceptable use** across nine categories of end-user technology, including the list of products approved for employee use.
- **Consolidated all fourteen targeted risk analyses into one register** — **9 under 12.3.1**, **1 under 12.3.2** (the customized approach at 8.3.9), and **4 elective** analyses Marketa wrote where the standard did not compel one. Delivered the separate **12.3.3** cryptographic cipher and protocol review (four suites removed) and **12.3.4** technology review (eleven items approaching end of life).
- Delivered the **12.6 security awareness programme** reaching **97.1%**, with 12.6.3.1 phishing and social engineering content and 12.6.3.2 acceptable-use content, and seasonal completion reported **separately** rather than hidden inside the blend.
- Delivered **12.7.1 personnel screening** across the CDE-access population, with the boundary of "within the constraints of local law" addressed across 38 states, and the honest limitation that screening is a point-in-time control on a population that turns over.
- Performed the **12.5.2 annual scope confirmation** — the requirement Phase 02 exists to satisfy — reconciling to **71 assessed components** with six systems entering and six leaving since Phase 02, and re-verifying the conditions from Phase 02's 35-condition register.
- Published the **incident response plan at v3.0** under 12.10.1: severity model, activation authority, the CSIRT and its standing authorities, and the **24-hour compromise notification to Cardinal under obligation C5**, which runs from *determination*.
- Delivered **12.10.2 to 12.10.4.1**: the annual plan test, a **12-person 24/7 roster** with four unannounced out-of-hours activation tests, and **TRA-09** setting incident response training at semi-annual for the core team and annual for the extended roster.
- Delivered **12.10.5 and 12.10.6**, connecting Phase 06's detective controls — the SIEM's 187 detection rules, 11.5.2 change detection, 10.7.2 failure detection and **11.6.1 payment-page tamper detection** — to the response process.
- **Formally delivered 12.10.7**, presenting procedures **P-0 to P-4** each traced to the real discovery that produced it, and the **second full discovery run (2026-08-17 → 08-28) that returned clean**.
- `trackers/`: the fourteen targeted risk analyses, the 12.10.7 procedures, the risk position entering assessment, the policy suite.
- `diagrams/`, `logs/`, `governance/`, `adr/` (0026–0028), and `templates/` per the portfolio standard.
- Package scaffolding: `07.00-README.md`, `CHANGELOG.md`, `STRUCTURE.md`, `install.sh`, `MANIFEST.md`.

### Findings
- **TT-2026-01**, the annual tabletop, took **9 hours 20 minutes** to reach a determination the plan assumed would take four — and produced **six findings**, including that **nobody had defined what "determination" means** even though the 24-hour notification clock runs from it.
- One of four unannounced out-of-hours activation tests **went unanswered** (2026-08-19). The roster gap was corrected; three subsequent tests were answered in 4, 9 and 11 minutes.
- Seven personnel records carried a jurisdictional omission in the screening evidence; corrected.

### Changed
- **R-14 High 16 → Low 6**, on the **90-day clean drift-detection count completing 2026-10-01**. The clock had been reset once, on 2026-07-03, and the reset was honoured rather than argued away.
- **R-31 High 16 → Low 6**, on the **second full discovery run returning clean** — the exit criterion published in Phase 03, not the cleanup of the first run.
- **R-02, R-05 and R-27 High → Moderate**, impact held at 5 in all three. **R-27 is the thinnest of the five movements** and carries a recorded dissent and a return-to-High condition.
- **R-17 and R-36 held at High**, by the 8.6.2 and 11.3.1.2 Not in Place findings respectively.
- **Register position entering the assessment: 2 High · 22 Moderate · 20 Low.**
- Corrected an acquirer-obligation reference in Phase 02's `02.03`: the 24-hour compromise notification is **C5**, not C9 (C9 is the obligation to provide TPSP AOCs on request).

### Decisions
- **ADR-0026** — **a suspected incident activates the plan.** The word "suspected" in 12.10.1 does most of the work; a plan that activates only on confirmation activates after the period in which it would have helped. False activations are the accepted cost.
- **ADR-0027** — **the exercise scenario is chosen by somebody who did not write the plan.** An author testing their own plan tests the parts they already thought about.
- **ADR-0028** — **a lesson either changes the plan or is recorded as declined**, with a reason and a named decider. Eleven lessons: nine adopted, two declined. A lessons-learned log with no declinations is a log where the inconvenient lessons evaporated.
- **DEC-710** — enter the assessment with **both Not in Place findings recorded in advance**, declining a late compensating-control argument three weeks before fieldwork.

### Notes
- **12.10.7's third limb is the requirement.** Deleting the data is the easy part; determining how it got there and fixing the process gap is what produced all four of Marketa's procedures.
- The four **elective** targeted risk analyses exist because a frequency nobody can justify is a frequency nobody will defend at fieldwork.
- Both Not in Place findings are dated **2027-01-31** against a re-assessment on **2027-02-18**. **There is no float**, and it is stated rather than disguised.
- No fine amounts or fee schedules appear anywhere. PCI DSS is contractual, not statutory; the Council does not enforce; there is no PCI certification for a merchant.
- All content illustrative and fictional.

## [Unreleased]
- Phase 08 — QSA Assessment & ROC Production.
