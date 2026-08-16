# Decision Log — Phase 03

| ID | Date | Decision | Rationale | Decided by | Reference | Status |
|---|---|---|---|---|---|---|
| DEC-301 | 2026-03-19 | Design segmentation to **default-deny** at every boundary, with permitted flows enumerated individually | A boundary defined by what it blocks is a boundary nobody can audit | Trevor Kim | 03.01 §4 | Approved |
| DEC-302 | 2026-04-10 | Include a stratum of **stores with a recent local network change** in the penetration test sample | Testing only the standard build tests the documentation, not the estate. This stratum is what found SEG-PT-01 | Naomi Bhatt | 03.07 §3 | Approved |
| DEC-303 | 2026-05-15 | **Isolate store 0417 immediately** rather than await the report | Containment is not remediation, but 41 minutes of exposure is better than three weeks of it | Trevor Kim | 03.07 §5 | Approved |
| DEC-304 | 2026-05-18 | **Raise R-14** to 4 × 4 = 16 (High) | Configuration review had concluded the boundary was closed. The test disproved the belief, not merely the instance | Naomi Bhatt | ADR-0005 | Approved |
| DEC-305 | 2026-05-19 | **Provisionally suspend the Phase 02 scope determination** pending remediation | ADR-0006 made the store estate's classification contingent on this boundary. The contingency triggered | Steering Committee | 03.07 §7 | Approved |
| DEC-306 | 2026-05-19 | Run remediation on **two tracks** — restore the VLAN list now, replace the build image properly | A fast fix that is never followed by a durable one is how the fault returns | Trevor Kim | 03.08 §3 | Approved |
| DEC-307 | 2026-05-27 | Notify Cardinal under obligation **C7** despite no compromise | Transparency with the acquirer costs little and is remembered when something worse happens | Raymond Voss | 03.07 §10 | Approved |
| DEC-308 | 2026-06-15 | Introduce **continuous drift detection** (DA-1 to DA-6) rather than periodic configuration review | The fault survived eighteen months of periodic review. The control has to run continuously or it does not address the cause | Trevor Kim | 03.08 §6 | Approved |
| DEC-309 | 2026-07-03 | **Reset the R-14 exit clock** after two segmentation-determining divergences | An exit criterion that survives contradicting evidence is decoration | Naomi Bhatt | 03.08 §8 | Approved |
| DEC-310 | 2026-07-06 | **Amend rather than supersede ADR-0006** — the classification stands, its contingency changes | The decision was right. What was wrong was resting it on a one-off test rather than a standing control | Steering Committee | 03.13 §4 | Approved |

## Source
`03.07`, `03.08`, `03.13`, and `02-.../adr/ADR-0005`, `ADR-0006`.
