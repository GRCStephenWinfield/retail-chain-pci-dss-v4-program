# Changelog — Phase 01: Program Foundation & PCI Governance

Format follows [Keep a Changelog](https://keepachangelog.com/); semantic versioning.

## [1.0.0] — 2026-07-15
### Added
- Baselined the Phase 01 document set `01.00`–`01.13` (14 documents) for **Marketa Retail Group, Inc.** — a Level 1 merchant validating against **PCI DSS v4.0.1**.
- Documented the **three payment channels** end to end: card-present through **P2PE-validated** Verition terminals at 1,914 lanes, e-commerce through a **Truvance-served hosted checkout iframe**, and MOTO through **Cadence pause-and-resume DTMF masking** — with one token namespace across all three.
- Established the **regulatory framing** that governs every later claim: PCI DSS is **contractual, not statutory**; the PCI Security Standards Council writes the standard and does **not** enforce it; enforcement runs card brand → acquirer → merchant; and **there is no PCI certification for a merchant**.
- Determined **merchant level from the transaction arithmetic** — 68.4M annual card transactions (50.6M card-present, 15.7M e-commerce, 2.1M MOTO) — confirming **Level 1** and an annual QSA-issued **ROC** and **AOC** with quarterly **ASV** scans. No SAQ route is available at this volume.
- Recorded the **acquirer obligations C1–C10** with Cardinal Merchant Bank, including the **31 December** AOC deadline, ASV attestations within 30 days of quarter end, and 24-hour compromise notification.
- Published the **12-requirement map** across the 6 control objectives, with owner and delivering phase for each, and a full treatment of the **defined approach versus the customized approach** — including why Marketa will use the customized approach exactly once, at **8.3.9**.
- Catalogued the **51 future-dated requirements now mandatory since 2025-03-31**, isolating the thirteen that matter most here — **6.4.3**, **11.6.1**, **8.3.6**, **8.4.2**, **8.6.1–8.6.3**, **10.4.1.1**, **11.3.1.1**, **11.3.1.2**, **12.3.1**, **12.10.7**, **3.4.2**, **5.3.3** and **5.4.1**.
- Issued the **programme charter**: sponsor Raymond Voss (CFO), owner Naomi Bhatt (CISO), delivery manager Owen Castellanos, a **$4,600,000** budget and **11.4 FTE-equivalents**, with a PCI Steering Committee (monthly, CFO chair) reporting quarterly to the Audit Committee.
- Published a **RACI across all nine phases** and stated the assessor boundary explicitly: **the QSA assesses; the merchant remains responsible.**
- Stated the **preliminary scope as a hypothesis** — 604 systems believed in scope — with **12 assumptions written so they can be disproved**, **9 constraints**, and 16 questions Phase 02 must answer.
- Built the **TPSP register** under 12.8.1–12.8.5 covering Truvance Payments, Cadence Voice Solutions, Verition POS Systems, Northbridge Managed Services and Halberd Data Destruction, with a genuine shared-responsibility matrix and the **12.8.4 alternative route** applied where no PCI AOC exists.
- Registered **17 stakeholders** with the objections each group is expected to raise and the answer to each — including store operations facing quarterly inspection across 482 sites, and the marketing team losing unreviewed tag deployment onto payment pages.
- Calendared **50 recurring obligations**, each with frequency, requirement reference, named owner and named **evidence artefact**, laid out month by month across 2026 against the October–January seasonal change freeze.
- Sequenced the nine-phase roadmap **backwards from QSA fieldwork on 2026-11-02**, with gates, dependencies and the critical path.
- `trackers/`: PCI requirement map (+ future-dated requirements), TPSP register (+ shared responsibility), compliance obligations calendar (+ 2026 month-by-month), scope assumptions (+ constraints, + stakeholders).
- `diagrams/`, `logs/`, `governance/`, `adr/` (0001–0004), and `templates/` per the portfolio standard.
- Package scaffolding: `01.00-README.md`, `CHANGELOG.md`, `STRUCTURE.md`, `install.sh`, `MANIFEST.md`.

### Decisions
- **ADR-0001** — run PCI as a **standing programme**, not an annual project. The future-dated requirements cannot be evidenced by a ten-week push before fieldwork.
- **ADR-0002** — the **AOC is signed by the CFO**, not the CISO. An attestation should not be made by the person who built the controls.
- **ADR-0003** — engage **one firm as both QSA and ASV**, with the independence threats, safeguards and a 2028 rotation review documented rather than assumed.
- **ADR-0004** — **no "Not Tested" finding is permitted** in the ROC. Where a requirement is not met it is recorded as Not in Place with a date. This decision is what produces a non-compliant 2026 AOC rather than a comfortable one.

### Notes
- **Nothing in this phase has been validated.** No system has been scanned, no assumption tested, no control assessed. The phase's value is that it makes Phase 02 falsifiable.
- The **604-system figure is a hypothesis and is expected to move in both directions.** The Audit Committee recorded that it does not wish to receive a report in which the scope figure has never moved.
- Two assumptions recorded here — that no Marketa origin collects a card field, and that DTMF masking has eliminated spoken PAN — are the ones Phase 02 tests hardest.
- **No fine amount or fee schedule appears anywhere in this programme**, deliberately. Non-compliance and breach costs are described only as categories.
- Marketa is **privately held**: no SOX, no SEC registration, and no pre-existing external attestation to reuse.
- All content illustrative and fictional. Cardholder-data classification markings are used for realism only; no real account data appears anywhere.

## [Unreleased]
- Phase 02 — CDE Scoping & Cardholder Data Discovery.
