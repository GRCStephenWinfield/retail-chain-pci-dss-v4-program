# The Security Testing Programme

```mermaid
flowchart LR
    PROG["Marketa security testing<br/>Requirement 11"]
    PROG --> EXT["11.3.2 · ASV external scanning<br/>quarterly · Sable Ridge Scanning<br/>Q1 FAILED · Q2 to Q4 passed"]
    PROG --> INT["11.3.1 · internal scanning<br/>quarterly · authenticated under 11.3.1.2<br/>62 of 71 authenticated"]
    PROG --> SEG["11.4.5 · segmentation testing<br/>annual and on change<br/>FAILED May · passed June"]
    PROG --> APP["11.4.3 · penetration testing<br/>annual and on significant change<br/>11 application findings September"]
    PROG --> WIFI["11.2.1 · wireless detection<br/>quarterly across 488 facilities"]
    PROG --> FIM["11.5.2 · change detection<br/>comparisons at least weekly"]
    PROG --> PAGE["11.6.1 · payment-page tamper detection<br/>continuous · alerting inside 24 hours"]
    INT -.->|"9 of 71 cannot accept credentials"| GAP["11.3.1.2 NOT IN PLACE<br/>CAP-06 · dated 2027-01-31"]
    RULE["ADR-0009 · Marketa proposes strata<br/>the TESTER selects within them<br/>at least one stratum targets known messiness"] -.-> SEG
    RULE -.-> APP
    ALL["19 findings across both penetration tests<br/>2 Critical · 5 High · 7 Medium · 5 Low<br/>ALL remediated and independently retested"]
    SEG --> ALL
    APP --> ALL
```

## The inverse question

A testing programme is defined as much by what it does not test. Marketa's stated exclusions are recorded rather than implied: the P2PE decryption environment (Verition's, not Marketa's), the Truvance token vault, and the Cadence masking platform are all outside Marketa's testing scope — and all three are therefore **third-party assurance problems** handled under 12.8, not testing problems handled under 11.

That is the trade scope reduction made, stated in the one place a reader would think to check.

## Source
`06.11-security-testing-programme.md`, `06.05`, `06.06`, `06.08`.
