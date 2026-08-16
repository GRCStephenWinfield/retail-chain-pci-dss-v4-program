# The Scoping Decision Tree

```mermaid
flowchart TD
    START["A system component<br/>anywhere in the 1,842 estate"]
    START --> Q1{"Does it store, process<br/>or transmit account data?"}
    Q1 -->|Yes| CDEY["CDE COMPONENT<br/>all applicable requirements apply"]
    Q1 -->|No| Q2{"Is it on the same network<br/>segment as a CDE component?"}
    Q2 -->|Yes| CDEY
    Q2 -->|No| Q3{"Does it have network<br/>reachability to the CDE<br/>in either direction?"}
    Q3 -->|Yes| CONN["CONNECTED-TO<br/>scoped requirements apply"]
    Q3 -->|No| Q4{"Could compromising it<br/>affect the security of the CDE?<br/>identity · patching · monitoring<br/>backup · virtualisation · secrets"}
    Q4 -->|Yes| CONN
    Q4 -->|No| Q5{"Is the exclusion supported<br/>by evidence, not assertion?"}
    Q5 -->|No| CONN
    Q5 -->|Yes| OUT["OUT OF SCOPE<br/>with a recorded Scope Decision Record<br/>and a stated reversal trigger"]
    OUT -.->|"re-tested at least annually<br/>under 12.5.2, and on change"| START
```

## The two questions entities skip

**Question 4** is where under-scoping happens. A system holding no account data at all can still be in scope, because compromising it would let an attacker reach or weaken the CDE. Identity, patching, monitoring, backup, virtualisation and secrets management are all in scope at Marketa for exactly this reason, and none of them touches a PAN.

**Question 5** is the discipline that makes the rest defensible. An exclusion without a recorded reason is not a determination — it is an omission that happens to be written down.

## Source
`02.01-scoping-methodology.md`, `02.08-connected-to-and-security-impacting-systems.md`.
