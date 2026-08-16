# SEG-PT-01 — The Attack Path

```mermaid
flowchart LR
    A["Tester associates with<br/>store guest wireless<br/>Z7 · open to any customer"]
    A --> B["Guest SSID is locally switched<br/>at store 0417<br/>changed Sept 2025 to fix latency"]
    B --> C["Traffic reaches the store access switch<br/>on port role ROLE-AP"]
    C --> D["ROLE-AP trunk template lost its<br/>allowed-VLAN list in build image SB-4.1<br/>November 2024"]
    D --> E["Trunk carries ALL VLANs<br/>including VLAN 20 store back-office"]
    E --> F["Tester reaches Z5<br/>store back-office<br/>19 minutes from association"]
    F --> G["Path STOPS here<br/>no route from Z5 to the CDE"]
    G --> H["Result FAIL<br/>segmentation between Z7 and Z5<br/>was not effective"]
    P1["Precondition 1<br/>SB-4.1 trunk template fault<br/>LATENT AT 37 STORES"] -.-> D
    P2["Precondition 2<br/>guest SSID locally switched<br/>PRESENT AT 1 STORE"] -.-> B
    P1 -.->|"both required · coincided only at 0417"| H
    P2 -.-> H
```

## What it proved, precisely

The tester reached the **store back-office**, not the cardholder data environment. Marketa deliberately refused to use "only one store" as a mitigation, and recorded why: the fault needed two preconditions, one of which was **latent at 37 stores**. The single site where both coincided is a fact about coincidence, not about control effectiveness.

**Detection time: 19 minutes** from associating with a guest wireless network any customer can join. Notified at 12:38, store isolated at 13:19 — **41 minutes to containment**.

## Source
`03.07-segmentation-penetration-test.md`, `03.08-remediation-and-retest.md`.
