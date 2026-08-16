# POI Device Inspection — Designed for the Shift

```mermaid
flowchart TD
    REG["Device register · 9.5.1.1<br/>1,914 terminals · make · model<br/>location · serial number"]
    REG --> CYCLE["Quarterly inspection cycle<br/>9.5.1.2 · frequency set by<br/>TRA-9.5.1.2.1"]
    CYCLE --> AID["Inspection aid on the lane<br/>photographs of what CORRECT looks like<br/>designed for a colleague on shift"]
    AID --> STEP1["Compare the device against the aid"]
    STEP1 --> STEP2["Verify the SERIAL against the register<br/>substitution is the attack the<br/>visual check will not catch"]
    STEP2 --> STEP3["Check tamper-evident seals"]
    STEP3 --> STEP4["Photograph and submit"]
    STEP4 --> Q{"Discrepancy?"}
    Q -->|"no"| CLOSE["Recorded · coverage counted"]
    Q -->|"yes"| ESC["Escalate under POI-8<br/>terminal removed from service<br/>pending resolution"]
    ESC --> INV["Investigation<br/>vendor service record checked<br/>serial verified against register"]
    INV --> OUT["Q3 · 6 discrepancies<br/>ALL cleared as maintenance<br/>and the procedure tightened anyway"]
    TRAIN["9.5.1.3 training<br/>detect tampering · verify repair identity<br/>never install or replace unverified<br/>report suspicious behaviour"] -.-> STEP1
    TEST["Unannounced repair-personnel tests<br/>9 conducted · 2 FAILURES<br/>retrained and re-tested"] -.-> TRAIN
```

## The hard problem, stated plainly

This control is executed by roughly **29,600 store colleagues** with high turnover, during a shift, and it is not the most urgent thing they are doing. Its quality is a function of **training and simplicity**, not of policy language.

Everything in the design follows from that: an inspection aid showing what *correct* looks like rather than a description of what tampering looks like; serial verification against the register, because substitution is the attack a visual check misses; photograph capture so the evidence exists without a written report.

**Two of nine unannounced repair-personnel identity tests failed.** That is the number that says whether the training worked, and it is more informative than the inspection coverage figure.

## Source
`05.09-poi-device-protection.md`.
