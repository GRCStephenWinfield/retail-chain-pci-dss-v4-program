# The Scope Reduction Model

```mermaid
flowchart LR
    ALL["Enterprise estate<br/>1,842 systems"] --> BELIEVED["Believed in scope at kickoff<br/>604 systems<br/>A HYPOTHESIS, NOT A FINDING"]
    BELIEVED --> P2PE["P2PE removes the store lane path<br/>482 store back-offices leave the CDE<br/>conditional on PIM compliance"]
    BELIEVED --> TOK["Tokenization removes the e-commerce tier<br/>29 AWS hosts leave the CDE<br/>conditional on the iframe integration holding"]
    BELIEVED --> DTMF["DTMF masking removes agent desktops<br/>14 telephony and desktop systems leave<br/>conditional on no alternate capture path"]
    P2PE --> ASSESSED["Assessed system components<br/>71 total"]
    TOK --> ASSESSED
    DTMF --> ASSESSED
    ASSESSED --> CDE["CDE · 8 systems"]
    ASSESSED --> CONN["Connected-to and security-impacting · 63 systems"]
    ASSESSED --> RESULT["604 to 71<br/>a reduction of 88.2 percent"]
    WARN["Every reduction is CONDITIONAL<br/>break the condition and the systems come back"] -.-> P2PE
    WARN -.-> TOK
    WARN -.-> DTMF
```

## Why this is the most valuable page in the portfolio

PCI DSS applies to the cardholder data environment. Everything else in the standard follows from where you draw that boundary, which makes **scope reduction the highest-leverage activity available to a merchant** — a control you never have to implement on a system that is not in scope.

The discipline is in the word *conditional*. P2PE does not reduce scope because a terminal is listed; it reduces scope because the solution is deployed as validated **and operated in accordance with the P2PE Instruction Manual**. Phase 02 has to prove each condition, and Phase 08 has to prove it again to a QSA.

## Source
`01.08-scope-assumptions-and-constraints.md`, `FACTS §4`.
