# Where the Bill for Scope Reduction Arrives

```mermaid
flowchart TD
    P2["Phase 02 reduced scope<br/>604 believed to 71 assessed<br/>a reduction of 88.2 percent"]
    P2 --> MECH["Through three mechanisms<br/>P2PE · tokenization and hosted iframe<br/>DTMF masking"]
    MECH --> TRUTH["The account data did not disappear<br/>it is held by someone else now"]
    TRUTH --> T1["Truvance Payments<br/>gateway · hosted iframe · token vault"]
    TRUTH --> T2["Cadence Voice Solutions<br/>DTMF pause-and-resume masking"]
    TRUTH --> T3["Verition POS Systems<br/>P2PE solution and decryption environment"]
    T1 --> BILL["REQUIREMENT 12.8 AND 12.9<br/>a technical control problem has become<br/>a third-party assurance problem"]
    T2 --> BILL
    T3 --> BILL
    OTHER["Northbridge Managed Services · SOC monitoring<br/>Halberd Data Destruction · media destruction<br/>Ashburn co-location · TPSP-06, added in Phase 05"] --> BILL
    BILL --> OBL["12.8.1 register · 12.8.2 written agreements<br/>12.8.3 due diligence · 12.8.4 annual monitoring<br/>12.8.5 who manages which requirement"]
    BILL --> CONC["CONCENTRATION<br/>three providers now sit between Marketa<br/>and its ability to accept payment at all<br/>a structural residual that does not reduce"]
    CAVEAT["What cannot be delegated<br/>a provider can operate a control<br/>it cannot hold Marketa's obligation<br/>the AOC is signed by Marketa's CFO"] -.-> BILL
```

## The honest accounting

Phase 02 presented scope reduction as the highest-leverage activity available to a merchant, and it is. It also said plainly, in `02.10`, that **scope reduction is not risk reduction** — the data still exists, it is just held by someone else.

This phase is where that statement stops being a caveat and becomes a workload. Six providers, six responsibility matrices, AOC currency tracking, and an annual monitoring programme whose frequency is itself set by a targeted risk analysis.

## Source
`06.10-third-party-service-provider-management.md`, `02.10-scope-reduction-analysis.md`.
