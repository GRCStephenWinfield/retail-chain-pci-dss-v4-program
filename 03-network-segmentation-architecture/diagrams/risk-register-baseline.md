# The Baseline Risk Register

```mermaid
flowchart LR
    REG["44 risks identified<br/>Phase 03 baseline"]
    REG --> H["9 HIGH · score 15 or above<br/>none may remain untreated<br/>at programme close"]
    REG --> M["21 MODERATE · score 8 to 12<br/>treated on the programme timeline"]
    REG --> L["14 LOW · score 6 or below<br/>treated or accepted<br/>with a recorded rationale"]
    H --> R14["R-14 · store segmentation not effective<br/>4 times 4 equals 16<br/>RAISED 2026-05-18 on SEG-PT-01"]
    H --> R31["R-31 · historical account data<br/>in unstructured stores<br/>4 times 4 equals 16<br/>RAISED 2026-02-05 on PAN-01"]
    H --> OTHER["7 further High risks<br/>scored high at identification"]
    R14 --> EVID["Both were RAISED by evidence<br/>not scored high at the outset<br/>ADR-0005"]
    R31 --> EVID
    REG --> CLOSE["Expected at close<br/>0 High · 13 Moderate · 31 Low"]
```

## Scoring, and why impact is not just disclosure

Likelihood 1–5 × impact 1–5. **High ≥ 15 · Moderate 8–12 · Low ≤ 6.**

Impact is scored on three dimensions, not one: **cardholder data exposure, brand-programme penalties, and business interruption.** A retailer's worst case is not a disclosure notice — it is a forensic investigation, card reissuance costs and brand assessments passed through by the acquirer, arriving at the same time as the operational disruption of a compromised payment estate.

## Source
`03.10-risk-assessment-methodology.md`, `03.11-risk-register.md`, `03.12-control-to-risk-traceability.md`.
