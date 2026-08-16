# Changelog — Phase 06: Monitoring, Testing & Third Parties

Format follows [Keep a Changelog](https://keepachangelog.com/); semantic versioning.

## [1.0.0] — 2026-07-15
### Added
- Baselined the Phase 06 document set `06.00`–`06.13` (14 documents), delivering **PCI DSS Requirements 10, 11 and 12.8/12.9**.
- Published the **logging architecture** under 10.1 and 10.2 across all 71 assessed components: the 10.2.1.1–10.2.1.7 event set, the 10.2.2 mandatory record fields, ~41,000 events per second and ~3.5bn events reduced to roughly 112 adjudicated cases a day.
- Delivered **log retention and protection** under 10.3 and 10.5 — **15 months retained against a 12-month obligation, 6 months hot against a 3-month obligation** — with read access limited, modification protection, and change-detection on the audit logs themselves.
- Delivered **automated log review** under 10.4, including the future-dated **10.4.1.1**: a daily population of **60 of 71** components reviewed by **187 detection rules**, and the remaining **11 of 71** reviewed monthly under **TRA-10.4.2.1**.
- Delivered **time synchronisation and critical security control failure detection** under 10.6 and 10.7, with **21 failures** detected and responded to during the year — **9 of them found only by a secondary assertion** — each carrying root cause analysis and remediation duration under 10.7.3.
- Delivered **internal vulnerability scanning** under 11.3.1 across four cycles with **TRA-11.3.1.1** bounding the non-critical population, and **change-driven scans** under 11.3.1.3.
- Delivered **ASV scanning** under 11.3.2: four quarterly scans, **Q1 FAILED on three findings and was rescanned clean in 11 days**, Q2–Q4 passed first time, plus 15 change-driven external scans under 11.3.2.1.
- Delivered **wireless detection and intrusion detection** under 11.2 and 11.5, including change-detection under 11.5.2 with comparisons at least weekly.
- Delivered the **September 2026 application penetration test** under 11.4: **11 findings — 1 Critical, 3 High, 4 Medium, 3 Low** — consolidating with Phase 03's segmentation test to the programme total of **19 (2 Critical, 5 High, 7 Medium, 5 Low)**, **all remediated and independently retested**.
- **Delivered 11.6.1 payment-page tamper detection**, live **2026-08-13**: synthetic browser agents fetching the six payment templates **from outside the network** across **192 permutations**, comparing received HTTP headers, DOM and script content against a baseline reconciled monthly to the 6.4.3 inventory, with **alerting inside 24 hours** under **TRA-11.6.1** against a requirement floor of weekly.
- Delivered **third-party service provider management** under 12.8 and 12.9 across **six providers**, with 12.8.5 responsibility matrices confirmed *with* each provider rather than inferred from contracts, and the elective **TRA-12.8.4** setting annual formal review plus a quarterly status check.
- Published the **consolidated security testing programme**, including the annual calendar and — deliberately — **what is not tested and why**.
- `trackers/`: penetration test findings, ASV scan results, TPSP register, risk movement and the script control.
- `diagrams/`, `logs/`, `governance/`, `adr/` (0020–0025), and `templates/` per the portfolio standard.
- Package scaffolding: `06.00-README.md`, `CHANGELOG.md`, `STRUCTURE.md`, `install.sh`, `MANIFEST.md`.

### Findings
- **11.3.1.2 — NOT IN PLACE.** Authenticated internal scanning achieved on **62 of 71** components; the remaining **9** are vendor-locked store back-office appliances. Marketa argued the requirement's route for systems unable to accept credentials and **the QSA rejected it**, distinguishing *a system technically unable to accept credentials* from *an entity contractually unable to obtain them*. **No compensating control was argued.** Recorded as Not in Place, dated **2027-01-31**, becoming **CAP-06**. **R-36 held at High 16.**
- **APP-PT-01 — Critical.** An unauthenticated administrative interface on the chargeback application, a CDE component. It had never had an authentication check applied. **Forensic enumeration of prior access was performed** rather than absence being asserted.
- **The Q1 ASV scan failed** on three findings. Root cause: a marketing subdomain repointed to a stale-image edge host with no scope-delta review. Fed into the significant-change definition.
- A **Truvance AOC scope statement did not clearly cover a service Marketa relies on**; clarified and re-issued. An AOC is evidence about the services it names, and only those.

### Changed
- **R-01 REDUCED — High 20 → Moderate 10.** Likelihood 4 → 2; **impact held at 5**. It was held through Phase 04 because 6.4.3 is preventive and alone leaves the post-authorisation modification path open. It moves now that **11.6.1 completes the control**, and not before.
- **R-09 reduced** to Moderate on SIEM coverage, automated review and failure detection.
- **R-10, R-19, R-26 and R-34 reduced** to Low.
- **R-36 and R-17 held at High** by the two Not in Place findings, both dated 2027-01-31 and sharing a re-assessment window **with no float**.
- Corrected two documents that attributed **both** programme Criticals to the application penetration test: `06.05` and Phase 04's `04.07`. The application test produced **one**; the second is Phase 03's SEG-PT-01.
- Corrected a contradiction in `06.04` over failure **F-18**: the retrospective re-assertion found **no divergence** in the four-day window, so R-14's exit clock is not reset by it — though the four days of undetected coverage are recorded rather than discounted.

### Decisions
- **ADR-0020** — **remediation of a penetration test finding is verified by the party that found it, not by the party that fixed it.** All 19 findings were re-tested by their finder; 18 closed at first re-test and **one only at second**, which is the justification. The separate decision that **"automated" under 10.4.1.1 means the mechanism performs the review** is **DEC-602**, recorded against 06.03 §3 rather than as an ADR.
- **ADR-0021** — **evaluate payment pages as received by the consumer browser, from outside the network.** An internal comparison tests what Marketa published, not what the customer received.
- **ADR-0022** — **a quarter with zero detective alerts is a defect to investigate, not a success.** Benign alerts are a detective control's proof of life; tuning has no natural stopping point.
- **ADR-0023** — **provider evidence is graded, and a grade is not a control.** 80 rows graded across six providers: 28 E1, 17 E2, 35 E3. A grade is a statement about the evidence, not about the control.
- **ADR-0024** — **TPSP monitoring is tiered by what the provider's validation holds up**, above the 12-month floor, and the annual review is never displaced by the tier.
- **ADR-0025** — hold a risk until the control that treats it is complete, and publish the untested surface.
- Reporting the Q1 ASV failure to the acquirer as a failure is **ADR-0003**, not a Phase 06 decision; enumerating prior access rather than asserting its absence is **DEC-608** and 06.08 §6, and carries no ADR of its own.

### Notes
- **6.4.3 is preventive; 11.6.1 is detective.** The script control is complete only with both, and the portfolio said so in Phase 04 rather than claiming completion early. The concrete proof: a vendor released a new version of an authorised script *before* the contractual notification arrived — 6.4.3 alone would have permitted it.
- **Scope reduction's bill arrives here.** Three of the six providers sit between Marketa and its ability to accept payment at all; the concentration is carried as a structural residual that does not reduce.
- Service-provider-only requirements (10.7.1, 11.5.1.1) were **never in the 306** applicable population and are not among the ROC's four Not Applicable entries.
- No fine amounts or fee schedules appear anywhere. PCI DSS is contractual, not statutory; the Council does not enforce; there is no PCI certification for a merchant.
- All content illustrative and fictional.

## [Unreleased]
- Phase 07 — Security Policy, Risk & Incident Response (Requirement 12).
