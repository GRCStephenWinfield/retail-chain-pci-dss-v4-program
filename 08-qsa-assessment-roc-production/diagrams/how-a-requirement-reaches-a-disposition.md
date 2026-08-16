# How One Sub-Requirement Reaches a Disposition

```mermaid
flowchart TD
    START["A sub-requirement in the v4.0.1 standard"]
    START --> POP{"Does it apply to an entity<br/>of this type at all?"}
    POP -->|"no · service provider only"| OUT["OUT OF POPULATION<br/>never among the 306<br/>NOT Not Applicable"]
    POP -->|"yes"| SUPER{"Has it been superseded?"}
    SUPER -->|"yes"| SUP["SUPERSEDED<br/>6.4.1 replaced by 6.4.2<br/>from 2025-03-31 · ADR-0010"]
    SUPER -->|"no"| COND{"Does its condition hold<br/>in THIS environment?"}
    COND -->|"no"| NAP["NOT APPLICABLE · 4 of them<br/>1.5.1 · 3.5.1.1 · 3.3.2 · 4.2.1.2<br/>the assessor TESTS the claim"]
    COND -->|"contested · 3 of them"| REJ["5.3.3 · 3.5.1.2 · 3.5.1.3<br/>proposed N/A · ALL REFUSED<br/>absence of use is not<br/>absence of the thing"]
    REJ --> APPR
    COND -->|"yes"| APPR{"Defined approach<br/>or customized approach?"}
    APPR -->|"customized · 8.3.9 only"| CUST["Objective + 12.3.2 analysis<br/>+ Appendix E1 matrix<br/>+ E2 procedures DERIVED BY THE QSA"]
    APPR -->|"defined"| TEST["Assessor executes the<br/>stated testing procedures"]
    CUST --> TEST
    TEST --> MET{"Is the requirement met?"}
    MET -->|"yes"| IP["IN PLACE · 297"]
    MET -->|"no"| CCWQ{"Is a compensating control<br/>argued AND accepted?"}
    CCWQ -->|"accepted · 3"| CC["IN PLACE WITH<br/>COMPENSATING CONTROL<br/>CCW-01 · CCW-02 · CCW-03"]
    CCWQ -->|"refused · 2"| NIP["NOT IN PLACE · 2<br/>8.6.2 and 11.3.1.2<br/>dated 2027-01-31"]
    NT["NOT TESTED · 0<br/>prohibited by ADR-0004<br/>before the programme began"]
```

## The two branches entities get wrong

**Marketa proposed seven exclusions. Four were accepted and three were refused** — 5.3.3, 3.5.1.2 and 3.5.1.3 — and all three refused proposals came back **In Place**, which is a stronger disposition than the one the entity argued for.

**Out of population is not Not Applicable.** A requirement that never applied to a merchant — 11.4.6, 12.5.2.1, 3.6.1.1, Appendix A1 — was never in the 306. Recording it as N/A inflates the denominator and makes the assessment look broader than it was.

**A compensating control is not a softer disposition.** It is a different, harder one: the entity must show the control addresses the risk the requirement addresses, goes above and beyond every other PCI DSS requirement, and is commensurate with the additional risk. **Two of Marketa's five arguments failed those tests**, and the answer was a finding rather than a weaker worksheet.

## Source
`08.05`, `08.07`, `08.08`.
