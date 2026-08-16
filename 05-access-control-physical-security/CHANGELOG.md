# Changelog — Phase 05: Access Control & Physical Security

Format follows [Keep a Changelog](https://keepachangelog.com/); semantic versioning.

## [1.0.0] — 2026-07-15
### Added
- Baselined the Phase 05 document set `05.00`–`05.13` (14 documents), delivering **PCI DSS Requirements 7, 8 and 9** across the 71 assessed components and all 482 stores.
- Published the **access control model** under Requirement 7: principles ACP-1 to ACP-8, need-to-know defined by data element, and the honest treatment of the disputes team that genuinely requires visibility of PAN to work a chargeback.
- Published the **role catalogue**: **24 roles (RC-01…RC-24), 134 assignments, 118 internal and 27 external identities, 76 privileged**, and the **14 individuals authorised to see full PAN**.
- Delivered **7.2.4 / 7.2.5 access reviews** with **TRA-7.2.5.1** in full. Cycle 1 reviewed 1,247 entitlements and produced **214 revocations and 63 orphaned accounts**; cycle 2 produced **9 revocations**.
- Delivered the **identity and account lifecycle** under 8.1 and 8.2 across ~34,000 staff, including 8.2.5 immediate revocation on termination, 8.2.6 inactive accounts, 8.2.7 third-party remote access and 8.2.8 idle session re-authentication.
- **Deployed MFA under 8.4.2 — MFA for ALL access into the CDE**, the largest single workstream in the programme, across **20 access paths (MFA-01…MFA-20)** touching every one of the 71 assessed components, with **5 documented, time-bounded exceptions**. Also delivered 8.3.1–8.3.8 and 8.3.11 including the future-dated **8.3.6 twelve-character minimum enterprise-wide**, plus 8.4.1, 8.4.3 and the **8.5.1** system requirements.
- **Delivered the programme's only customized approach, at 8.3.9**, for **61 password-only accounts across 19 connected-to or vendor-managed components**: the Customized Approach Objective quoted verbatim, the **12.3.2 targeted risk analysis**, an Appendix E1 **controls matrix (CAC-1…CAC-8)**, and **12 testing procedures derived by the QSA (CTP-1…CTP-12)** — by Sable Ridge, not by Marketa.
- Delivered **8.6.1–8.6.3** governance of the **142 application and system accounts** (93 vaulted, 31 workload identity, 16 certificate), with **TRA-8.6.3** in full.
- Delivered **physical security** under 9.1–9.3 across the Columbus data centre, the Ashburn co-location, the Austin office, four distribution centres and 482 stores — including 9.2.1.1 monitoring with three-month retention, 9.2.2 publicly accessible network jacks, and the visitor regime under 9.3.2–9.3.4.
- **Delivered 9.5.1 POI device protection across 1,914 terminals in 482 stores**, with **TRA-9.5.1.2.1** in full: four quarterly cycles at **99.56% coverage (7,622 of 7,656)**, **49 discrepancies raised** and **0 confirmed tampering**. The seven device-register serial mismatches carried from Phase 02 were resolved in the first cycle.
- Delivered **media handling and destruction** under 9.4, including Halberd Data Destruction certificates as the 9.4.7 evidence and the destruction of the **611 hard-copy PAN-02 originals** identified in Phase 02.
- Delivered the **seasonal workforce access** programme for up to **6,800 colleagues** joining inside the change freeze, with **9.5.1.3 training at 98.1% permanent / 95.7% seasonal / 97.6% blended**.
- `trackers/`: MFA coverage matrix, the 8.3.9 customized approach, POI device inspection, the access model and traceability.
- `diagrams/`, `logs/`, `governance/`, `adr/` (0013–0019), and `templates/` per the portfolio standard.
- Package scaffolding: `05.00-README.md`, `CHANGELOG.md`, `STRUCTURE.md`, `install.sh`, `MANIFEST.md`.

### Findings
- **8.6.2 — NOT IN PLACE.** Two legacy batch integrations (`batch-icq` on CDE-05, `gl-extract` on CDE-04) authenticate with credentials embedded in configuration. **A compensating control was argued and refused** — the credentials are readable by anyone with configuration access and monthly rotation does not change that. Recorded as Not in Place with a remediation date of **2027-01-31** under ADR-0004. **R-17 held at High 16.**
- **Nineteen orphaned accounts belonged to contractors never registered in HR at all**, so no leaver event could ever have fired. The JML process was working correctly on a population it did not know existed. Contractor onboarding now routes through the same identity process as employees.
- **The Ashburn co-location was absent from the TPSP register.** Added as **TPSP-06** on 2026-06-24; the quarterly TPSP forum population moves from five to six.
- **Six Q3 POI seal discrepancies — all cleared as maintenance**, and the procedure was tightened anyway.
- **Two of nine unannounced repair-personnel identity tests failed.** Both colleagues retrained and re-tested.
- Four visitor badges unsurrendered and eleven missing exit times; visitor process tightened.

### Changed
- **R-02 (POI tampering) reduced** on the operating regime, while the structural exposure of 1,914 devices in public spaces is recorded as permanent.
- **R-13 (seasonal workforce) reduced** — the prior season's 1,118 accounts live 30 days past last shift is the baseline it moved from.
- **R-04 (excessive standing privilege) reduced** — the fall from 214 to 9 revocations between review cycles is the evidence.
- **R-11 (credential compromise) held** — MFA deployed within three months and has not operated through a peak season.
- **R-17 held at High** for the 8.6.2 finding.
- Corrected a stale reference to a **"3.7.9"** requirement in Phase 04's `04.13`, consistent with FACTS §13. There is no 3.7.9 anywhere in this portfolio.

### Decisions
- **ADR-0013** — a reviewable role catalogue beats perfect granularity. A catalogue nobody can review in a six-month cycle is not a control.
- **ADR-0014** — take the conservative reading of single-factor access into connected-to components.
- **ADR-0015** — break-glass is a documented 8.5.1 exception, time-bounded in use rather than in authorisation.
- **ADR-0016** — physical security at a third-party facility is **evidenced, not inherited**.
- **ADR-0017** — design the POI inspection **for the shift, not for the policy**.
- **ADR-0018** — **a cleared discrepancy still changes the procedure**; and the escalation threshold is deliberately not raised.
- **ADR-0019** — **no abridged control training for seasonal colleagues.** A colleague who joined six weeks ago stands at the same terminal as one who has been here nine years.

### Notes
- **8.4.2 is not "MFA for admins".** An entity with v3.2.1-era MFA can read it and wrongly conclude it is already compliant.
- The customized approach costs roughly **46 additional assessor hours every year, forever**, and must be re-argued when the assessor rotates in 2028. That cost is stated before the approach is elected, not discovered afterwards.
- Service-provider-only requirements (8.2.3, 8.3.10, 8.3.10.1) were **never in the 306** applicable population and are therefore not among the ROC's four Not Applicable entries.
- No fine amounts or fee schedules appear anywhere. PCI DSS is contractual, not statutory; the Council does not enforce; there is no PCI certification for a merchant.
- All content illustrative and fictional.

## [Unreleased]
- Phase 06 — Monitoring, Testing & Third Parties (Requirements 10, 11 and 12.8).
