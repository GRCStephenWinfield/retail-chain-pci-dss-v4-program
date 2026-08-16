# 12.10.7 — When PAN Turns Up Where It Should Not

```mermaid
flowchart TD
    FOUND["Stored PAN detected somewhere<br/>it is not expected"]
    FOUND --> L1["LIMB 1 · IDENTIFY<br/>is this an unexpected location?<br/>discovery tooling answers it"]
    L1 --> L2["LIMB 2 · REMEDIATE THE DATA<br/>securely delete it<br/>or migrate it into the CDE"]
    L2 --> L3["LIMB 3 · REMEDIATE THE PROCESS<br/>determine HOW IT GOT THERE<br/>and fix the leakage or process gap"]
    L3 --> P0["P-0 · general procedure"]
    L3 --> P1["P-1 · media<br/>from PAN-01 · call recordings<br/>masking was implemented forward-only"]
    L3 --> P2["P-2 · unstructured document stores<br/>from PAN-02 · dispute file share<br/>a process nobody had mapped"]
    L3 --> P3["P-3 · orphaned and decommissioned assets<br/>from PAN-03 · debug log<br/>the CMDB said the host was gone"]
    L3 --> P4["P-4 · inbound customer-initiated data<br/>from PAN-04 · emailed spreadsheet<br/>a customer sent a card number"]
    SKIP["THE LIMB ENTITIES SKIP<br/>deleting the data is the easy part<br/>asking how it arrived is the requirement"] -.-> L3
    ALL["All four procedures exist because<br/>somebody asked limb 3"] -.-> P1
```

## The unusual position

Marketa wrote these procedures in **Phase 02**, in response to four real discoveries, months before 12.10.7 was formally documented as a control in this phase. The requirement was satisfied by having taken the third limb seriously, and the documentation caught up afterwards.

That is the right way round, and it is worth noting because the reverse — a beautifully written procedure that has never been exercised — is the far more common artefact.

**The exit criterion held.** R-31 came down on a **second full discovery run returning clean**, not on the cleanup of the first.

## Source
`07.11-pan-found-where-unexpected.md`, `02.03-unexpected-pan-locations-and-response.md`.
