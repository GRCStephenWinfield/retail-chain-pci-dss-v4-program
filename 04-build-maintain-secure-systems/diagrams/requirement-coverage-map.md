# Requirements 2 to 6 — What Phase 04 Delivers

```mermaid
flowchart LR
    P4["Phase 04<br/>Build and Maintain<br/>Secure Systems"]
    P4 --> R2["Requirement 2<br/>Secure configurations<br/>04.01 · SCS-01 to SCS-11<br/>6 baselines across 71 components"]
    P4 --> R3["Requirement 3<br/>Protect stored account data<br/>04.02 and 04.03<br/>no account data at rest in the CDE"]
    P4 --> R4["Requirement 4<br/>Transmission security<br/>04.04 · TLS · certificate inventory<br/>4.2.2 and the DLP control"]
    P4 --> R5["Requirement 5<br/>Anti-malware and phishing<br/>04.05 · EDR · 5.3.3 removable media<br/>5.4.1 automated anti-phishing"]
    P4 --> R6["Requirement 6<br/>Secure systems and software<br/>04.06 to 04.10"]
    R6 --> R62["6.2 secure development<br/>04.07"]
    R6 --> R63["6.3 vulnerability management<br/>04.06 · including 6.3.2 component inventory"]
    R6 --> R64["6.4 public-facing applications<br/>04.09 WAF · 04.10 SCRIPT CONTROL"]
    R6 --> R65["6.5 change control<br/>04.08 · the significant-change definition"]
    R1["Requirement 1<br/>delivered in PHASE 03"] -.->|"referenced, not re-delivered"| P4
    NEXT["Requirements 7, 8 and 9<br/>PHASE 05"] -.-> P4
```

## The shape of the phase

Requirement 3 is unusually light here, and that is the architecture working rather than a gap. Marketa does not store account data — PAN transits on exception paths only, for disputes, settlement reconciliation and refunds. What Requirement 3 costs Marketa is not encryption at rest; it is the **continuous obligation to keep proving that nothing has come to rest**, which is why Phase 02's discovery is repeated rather than filed.

Requirement 6 carries most of the weight, and within it **6.4.3** is where a merchant with a hosted iframe still has real exposure.

## Source
`04.01` through `04.10`.
