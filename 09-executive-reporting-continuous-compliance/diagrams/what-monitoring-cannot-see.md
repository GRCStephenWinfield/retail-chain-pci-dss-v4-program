# Continuous Monitoring — What It Detects, and What It Cannot

```mermaid
flowchart TD
    EST["The assessed estate between assessments<br/>71 components · 482 stores<br/>6 payment templates · 6 providers"]
    EST --> CSC["CSC-1 to CSC-10 · 10.7.2<br/>critical security control FAILURE detection"]
    EST --> DA["DA-1 to DA-6 and CA-1 to CA-6<br/>daily segmentation and configuration assertion"]
    EST --> TAM["11.6.1 · continuous payment-page comparison<br/>from outside the network"]
    EST --> MT["MT-1 · monthly provider validation verification<br/>against authoritative published sources"]
    EST --> ATT["Monthly control attestation<br/>named owner · named population"]
    CSC --> STOP["ALL OF THESE ANSWER ONE QUESTION<br/>DID A CONTROL STOP?"]
    DA --> STOP
    TAM --> STOP
    MT --> STOP
    ATT --> STOP
    STOP --> GAP["NONE OF THEM ANSWERS THE OTHER ONE<br/>WAS THE CONTROL EVER RIGHT?"]
    GAP --> PT["Penetration testing · 11.4.5<br/>annual and after changes"]
    GAP --> CE["Quarterly controlled execution<br/>measures what the rule set MISSES"]
    GAP --> QSA["The annual assessment<br/>an independent party, 15 days"]
    PT --> PERIODIC["AND ALL THREE ARE PERIODIC"]
    CE --> PERIODIC
    QSA --> PERIODIC
```

## The failures on the record

Each mechanism has failed at least once in this programme, and the failures are the reason the diagram has a second half.

| Mechanism | Its recorded failure |
|---|---|
| Automated log review | **F-07** — a rule reporting itself healthy for **57 hours** while its source was stopped |
| Cloud logging assurance | **F-14** — found by CSC-7 detection rather than by anybody noticing an absence |
| Daily segmentation assertion | **F-18** — the assertion itself failed for four days, and was answered retrospectively against retained snapshots |
| Payment-page integrity | A vendor released a new version of an authorised script **before** the contractual notification arrived. 6.4.3 alone would have permitted it |

**A quarter with zero alerts is a defect to investigate, not a success** — ADR-0022, written in Phase 06 for exactly this reason.

## Source
`09.10-continuous-compliance-monitoring.md`.
