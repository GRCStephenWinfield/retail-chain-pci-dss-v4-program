# Account Data Flows and the Nine Zones

```mermaid
flowchart TD
    subgraph OUTSIDE["Outside Marketa"]
        CUST["Cardholder"]
        TRU["Truvance Payments<br/>gateway · iframe · token vault"]
        VER["Verition P2PE<br/>decryption environment"]
        CAD["Cadence Voice<br/>DTMF masking"]
        ACQ["Cardinal Merchant Bank"]
    end
    CUST -->|"F-01 swipe or tap"| POI["Z7 · POI terminals<br/>1,914 lanes · SRED"]
    CUST -->|"F-02 web checkout"| IFR["Truvance-served iframe<br/>not a Marketa origin"]
    CUST -->|"F-03 phone order"| CAD
    POI -->|"ciphertext only"| VER
    IFR --> TRU
    CAD --> TRU
    VER --> TRU
    TRU --> ACQ
    TRU -->|"token returned"| Z1["Z1 · Corporate CDE<br/>8 components<br/>Columbus and AWS"]
    Z1 -->|"F-04 · F-05 · F-06<br/>full PAN on exception paths<br/>disputes · settlement · refunds"| TRU
    Z3["Z3 · Shared administrative services<br/>identity · secrets · logging · backup<br/>part of the 63"] -.->|"administrative path"| Z1
    Z5["Z5 · Store back-office<br/>482 servers<br/>connected-to band"] -.->|"segmentation enforced<br/>validated by test, not configuration"| Z3
    NOTE1["No account data comes to rest<br/>in the CDE. It transits on<br/>exception paths only"] -.-> Z1
```

## The claim this diagram has to support

Requirement **1.2.4** requires a data-flow diagram covering all account data flows. Requirement **1.2.3** requires a network diagram, kept current — and a diagram that is not maintained is not evidence, it is a drawing.

The load-bearing assertion here is that **no account data comes to rest in the CDE**. PAN transits the corporate environment only on exception paths — disputes, settlement reconciliation and refunds — and is not stored. Phase 02 proves that by discovery; Phase 04 has to keep proving it.

## Source
`02.07-data-flows-and-network-reachability.md`, `02.09-assessed-system-component-inventory.md`.
