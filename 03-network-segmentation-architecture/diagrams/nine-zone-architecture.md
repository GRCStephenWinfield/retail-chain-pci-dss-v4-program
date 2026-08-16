# The Nine-Zone Architecture

```mermaid
flowchart TD
    subgraph CDE["CARDHOLDER DATA ENVIRONMENT"]
        Z1["Z1 · CDE Core — Columbus<br/>6 components · dedicated hardware<br/>TRUST T1"]
        Z2["Z2 · CDE Cloud — AWS<br/>2 components · dedicated VPC<br/>TRUST T1"]
    end
    Z3["Z3 · Security and Administrative Services<br/>identity · logging · patching · backup<br/>secrets · jump hosts<br/>TRUST T2 · connected-to"]
    Z4["Z4 · Corporate and Distribution<br/>HQ · Austin · 4 DCs · end-user computing<br/>TRUST T3 · out of scope"]
    Z5["Z5 · Store Back-Office<br/>482 servers · 496 appliances<br/>TRUST T3 · connected-to band"]
    Z6["Z6 · Store Payment Device VLAN<br/>1,914 POI devices<br/>TRUST T3 · 9.5.1 obligations retained"]
    Z7["Z7 · Store Guest Wireless<br/>customer and personal devices<br/>TRUST T4 · UNTRUSTED"]
    Z8["Z8 · E-Commerce Platform — AWS<br/>246 workloads<br/>TRUST T3 · payment-page delivery in scope"]
    Z9["Z9 · Contact Centre — Austin<br/>310 agent desktops · telephony boundary<br/>TRUST T3"]
    Z3 -->|"administrative paths only<br/>brokered · logged · MFA"| Z1
    Z3 --> Z2
    Z4 -.->|"no direct path"| Z1
    Z5 -->|"managed from Z3<br/>no path to Z1"| Z3
    Z6 -->|"ciphertext only<br/>POI to Verition"| EXT["External<br/>Verition · Truvance · Cadence · Cardinal"]
    Z7 -.->|"THE BOUNDARY THAT FAILED<br/>SEG-PT-01 · 2026-05-15"| Z5
    Z8 --> EXT
    Z9 --> EXT
    Z1 --> EXT
    Z2 --> EXT
```

## The boundary that failed

**Z7 → Z5.** Guest wireless to store back-office, through a trunk port whose allowed-VLAN list had been lost in a build image. Configuration review said the boundary was closed. It was not.

The tester never reached the CDE. That is not the point — under **ADR-0006** the store estate's out-of-scope classification rested on exactly that boundary being effective, and it demonstrably was not.

## Source
`03.02-nine-zone-architecture.md`, `03.07-segmentation-penetration-test.md`.
