# How a Script Reaches a Payment Page — Before and After

```mermaid
flowchart TD
    subgraph BEFORE["BEFORE · the state the first inventory found"]
        M1["Marketing colleague"] --> TAG1["Tag manager console<br/>19 accounts able to publish<br/>to ANY template"]
        TAG1 --> PP1["Payment page<br/>script executes in the<br/>customer browser"]
        SEC1["Security review"] -.->|"not in the path"| PP1
    end
    subgraph AFTER["AFTER · 6.4.3 implemented"]
        M2["Marketing colleague"] --> REQ["Tag request<br/>five business day SLA"]
        REQ --> REV["Security and e-commerce review<br/>business justification required"]
        REV -->|"refused"| NO["Not deployed<br/>4 of 11 submissions refused"]
        REV -->|"approved"| AUTH["Named-authoriser workflow<br/>verified change control"]
        AUTH --> INT["Integrity binding<br/>SRI for static third-party<br/>pipeline hash for first-party<br/>nonce-bound module runtime"]
        INT --> PP2["Payment page<br/>38 scripts · each authorised<br/>each integrity-assured<br/>each justified in writing"]
        TAG2["Tag manager console<br/>payment-template publication<br/>REMOVED as a capability<br/>19 accounts reduced to 6"] -.->|"can no longer reach"| PP2
    end
```

## The finding, and what it was actually about

Three scripts were unauthorised when the first inventory closed. They arrived through a marketing tag manager that had been permitted to deploy to payment pages without security review.

**The tag manager was working exactly as designed.** Nothing was compromised, nothing was exploited, and no attacker was involved. The control failure was that a business function had been given a direct publication path onto a payment page, and nobody had ever decided that it should not have one.

That is a governance finding wearing a technology costume, and it is the more common shape of the Magecart problem than the dramatic one.

## Source
`04.10-payment-page-script-management.md`.
