# The Register Across the Programme

```mermaid
flowchart LR
    P3["Phase 03 · baseline<br/>9 High · 21 Moderate · 14 Low<br/>44 risks identified and scored"]
    P3 --> P4["Phase 04 · Requirements 2 to 6<br/>9 High · 21 Mod · 14 Low<br/>almost everything HELD"]
    P4 --> P5["Phase 05 · Requirements 7 to 9<br/>8 High · 21 Mod · 15 Low<br/>R-17 held by the 8.6.2 finding"]
    P5 --> P6["Phase 06 · Requirements 10 and 11<br/>7 High · 19 Mod · 18 Low<br/>R-01 moves at last"]
    P6 --> P7["Phase 07 · Requirement 12<br/>2 High · 22 Mod · 20 Low<br/>ENTERING THE ASSESSMENT"]
    P7 --> P9["Expected at close<br/>0 High · 13 Mod · 31 Low<br/>requires both findings to close"]
    R14["R-14 · segmentation<br/>High 16 to Low 6<br/>90-day clean drift count<br/>completed 2026-10-01"] -.-> P7
    R31["R-31 · unstructured account data<br/>High 16 to Low 6<br/>second full discovery run<br/>returned clean 2026-08-28"] -.-> P7
    STUCK["The two that do NOT move<br/>R-17 · 8.6.2 Not in Place<br/>R-36 · 11.3.1.2 Not in Place<br/>both dated 2027-01-31"] -.-> P7
```

## Why the two that moved are the interesting ones

**R-14** and **R-31** were both raised on evidence rather than scored high at the outset, and both were given **exit criteria published in advance** — before anyone knew whether they would be met.

R-14's was ninety days of clean drift detection; the clock was reset once when two further divergences appeared, and it completed on 2026-10-01. R-31's was **a second full discovery run returning nothing** — not the cleanup of the first — and it ran 2026-08-17 to 08-28 across the same populations by the same method, and came back clean.

A risk that comes down on a criterion written six months earlier is a different kind of claim from one that comes down because a phase ended.

## Source
`07.07-risk-register-position.md`, `07.12-control-to-risk-traceability.md`.
