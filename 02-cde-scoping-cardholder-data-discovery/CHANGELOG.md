# Changelog — Phase 02: CDE Scoping & Cardholder Data Discovery

Format follows [Keep a Changelog](https://keepachangelog.com/); semantic versioning.

## [1.0.0] — 2026-07-15
### Added
- Baselined the Phase 02 document set `02.00`–`02.12` (13 documents) — the phase that tests the Phase 01 scope hypothesis and produces the population the assessment will sample from.
- Established the **scoping methodology**: the three categories the standard recognises (CDE, connected-to / security-impacting, out of scope), the tests for each, the definitions of cardholder data and **sensitive authentication data**, and the evidence standard — **scope is proven, not asserted**.
- Ran **cardholder data discovery across 100% of the estate** — **1,842 of 1,842 systems**, **41 network shares**, **6 email archives**, 4,318 backup sets reviewed with restore-and-scan on sampled images, and reconciliation of 137 decommissioned records against live network discovery. **0 instances** of sensitive authentication data retained after authorisation.
- Documented **four unexpected account data locations**, none of them inside the 604 systems believed in scope: **PAN-01** ~11,400 call recordings with audible PAN predating DTMF masking; **PAN-02** 2,187 scanned dispute documents plus 33 backup copies; **PAN-03** 1,143 PAN instances in a debug log on a host the CMDB recorded as decommissioned; **PAN-04** 34 records in an emailed spreadsheet across 11 copies. All remediated; **no indicator of compromise**, with one **stated limitation** on log availability that was deliberately not closed by inference.
- Created four **12.10.7** procedures — P-1 media, P-2 unstructured document stores, P-3 orphaned and decommissioned assets, P-4 inbound customer-initiated account data — each arising from a specific finding.
- Completed the **card-present scope analysis**: P2PE verified per store across **482 stores / 1,914 lanes** against a twelve-point PIM checklist, with lane-level capture testing. **Three stores were found with a non-conforming POI network path and had their scope reduction suspended on 2026-02-06, restored on evidence 2026-02-15.**
- Completed the **e-commerce scope analysis**: the checkout iframe is served from Truvance's origin and no Marketa origin collects a card field across **6 templates**, so the AWS tier leaves the CDE — **while the payment pages remain fully in scope for 6.4.3 and 11.6.1**, with **38 scripts** inventoried of which **11 are third-party**.
- Completed the **MOTO scope analysis**: DTMF pause-and-resume masking across **310 agents**, 60 test calls, 13 alternate-capture-path analyses, and a 90-day authorisation reconciliation showing **0 bypasses** — alongside the current-versus-historic distinction that produced PAN-01.
- Published the **1.2.4 account data flow diagrams** and the **1.2.3 network diagram** across **9 zones**, with reachability tested in **both directions** and a documented **negative detokenisation test** returning HTTP 403 rather than a contractual assurance.
- Enumerated and justified the **63 connected-to / security-impacting components** by function, together with the systems **considered and excluded** and the reason for each exclusion.
- Published the definitive **inventory of 71 assessed system components** — **8 CDE + 63 connected-to** — maintained under 12.5.1 and reconciled monthly.
- Delivered the **scope reduction analysis: 604 → 71, a reduction of 88.2%**, attributed by mechanism, with **35 reduction conditions** recorded with verification cadence and reversal triggers — and the counter-argument stated plainly: **scope reduction is not risk reduction**, it converts a technical control problem into a third-party assurance problem.
- Answered **all 16 questions** Phase 01 posed and dispositioned **all 12 assumptions**.
- Recorded the **12.5.2 annual scope confirmation** and the QSA's early scope review, including three challenges (QC-01 to QC-03) and the assessor's refusal to pre-approve the scope.
- `trackers/`: assessed component inventory, PAN discovery findings, assumption and question disposition, scope reduction analysis.
- `diagrams/`, `logs/`, `governance/`, `adr/` (0005–0007), and `templates/` per the portfolio standard.
- Package scaffolding: `02.00-README.md`, `CHANGELOG.md`, `STRUCTURE.md`, `install.sh`, `MANIFEST.md`.

### Changed
- **Scope: 604 believed → 71 assessed.** 543 systems removed, **61 retained**, and **10 newly identified** that had never appeared in the 604. The hypothesis was wrong in **both** directions.
- **A-04 disproved** — DTMF masking was implemented forward-only in 2023 and had never been applied to the existing recording estate.
- **A-07 disproved** — dispute and chargeback handling does create documents containing account data.
- **A-05 restated** in testable form for Phase 03 rather than counted as a third disproof; the reasoning is on the page in 02.03 §7.3 and invites challenge.
- **R-31 RAISED to 4 × 4 = 16 (High)** on 2026-02-05, notwithstanding complete remediation. Three further risks created — R-08, R-19, R-22 — each with a distinct root cause.
- Programme risk **PR-01 closed**: the scope hypothesis was tested, and found wrong in both directions.

### Decisions
- **ADR-0005** — where discovery or testing disproves an assumption, **raise or restore the risk rating even after full remediation**. R-31 comes down on a clean second discovery run (due 2026-08-31), not on cleaning up the first.
- **ADR-0006** — classify the **482 store servers in the connected-to band for governance** while enumerating only the segmentation boundary and shared services in the 63. The position is **explicitly contingent on the May segmentation test**.
- **ADR-0007** — scan **100% of the estate** rather than a risk-based sample. Vindicated: three of the four findings were in populations no inventory covered.

### Notes
- Scope is **evidenced for data and configuration-only for segmentation.** Configuration is not proof.
- **The first segmentation penetration test in May 2026 will fail.** Phase 03 records it, and ADR-0005 will be invoked again.
- No fine amounts or fee schedules appear anywhere. PCI DSS is contractual, not statutory; the Council does not enforce; there is no PCI certification for a merchant.
- All content illustrative and fictional. No real account data appears anywhere in this repository.

## [Unreleased]
- Phase 03 — Network Segmentation & Architecture.

### Changed
- Corrected two requirement-range citations in `02.08` from **3.7.1–3.7.9** to **3.7.1–3.7.8**. **There is no 3.7.9 in PCI DSS v4.0.1** — 3.7.7 is prevention of unauthorised key substitution and 3.7.8 is key-custodian acknowledgement — and the range was the last place in the repository still implying otherwise.
