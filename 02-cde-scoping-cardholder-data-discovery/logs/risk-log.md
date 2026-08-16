# Risk Log — Phase 02

The full 44-risk register is produced in **Phase 03**. Phase 02 records the risks that discovery **created or changed**.

| ID | Risk | L × I | Rating | Movement | Owner | Status |
|---|---|---|---|---|---|---|
| **R-31** | **Historical account data persisting in the call-recording estate and other unstructured stores** | **4 × 4 = 16** | **High** | **RAISED 2026-02-05** — the assumption that DTMF masking had solved this was disproved | Bill Traynor | Open |
| R-08 | Account data created as a by-product of processes nobody has mapped | 3 × 4 = 12 | Moderate | **New** — arises directly from PAN-02 | Elena Marchetti | Open |
| R-19 | Decommissioned assets remaining live and holding data | 3 × 3 = 9 | Moderate | **New** — arises from PAN-03 and the CMDB reconciliation | Trevor Kim | Open |
| R-22 | Customer-initiated account data arriving by email or free-text field | 3 × 3 = 9 | Moderate | **New** — arises from PAN-04 | Bill Traynor | Open |
| PR-01 | The scope hypothesis is wrong in the expensive direction | — | **Closed** | Tested. It was wrong in **both** directions: 543 removed, 10 added | Owen Castellanos | Closed |
| PR-02 | A P2PE condition is not met at some stores | 3 × 4 = 12 | Moderate | **Partially realised** — three stores non-conforming, corrected 2026-02-15 | Adaeze Nwosu | Open |

## The one that matters

**R-31 went up after everything was fixed.** The archive is gone. The rating still rose, because it had been expressing confidence in an estate that had never been searched. Confidence is restored by a clean second search, not by cleaning up the first one. See **ADR-0005**.
