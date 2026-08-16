# The Customized Approach at 8.3.9

```mermaid
flowchart TD
    REQ["8.3.9 defined approach<br/>EITHER change passwords at least every 90 days<br/>OR dynamically analyse account security posture<br/>and determine access in real time"]
    REQ --> Q1{"Can Marketa meet<br/>either option for this population?"}
    Q1 -->|"90-day rotation"| NO1["Rejected · rotation on 61 vendor-managed<br/>and connected-to accounts produces<br/>credential sprawl, not security"]
    Q1 -->|"real-time analysis"| NO2["Rejected · for 51 of the 61 accounts the<br/>component authenticates LOCALLY<br/>there is no external decision point<br/>analytics are post-admission, not real-time"]
    NO1 --> CA["CUSTOMIZED APPROACH ELECTED<br/>for a bounded population<br/>61 accounts · 19 components"]
    NO2 --> CA
    CA --> S1["1 · Quote the Customized Approach Objective<br/>from the standard"]
    S1 --> S2["2 · Targeted risk analysis under 12.3.2"]
    S2 --> S3["3 · Controls matrix · Appendix E1<br/>CAC-1 to CAC-8"]
    S3 --> S4["4 · Testing procedures DERIVED BY THE QSA<br/>CTP-1 to CTP-12<br/>Sable Ridge, not Marketa"]
    S4 --> S5["5 · Evidence maintained continuously<br/>not assembled at fieldwork"]
    S5 --> COST["Annual cost · approximately 46<br/>additional assessor hours<br/>every year, forever"]
```

## Why this document exists

Most PCI portfolios never show a customized approach, because most entities never use one. It is the genuinely new idea in v4, and it is also the expensive one: **the entity does not write its own test.** The assessor derives the testing procedures, the entity satisfies them, and the derivation is redone at every assessment.

Marketa uses it **exactly once**, for a bounded population where the defined approach's second option cannot honestly be stretched to fit. The scoping matters as much as the argument: 8.4.2's MFA already removes password-only *user* access to the CDE, so what remains is the residual set of connected-to and vendor-managed components where a password is still the sole factor.

## Source
`05.06-customized-approach-8-3-9.md`.
