# Risk Log — Phase 07

The baseline register is `03.11-risk-register.md` — **44 risks, 9 High · 21 Moderate · 14 Low**. This log records the movement into the assessment.

| ID | Risk | Entering Phase 07 | Movement | Residual | Evidence |
|---|---|---|---|---|---|
| **R-14** | Store network segmentation is not effective | **High 16** | **High → Low** | **Low 6** | The **90-day clean drift-detection count completed 2026-10-01**. The clock had been reset once, on 2026-07-03, when two segmentation-determining divergences appeared — and the reset was honoured |
| **R-31** | Historical account data in unstructured stores | **High 16** | **High → Low** | **Low 6** | The **second full discovery run, 2026-08-17 to 08-28, returned clean** — same populations, same method, 100% coverage. This was the exit criterion published in Phase 03 |
| R-02 | POI tampering and substitution | High 15 | High → Moderate | Moderate 10 | Four quarterly inspection cycles at 99.56% coverage, 0 confirmed tampering; impact held at 5 |
| R-05 | P2PE condition failure | High 15 | High → Moderate | Moderate 10 | Per-store PIM verification operating; the three non-conforming stores corrected and the reduction restored on evidence |
| R-27 | Administrative-services concentration | High 15 | High → Moderate | Moderate 10 | **The thinnest of the five movements.** Dissent recorded; a return-to-High condition attached |
| **R-17** | Application and system accounts with embedded credentials | **High 16** | **HELD** | **High 16** | **The 8.6.2 Not in Place finding.** A compensating control was argued and refused |
| **R-36** | Components that cannot accept credentialed assessment | **High 16** | **HELD** | **High 16** | **The 11.3.1.2 Not in Place finding.** No compensating control argued |

## Position entering the assessment

**2 High · 22 Moderate · 20 Low = 44.**

Both remaining Highs are held by **Not in Place findings**, both dated **2027-01-31** against a re-assessment on **2027-02-18**. There is no float in that, and it is stated rather than disguised.

## What is worth noticing about the two that moved

R-14 and R-31 were the two risks **raised on evidence** during the programme — one by a penetration test, one by a discovery scan. Both were given exit criteria **in writing, in advance, before anyone knew whether they would be met**. Both criteria were met on their own terms, and neither was quietly relaxed on the way.

That is the difference between a register that reports and a register that negotiates.
