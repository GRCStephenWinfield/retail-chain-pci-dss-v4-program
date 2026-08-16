# Risk Log — Phase 05

The baseline register is `03.11-risk-register.md` — **44 risks, 9 High · 21 Moderate · 14 Low**. This log records what Phase 05 changed.

| ID | Risk | Baseline | Phase 05 effect | Standing | Owner |
|---|---|---|---|---|---|
| **R-17** | Application and system accounts with embedded credentials | **High 16** | 142 accounts inventoried under 8.6.1; 93 moved to vaulted retrieval; 31 to workload identity; TRA-8.6.3 published | **HELD at High.** Two remain with embedded credentials — the **8.6.2 Not in Place** finding, dated 2027-01-31 | Trevor Kim |
| **R-02** | POI tampering and substitution across 1,914 terminals | High 16 | 9.5.1 regime operating; register reconciled; four quarterly cycles at 99.56% coverage; **0 confirmed tampering**; 9.5.1.3 training including seasonal intake | **Reduced** — but the structural exposure of 1,914 devices in 482 public spaces does not disappear | Adaeze Nwosu |
| R-13 | Seasonal workforce access | Moderate 12 | Full JML at intake scale; no abridged training; deprovisioning at season end | **Reduced** — the prior season's 1,118 accounts live 30 days past last shift is the baseline it moved from | Trevor Kim |
| R-04 | Excessive standing privilege in the CDE | Moderate 12 | 24-role catalogue; 134 assignments; 76 privileged; two review cycles with 214 then 9 revocations | **Reduced** — the fall from 214 to 9 revocations between cycles is the evidence | Elena Marchetti |
| R-11 | Credential compromise yielding CDE access | Moderate 12 | **8.4.2 MFA across all 71 components**; 8.3.6 twelve-character minimum enterprise-wide | **Held** — deployed within three months; no operating history through a peak season | Trevor Kim |
| R-26 | Physical access to sensitive areas not individually accountable | Moderate 9 | 130 sensitive-area authorisations; 9.2.1.1 monitoring with three-month retention; visitor regime | **Reduced** | Trevor Kim |
| R-40 | Media containing account data leaving the estate uncontrolled | Low 6 | 9.4 regime; 101 registered items; Halberd certificates as 9.4.7 evidence | **Held at Low** — the population is small because Marketa stores nothing, which is the architecture rather than the control | Elena Marchetti |

## The one that matters

**R-17 stays High.** Two legacy batch integrations still authenticate with credentials embedded in configuration files, and a compensating control was argued and **refused** — the credentials are readable by anyone with configuration access, and monthly rotation does not change that.

Recording a compensating control would have produced a compliant AOC and a false position. Under **ADR-0004**, the requirement is recorded as **Not in Place with a remediation date of 2027-01-31**. That is one of the two findings that makes the 2026 AOC non-compliant.
