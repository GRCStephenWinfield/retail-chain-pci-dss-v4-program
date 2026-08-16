# Changelog — Phase 08: QSA Assessment & ROC Production

Format follows [Keep a Changelog](https://keepachangelog.com/); semantic versioning.

## [1.0.0] — 2026-07-15

### Added
- Baselined the Phase 08 document set `08.00`–`08.14` (15 documents), covering the **QSA on-site assessment, the Report on Compliance, the Attestation of Compliance, remediation and re-assessment**.
- Delivered the **October 2026 pre-fieldwork scope re-confirmation** as a delta against the July 12.5.2 confirmation, performed inside the seasonal change freeze, and stated plainly what an assessed entity may and may not do during an assessment: it may remediate and have the remediation disclosed; it may not select the sample; it may not comment on conclusions.
- Published the **complete sampling methodology across 18 populations** — 9 examined in full and 9 sampled — with the rule that standardisation and centralised management must be **demonstrated before** sampling is permitted, and with the assessor's deliberate inclusion of **store 0417, Dayton OH**, the site of the failed segmentation test.
- Recorded the **214 evidence requests** raised across the engagement: **186 (86.9%) satisfied from artefacts that already existed**, 28 requiring new production, 6 re-requested after an insufficient first response, and **0 unsatisfied**.
- Documented **15 business days of fieldwork, 2026-11-02 → 2026-11-20**, across Columbus HQ, the Columbus data centre, the Austin technology office, the call centre, the Ashburn co-location and **28 stores**, producing **1,654 indexed evidence artefacts**: 1,284 documents, 228 configuration examinations, **47 interviews across 39 distinct individuals**, 61 process observations and 34 independent assessor tests.
- Delivered the **master disposition table across all 306 applicable sub-requirements** — **297 In Place · 3 In Place with Compensating Control · 4 Not Applicable · 0 Not Tested · 2 Not in Place** — with a per-requirement walk-through of what the assessor actually tested and which prior phase built it.
- Delivered the **customized approach assessment at 8.3.9** in full: the Appendix E1 controls matrix **CAC-1…CAC-8** supplied by Marketa, and the **twelve testing procedures CTP-1…CTP-12 derived by Sable Ridge** and recorded in Appendix E2. Under the customized approach the entity does not write its own test.
- Delivered **three Compensating Controls Worksheets** — CCW-01 at 8.3.6, CCW-02 at 2.2.7, CCW-03 at 3.4.2 — each against all six Appendix C sections, alongside the **two that were argued and refused**.
- **Named the four Not Applicable determinations explicitly** — **1.5.1, 3.5.1.1, 3.3.2 and 4.2.1.2** — as Phase 07 required, and separated three categories entities routinely conflate: Not Applicable, out of population (the service-provider requirements that were never in the 306), and superseded (6.4.1 → 6.4.2). **Marketa proposed seven exclusions; four were accepted and three — 5.3.3, 3.5.1.2 and 3.5.1.3 — were refused and then tested and assessed In Place**, on the rules that *a policy prohibition is not a technical absence* and *absence of use is not absence of the thing*.
- Produced the **741-page Report on Compliance** with 1,654 evidence references: draft 2026-12-01, Sable Ridge internal QA 2026-12-04 → 12-08, issued **2026-12-11**.
- Issued the **Attestation of Compliance on 2026-12-11 with a status of Non-Compliant**, Part 4 listing **8.6.2** and **11.3.1.2** against a remediation date of **2027-01-31**, signed by **Raymond Voss, CFO** under ADR-0002 and submitted to Cardinal Merchant Bank the same day — **twenty days ahead of the 31 December deadline under obligation C3**.
- Delivered **CAP-07** (8.6.2) and **CAP-06** (11.3.1.2) with dated milestones, and the **re-assessment of 2027-02-18** re-testing **16 sub-requirements** — the two findings plus fourteen the assessor judged could have been affected — producing a revised position of **299 In Place · 3 CCW · 4 N/A · 0 Not Tested · 0 Not in Place = 306, Compliant**.
- `trackers/`: the ROC disposition, the sampling methodology, evidence and fieldwork, compensating and customized, remediation and re-assessment.
- `diagrams/`, `logs/`, `governance/`, `adr/` (**0029–0032**) and `templates/` per the portfolio standard.
- Package scaffolding: `08.00-README.md`, `CHANGELOG.md`, `STRUCTURE.md`, `install.sh`, `MANIFEST.md`.

### Findings
- **Neither Not in Place finding was discovered by the assessor.** 8.6.2 was identified in Phase 05 in June and 11.3.1.2 in Phase 06 in July; in both cases a Compensating Controls Worksheet was drafted and withdrawn rather than argued. The assessor confirmed them.
- **Three of the five recorded exceptions trace to the same nine vendor-locked appliances and the same support agreement** — the 11.3.1.2 finding, CCW-01 at 8.3.6, CCW-02 at 2.2.7 — and those nine were also the only population the assessor was not permitted to sample, because standardisation could not be demonstrated.
- **1.2.8 — two of nine network security control ruleset backups were found on an unrestricted file share**, by the assessor and not by Marketa. Corrected 2026-11-05 and **disclosed in the report** under ADR-0029.
- **Three of Marketa's seven proposed exclusions were refused.** A policy prohibition on removable media is not a technical absence and USB ports remained enabled on **31 of 71** components (5.3.3); and disk-level encryption is present on components inside the assessed population whatever it was deployed for (3.5.1.2 and 3.5.1.3). All three were returned to the tested population and all three were assessed In Place — a stronger disposition than the one Marketa argued for.
- **The nine appliances' built-in administrative accounts were governed under the appliance inventory rather than the enterprise identity store**, so Marketa's own 8.2.2 shared-account figure of eleven understated the true population of twenty. Raised as an assessor observation; no disposition moved.
- **Nine items were corrected during fieldwork**, each recorded in the report as corrected during the assessment.
- **Seventeen assessor observations** were raised that did not affect any disposition; all are open and unassigned at the phase close.
- **Two of the twelve customized-approach testing procedures required a second evidence round** — CTP-7 on per-account behavioural baseline coverage, and CTP-11, where Marketa could show the configured alert but not, at first, an instance of it firing. Three real threshold breaches were produced from the operating period.
- **The customized approach cost 51 assessor hours against a Phase 05 estimate of 46.** The variance is recorded because the 2027 budget uses it.

### Changed
- **R-17** High 16 → Moderate 8 and **R-36** High 16 → Moderate 8, both on remediation and re-test rather than on plan. **R-13** Moderate 12 → 9, **R-32** Moderate 12 → 8, **R-41** Low 6 → 4, **R-42** Low 6 → 3, **R-38** Low 6 → 4.
- Register position moves from **2 High · 22 Moderate · 20 Low** to **0 High · 24 Moderate · 20 Low**. Forty-four entries; none closed or removed in twelve months.
- **The compensating-control count does not fall at the re-assessment.** The Verition contract amendment granted credential release, not firmware change, so CCW-01 and CCW-02 both survive. **The remediation removed the finding, not the constraint.**
- **Corrected the claim, carried in an earlier draft of this phase, that no impact score had ever been reduced in this programme.** Three have been — **R-10** in Phase 06 and **R-14** and **R-31** in Phase 07 — each on a change in consequence recorded in the phase that made it. Phase 08 reduces none, and the phase now names all three rather than asserting a discipline the programme does not have.
- **Corrected the corrective-action-plan numbering.** The 8.6.2 remediation is **CAP-07**, not CAP-05: CAP-05 is the legacy pre-shared key programme from Phase 03 and CAP-06 is 11.3.1.2, raised in Phase 06 when that finding was recorded.
- Obligation references for the 31 December Attestation deadline corrected from C1 to **C3** throughout; C1 is the standing obligation to maintain compliance and C2 the annual on-site validation.

### Not Claimed
- That the remediated state has an operating history. **Eighteen days separate the last remediation from the re-assessment**, and there was no float in the plan.
- That the three compensating controls are permanent. Each must be re-validated annually and none has a vendor roadmap behind it.
- That the customized approach at 8.3.9 carries forward. It carries **no forward assurance** and must be re-argued at every assessment, and from scratch when the assessor rotates in 2028.
- That the 2026 Attestation has been superseded. Under **ADR-0032** the revised attestation is additive, and the record that Marketa was non-compliant on 2026-12-11 stands.
- That a Report on Compliance or an Attestation of Compliance constitutes compliance with any law, that a QSA's opinion binds a card brand or an acquirer, or that a merchant can be certified against PCI DSS. **PCI DSS is contractual, not statutory.** No fine, fee schedule or penalty amount appears anywhere in this programme.
