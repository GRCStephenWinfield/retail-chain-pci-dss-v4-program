# Risk Log — Phase 03

The **full 44-risk baseline register** is `03.11-risk-register.md`. This log records movement during the phase.

| ID | Risk | L × I | Rating | Movement in Phase 03 | Owner | Status |
|---|---|---|---|---|---|---|
| **R-14** | **Store network segmentation is not effective** | **4 × 4 = 16** | **High** | **RAISED 2026-05-18** — SEG-PT-01 disproved the configuration-based conclusion | Trevor Kim | Open |
| **R-31** | Historical account data persisting in unstructured stores | 4 × 4 = 16 | **High** | Carried from Phase 02 at the raised rating; exit criterion unchanged | Bill Traynor | Open |
| R-08 | Account data created by unmapped processes | 3 × 4 = 12 | Moderate | Carried from Phase 02 | Elena Marchetti | Open |
| R-19 | Decommissioned assets remaining live | 3 × 3 = 9 | Moderate | Carried from Phase 02 | Trevor Kim | Open |
| R-22 | Customer-initiated account data by email or free text | 3 × 3 = 9 | Moderate | Carried from Phase 02 | Bill Traynor | Open |
| PR-02 | A P2PE condition is not met at some stores | — | **Closed** | Realised, corrected and closed in Phase 02 | Adaeze Nwosu | Closed |

## Register position at the close of Phase 03

**44 risks — 9 High · 21 Moderate · 14 Low.** This is the baseline every later phase moves against.

## What Phase 03 changed about how risk is scored

Two risks in this register were **raised on evidence** rather than scored high at identification. That is not a scoring failure; it is the register working. Under **ADR-0005**, testing that disproves an assumption raises the rating even when the specific instance is remediated — because the rating was never about the instance.
