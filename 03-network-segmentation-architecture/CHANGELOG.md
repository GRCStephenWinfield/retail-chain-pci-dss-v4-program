# Changelog — Phase 03: Network Segmentation & Architecture

Format follows [Keep a Changelog](https://keepachangelog.com/); semantic versioning.

## [1.0.0] — 2026-07-15
### Added
- Baselined the Phase 03 document set `03.00`–`03.13` (14 documents) — the phase in which segmentation is built, **tested, failed, remediated and re-tested**, and the 44-risk register is established.
- Established the **segmentation strategy**: segmentation is **optional** under PCI DSS and reduces scope only where it is verified by penetration testing under **11.4.5** (11.4.6's six-month cadence being a service-provider requirement, not a merchant one). Default-deny at every boundary, with permitted flows enumerated individually.
- Specified the **nine-zone architecture** Z1–Z9 with membership, trust levels, fifteen named boundaries and a full zone-to-zone flow matrix.
- Published **Requirement 1 in full** — configuration standards NSC-01 to NSC-14 covering 1.2.1 through 1.5.1, including the network and data-flow diagrams under 1.2.3 and 1.2.4, business justification for ports and services under 1.2.5, the six-monthly ruleset review under 1.2.7, and **anti-spoofing under 1.4.3**.
- Documented the **482-store network architecture** (Z5 back-office, Z6 payment device VLAN, Z7 guest wireless), the P2PE-mandated POI network path, and the operating constraint that any store-side change is a **482× rollout**.
- Documented **cloud segmentation** across the AWS CDE VPC and the 246-workload e-commerce platform, treating **IAM as a segmentation control** — a security group means nothing if a principal can rewrite it — with CloudTrail and flow logs as the evidence source.
- Documented **wireless security** under 1.3.3, 2.3.1/2.3.2, 11.2.1 and 11.2.2 across 1,612 authorised access points, including an explicit applicability determination and the **214-device legacy PSK remnant across 138 stores** that becomes CAP-05.
- Recorded the **segmentation penetration test of 2026-05-15 — RESULT: FAIL.** Ironwood Security Labs reached the store back-office VLAN from store guest wireless in **19 minutes** at store 0417. Root cause: build image **SB-4.1** lost the allowed-VLAN list on the `ROLE-AP` trunk template in November 2024, **latent at 37 stores**. Eight findings — 1 Critical, 2 High, 3 Medium, 2 Low.
- Recorded the **remediation and the re-test**: containment in 41 minutes, Track A VLAN restoration at 37 stores, Track B build image **SB-4.2** to all 482 stores in four uncompressed waves, and the **re-test of 2026-06-26 — PASSED**, across 41 stores (8.5%) with zero findings.
- Introduced **continuous drift detection (DA-1 to DA-6)** live estate-wide from 2026-06-15, with the first 31 days of operating history: 14,942 store-days, 11 divergences at 9 stores, **2 segmentation-determining**.
- Established **NSC ruleset governance**: the first 1.2.7 six-monthly review, change classification under 1.2.2, and the **Boundary Change Authority** (weekly, from 2026-06-01) with two-approver requirements for boundary-affecting change.
- Published the **risk assessment methodology** — likelihood 1–5 × impact 1–5, High ≥ 15 / Moderate 8–12 / Low ≤ 6 — with impact scored on **cardholder data exposure, brand-programme penalties and business interruption**, and every risk blind re-scored by a second reviewer.
- Baselined the **44-risk register: 9 High · 21 Moderate · 14 Low**, and mapped every risk to its treating control, PCI requirement and delivering phase in the control-to-risk traceability, proving **no High risk is untreated**.
- `trackers/`: risk register, segmentation test findings, zone architecture, control-to-risk traceability.
- `diagrams/`, `logs/`, `governance/`, `adr/` (0008–0009), and `templates/` per the portfolio standard.
- Package scaffolding: `03.00-README.md`, `CHANGELOG.md`, `STRUCTURE.md`, `install.sh`, `MANIFEST.md`.

### Changed
- **R-14 RAISED to 4 × 4 = 16 (High)** on 2026-05-18. The Steering Committee explicitly rejected holding the rating on the grounds that the tester never reached the CDE.
- The Phase 02 **scope determination was provisionally suspended** on 2026-05-19 and restored after the passing re-test.
- **ADR-0006 amended, not superseded**, on 2026-07-06. The store estate classification stands; its contingency now rests on the **drift-detection control operating** rather than on a one-off test result, with defined collapse triggers.
- The **R-14 exit clock was reset to 2026-07-03** after two segmentation-determining divergences in the first month of drift detection. Earliest exit 2026-09-30.
- Corrected an anti-spoofing citation in `03.02` from 1.4.2 to **1.4.3**, matching 03.03 and 03.04.

### Decisions
- **ADR-0008** — replace periodic configuration review with **continuous drift detection**. Periodic review compares the documented standard against itself; it answers *is the standard correct?* rather than *is the standard what is running, at 482 sites, today?*
- **ADR-0009** — **deliberately sample the messy estate**, not the standard build. At least one penetration test stratum targets known messiness. This is what found SEG-PT-01.

### Notes
- **The failure is the most valuable result in the phase.** A first segmentation test that passes cleanly usually means it was scoped to pass.
- **The re-test proves the boundary, not the process.** Only operating history proves the process, which is why R-14 stays High.
- Four risks are recorded as **structural** and will never fully reduce: the 482-store estate, TPSP concentration, the seasonal workforce, and vendor-locked appliances.
- The expected close position of **0 High / 13 Moderate / 31 Low** is reported as an expectation, not a plan, at Internal Audit's request.
- No fine amounts or fee schedules appear anywhere. PCI DSS is contractual, not statutory; the Council does not enforce; there is no PCI certification for a merchant.
- All content illustrative and fictional.

## [Unreleased]
- Phase 04 — Build & Maintain Secure Systems (Requirements 1–6).
