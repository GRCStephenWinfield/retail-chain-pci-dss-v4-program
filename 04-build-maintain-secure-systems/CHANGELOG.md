# Changelog — Phase 04: Build & Maintain Secure Systems

Format follows [Keep a Changelog](https://keepachangelog.com/); semantic versioning.

## [1.0.0] — 2026-07-15
### Added
- Baselined the Phase 04 document set `04.00`–`04.13` (14 documents), delivering **PCI DSS Requirements 2 through 6** across the 71 assessed system components. Requirement 1 was delivered in Phase 03 and is referenced, not re-delivered.
- Published **secure configuration standards** under Requirement 2: controls **SCS-01 to SCS-11** and six platform baselines — **BL-WIN 18 · BL-LNX 15 · BL-NET 11 · BL-AWS 6 · BL-DB 3 · BL-APP 12**, plus 6 un-baselined SaaS control planes, reconciling to **71**.
- Documented **Requirement 3** honestly: Marketa stores no account data, so PAN transits on **exception paths only** — disputes, settlement reconciliation and refunds. The obligation this creates is not encryption at rest but the **continuing duty to keep proving nothing has come to rest**. Covers 3.2.1 retention, **3.3.1 SAD never retained after authorisation**, 3.4.1 masking, and the future-dated **3.4.2** prevention of PAN copy and relocation during remote access.
- Documented **key management** under 3.6 and 3.7 (key classes **K-01 to K-10**), stating plainly that **Truvance holds the keys that matter** because Marketa does not store PAN — Marketa's key management concerns TLS, backup encryption, secrets and the P2PE relationship.
- Delivered **Requirement 4**: TLS standards, the 4.2.1.1 inventory of trusted keys and certificates, and the **DLP control deployed 2026-04-10** in response to PAN-04.
- Delivered **Requirement 5**: EDR across all 71 components, **5.3.3** removable-media scanning across the four distribution centres and store back-offices, and **5.4.1** automated anti-phishing — explicitly not satisfiable by training alone. Two of the programme's 14 targeted risk analyses arise here.
- Delivered **6.3 vulnerability management** including the future-dated **6.3.2 inventory of bespoke, custom and third-party components**, the patch SLA, and how patching survives the October–January seasonal freeze.
- Delivered **6.2 secure development**: 74 development personnel trained, code review by someone other than the author on 100% of releases, and **6.5.5** — live PAN never used for testing.
- Defined **what counts as a significant change** — triggers **SIG-1 to SIG-10** — the definition that **11.3.1, 11.3.2.1, 11.4.3, 11.4.5 and 12.5.2 all hang off**. In the period, 1,043 changes produced **27 significant changes**, of which **4 confirmations under 6.5.2 produced a finding**.
- Delivered **6.4.2** public-facing application protection as the sole route, with WAF coverage, tuning, and the staged move from detection to blocking.
- **Delivered 6.4.3 payment-page script management in full**: an inventory of **38 scripts across 6 templates, 11 third-party**, each with a named owner, written business justification, a named-authoriser workflow and an integrity binding (Subresource Integrity for static third-party scripts, build-pipeline hashing for first-party modules, a nonce-bound module runtime). CSP moved to enforcing 2026-05-18; SRI enforced 2026-06-02.
- Published **configuration baseline compliance** evidenced from deployed state in three recorded classes — **56 asserted · 9 observed · 6 attested** — with quarterly **negative testing** confirming the assertions detect divergence (first cycle: 18 of 18 detected, two detection windows corrected).
- `trackers/`: payment-page script inventory, configuration baselines, significant-change register, control-to-risk traceability.
- `diagrams/`, `logs/`, `governance/`, `adr/` (0010–0012), and `templates/` per the portfolio standard.
- Package scaffolding: `04.00-README.md`, `CHANGELOG.md`, `STRUCTURE.md`, `install.sh`, `MANIFEST.md`.

### Findings
- **Three payment-page scripts were unauthorised** when the first inventory closed. All three arrived through a marketing tag manager that **nineteen accounts** could use to publish to any template, including the six payment templates. Nothing was compromised; the tag manager was working exactly as designed. **This is a governance finding, not a technology one.**
- The **6.5.6 pre-production gate** found 2,140 real customer records in a fixture dataset. They contained **no account data** — which is the only reason it is a finding rather than an incident. Root cause: a fixture-generation script pointed at a production replica in 2024 and never reverted.
- The first **3.4.2** quarterly test failed 1 of 12 cases; corrected and re-tested.
- The May key-custodian reconciliation found **two share-holders who had changed role** since issue.

### Changed
- **R-34 (payment-page script inventory drift) reduced** — the one clear reduction in the phase, because the treatment removed a capability rather than governing it.
- **R-01, R-20, R-21, R-30 and R-37 are HELD, not reduced.** Every control here is under three months old, and a control with no operating history is a design rather than a demonstrated reduction.
- **6.4.1 recorded as superseded by 6.4.2** (from 2025-03-31). Earlier phases mapped controls to 6.4.1; the mapping is restated in 04.09 and 04.12 rather than amended in another phase's approved file. It is **not** one of the four Not Applicable entries.
- **TRA-5.2.3.1 set at six-monthly**, amending the annual cadence assumed in the Phase 01 calendar. An assumed frequency is not a determined one.
- Removed a draft table row citing a **"3.7.9"** requirement that could not be verified. 3.7.7 is prevention of unauthorised key substitution; 3.7.8 is custodian acknowledgement.
- Recorded **3.6.1.1 as a service-provider requirement**, not applicable to Marketa; the cryptographic architecture description is maintained voluntarily.

### Decisions
- **ADR-0010** — treat **6.4.2 as the sole route** for public-facing application protection; cite the requirement in force, not the one in force when the control was designed.
- **ADR-0011** — **remove the tag manager's publication path rather than govern its use.** Governing a capability leaves the capability; the five-day SLA is what makes removal survivable rather than routed around.
- **ADR-0012** — evidence configuration compliance **from deployed state, never from the baseline document**. The direct lesson of Phase 03's eighteen-month trunk misconfiguration.

### Notes
- **6.4.3 is preventive; 11.6.1 is detective.** The script control is not complete until both operate. 11.6.1 lands in Phase 06.
- Two items are already known to be heading for the assessment: the **two legacy batch integrations with embedded credentials** (8.6.2) and the **nine appliances that cannot accept credentialed assessment** (CAP-06).
- No fine amounts or fee schedules appear anywhere. PCI DSS is contractual, not statutory; the Council does not enforce; there is no PCI certification for a merchant.
- All content illustrative and fictional.

## [Unreleased]
- Phase 05 — Access Control & Physical Security (Requirements 7, 8 and 9).
