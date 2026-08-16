# Decision Log — Phase 01

| ID | Date | Decision | Rationale | Decided by | Reference | Status |
|---|---|---|---|---|---|---|
| DEC-101 | 2026-01-19 | Assess against **PCI DSS v4.0.1** with all 51 future-dated requirements treated as in force | They became mandatory 2025-03-31. Treating any of them as roadmap items would fail the assessment | Naomi Bhatt | 01.02 §5 | Approved |
| DEC-102 | 2026-01-22 | Validate as **Level 1** with a QSA-issued ROC rather than seeking an SAQ route | 68.4M annual transactions. No SAQ is available at this volume; the arithmetic is not discretionary | Raymond Voss | 01.03 §2 | Approved |
| DEC-103 | 2026-01-26 | Place the **AOC signature with the CFO**, not the CISO | The AOC is an attestation to the acquirer under a commercial agreement. It belongs with the officer who owns that relationship | Raymond Voss | ADR-0002 | Approved |
| DEC-104 | 2026-02-02 | Engage **Sable Ridge** as both QSA and ASV, with documented practice separation | Council rules permit it; the independence position is documented rather than assumed. Revisit at the 2028 cycle to avoid familiarity threat | Naomi Bhatt | ADR-0003 | Approved |
| DEC-105 | 2026-02-09 | **No requirement may be marked "Not Tested"** in the ROC | A Not Tested entry is an admission that the assessment did not happen. Marketa would rather record a Not in Place with a date | Naomi Bhatt | ADR-0004 | Approved |
| DEC-106 | 2026-02-16 | Treat the preliminary **604-system scope as a hypothesis**, not a baseline | Scope asserted is scope unproven. Phase 02 tests each assumption and the number will move in both directions | Owen Castellanos | 01.08 §1 | Approved |
| DEC-107 | 2026-02-23 | Plan the entire programme **backwards from QSA fieldwork on 2026-11-02** | The seasonal change freeze runs October to January. Fieldwork cannot move, so everything upstream is compressed against it | Owen Castellanos | 01.12 §3 | Approved |
| DEC-108 | 2026-03-02 | Northbridge and Halberd are covered **inside Marketa's own assessment** under the 12.8.4 alternative route | Neither holds a PCI AOC. The alternative route is explicit in the standard; pretending an AOC exists is not an option | Naomi Bhatt | 01.09 §4 | Approved |

## Source
`01.02`, `01.03`, `01.08`, `01.09`, `01.12`, and `adr/`.
