# The Script Control Completes

```mermaid
flowchart TD
    subgraph PREV["PREVENTIVE · 6.4.3 · delivered Phase 04"]
        A1["Authorise each script<br/>named-authoriser workflow"]
        A2["Bind integrity at deployment<br/>SRI · pipeline hash · nonce-bound runtime"]
        A3["Inventory with written justification<br/>38 scripts · 6 templates · 11 third-party"]
    end
    subgraph DET["DETECTIVE · 11.6.1 · delivered Phase 06"]
        B1["Synthetic browser agents fetch the<br/>payment pages from OUTSIDE the network"]
        B2["Compare headers, DOM and script content<br/>against the approved baseline"]
        B3["Alert inside 24 hours<br/>exceeding the weekly floor · TRA-11.6.1"]
    end
    GAP["THE GAP 6.4.3 CANNOT CLOSE<br/>an authorised third-party script<br/>modified at its origin AFTER deployment"]
    A2 -.->|"cannot see this"| GAP
    GAP --> B2
    LIMIT["THE GAP 11.6.1 CANNOT CLOSE<br/>it detects · it does not prevent"]
    B3 -.-> LIMIT
    LIMIT --> A1
    PREV --> DONE["THE CONTROL IS COMPLETE<br/>R-01 moves High 20 to Moderate 10<br/>likelihood 4 to 2 · impact HELD at 5"]
    DET --> DONE
```

## Why R-01 could not move in Phase 04

Phase 04 implemented 6.4.3 in full — inventoried all 38 scripts, removed three that nobody had authorised, and closed the tag-manager publication path entirely. **R-01 was held at High 20 anyway**, and four separate documents said why: 6.4.3 is preventive, and a preventive control alone leaves the post-authorisation modification path open.

An entity that moved the risk in Phase 04 would have been rewarding itself for half a control. The register waited for the evidence.

**Impact stays at 5.** A skimming script on a payment page is a card-data compromise whatever else is true; only the likelihood moved.

## Source
`06.09-payment-page-tamper-detection.md`, `04.10-payment-page-script-management.md`.
