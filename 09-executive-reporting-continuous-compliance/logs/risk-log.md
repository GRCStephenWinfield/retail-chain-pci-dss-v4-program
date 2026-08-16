# Risk Log — Phase 09

The register is the authoritative record. This log carries only what Phase 09 changed, and the position it closes at.

## The eight movements — all to Low

| Risk | From | To | Type | Basis | Date |
|---|---|---|---|---|---|
| **R-13** — seasonal workforce access | Moderate 9 (3 x 3) | **Low 6** (2 x 3) | Likelihood | OI-07-03 closed; all 100 stale directory records reconciled and **none held an entitlement**. The published reversal condition did not fire | 2027-02-26 |
| **R-22** — customer-initiated account data | Moderate 9 (3 x 3) | **Low 6** (2 x 3) | Likelihood | OI-07-04 closed; the complete October–January peak: **4 instances, all quarantined at the collector, none reaching a store colleague** | 2027-02-27 |
| **R-21** — phishing delivers a foothold | Moderate 12 (4 x 3) | **Low 6** (2 x 3) | Likelihood | OI-06-07 closed; two campaigns and three pretext-calling tests; **41% report rate, 2.1% click-through, 0 credential submissions** | 2027-06-18 |
| **R-15** — the legacy pre-shared key remnant | Moderate 12 (3 x 4) | **Low 4** (**1** x 4) | Likelihood | CAP-05 closed; **population 214 → 0**, key decommissioned, SSID withdrawn. **The register's only non-expiring likelihood of 1** | 2027-06-12 |
| **R-23** — the DTMF suppression point moves downstream | Moderate 10 (2 x 5) | **Low 6** (2 x **3**) | **Impact** | The Cadence renewal added pre-notification and rollback obligations, and the daily MOTO-C2 assertion now **fails closed** | 2027-03-14 |
| **R-08** — account data from an unmapped process | Moderate 12 (3 x 4) | **Low 6** (2 x **3**) | **Impact + likelihood** | Process-level data mapping across all 61 procedures; the quarantine rule now applies at every inbound path | 2027-04-30 |
| **R-18** — privileged access from a general-purpose workstation | Moderate 12 (3 x 4) | **Low 6** (2 x **3**) | **Impact + likelihood** | Privileged access workstations across all **178** in-scope administrative personnel | 2027-05-29 |
| **R-32** — a boundary-affecting change classified as routine | Moderate 8 (2 x 4) | **Low 6** (2 x **3**) | **Impact** | CSC-8's daily assertion bounds a misclassified change to **at most 24 hours**. Likelihood held at 2 — the classification error is not less likely | 2027-06-16 |

## The programme's seven impact reductions, all named

| Phase | Risk | Impact | The change in consequence |
|---|---|---|---|
| 06 | R-10 | 4 → 3 | A suspension rule recorded in advance |
| 07 | R-14 | 4 → 3 | The proved path ran Z7 to Z5, not into the CDE |
| 07 | R-31 | 4 → 3 | The historical corpus destroyed and evidenced |
| **09** | **R-23** | **5 → 3** | The MOTO channel now stops rather than accepting unmasked |
| **09** | **R-08** | **4 → 3** | Account data lands in a quarantine, not in a store |
| **09** | **R-18** | **4 → 3** | No privileged session exists on the workstation to steal |
| **09** | **R-32** | **4 → 3** | The exposure window is bounded at 24 hours |

**Architecture changes consequences; operations change likelihood** — which is why the final four months carry four of the seven.

## Position at programme close, 2027-06-30

| Rating | Baseline | Entering Phase 09 | **At close** | Forecast (03.12 §6) |
|---|---|---|---|---|
| High | 9 | 0 | **0** | 0 ✔ |
| Moderate | 21 | 24 | **16** | 13 ✘ **three short** |
| Low | 14 | 20 | **28** | 31 ✘ |
| **Total** | **44** | **44** | **44** | 44 ✔ |

**The sixteen Moderate at close:** R-01, R-02, R-03, R-04, R-05, R-06, R-09, R-12, R-17, R-20, R-25, R-27, R-28, R-30, R-33, R-36.

**Why three short:** R-04, R-28 and R-33 are all scored **3 × 4**, and under this register's discipline a 3 × 4 entry reaches 2 × 4 = 8 and stops. **Eight is a floor.** R-17 and R-36 arrive at 2 × 4 rather than Low. R-13 and R-15 reached Low although the forecast did not expect them to, and the reconciliation credits both.

## Entries that did not move, and are named for it

| Risk | Why |
|---|---|
| **R-43** — incident procedures not exercised against the scenarios this estate produces | **It has not moved in any phase of this programme.** 512 incident records, 5 SEV-2, 0 SEV-1, no confirmed compromise. The plan has never been tested by the event it exists for |
| **R-27** — administrative-services zone concentration | Its return-to-High condition **did not fire**: the second segmentation penetration test closed 2027-05-21 with 6 findings, 0 Critical and **0 reached from Z3**. Not firing is not the same as moving |
| **R-04, R-28, R-33** | The three the forecast got wrong. Each waits on operating cycles the programme did not have time to run |
| **R-03, R-05, R-09, R-12, R-20, R-25** | Structural floors priced in Phase 03. These are design trades, not gaps |

**44 entries. None closed. None removed. None ever added.** ADR-0005 was tested and declined nine times; two entries were raised on evidence and both are now Low; **no High risk was ever accepted.**
