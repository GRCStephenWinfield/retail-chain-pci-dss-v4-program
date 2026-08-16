# Change Control and the Significant-Change Definition

```mermaid
flowchart TD
    CHG["A change is proposed"]
    CHG --> CLS{"Classification<br/>against SIG-1 to SIG-10"}
    CLS -->|"not significant"| STD["Standard change control<br/>6.5.1 · documented impact<br/>authorised approval · testing<br/>back-out procedure"]
    CLS -->|"SIGNIFICANT"| BIG["Significant change<br/>6.5.2 applies in full"]
    BIG --> S1["11.3.1 internal vulnerability scan<br/>until a passing result"]
    BIG --> S2["11.3.2.1 external scan<br/>ASV not required for the change-driven scan"]
    BIG --> S3["11.4.3 penetration testing"]
    BIG --> S4["11.4.5 segmentation testing<br/>if segmentation controls changed"]
    BIG --> S5["12.5.2 scope re-confirmation"]
    BIG --> S6["6.5.2 all applicable requirements<br/>confirmed in place<br/>documentation updated"]
    S6 --> CONF{"Confirmation<br/>produces a finding?"}
    CONF -->|"yes · 4 of 27 did"| FIND["Recorded and remediated<br/>not quietly closed"]
    CONF -->|"no"| DONE["Change closed"]
    FREEZE["October to January<br/>seasonal change freeze"] -.->|"blocks store-side change entirely"| CLS
    BCA["Boundary Change Authority<br/>weekly · from Phase 03"] -.->|"approves boundary-affecting change"| BIG
```

## Why the definition is the deliverable

Five separate requirements hang off the phrase "significant change" — 11.3.1, 11.3.2.1, 11.4.3, 11.4.5 and 12.5.2. The standard does not define it exhaustively, which means **the entity defines it, and the assessor tests the definition.**

A definition that nobody wrote down is a definition nobody applies. Marketa's is ten enumerated triggers, and in the period **27 changes met it** — of which **4 produced a finding at the 6.5.2 confirmation step**. Those four are the argument for having the step at all.

## Source
`04.08-change-control.md`.
