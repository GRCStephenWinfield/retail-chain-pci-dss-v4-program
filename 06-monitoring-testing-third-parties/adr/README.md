# Architecture Decision Records — Phase 06

The series runs continuously across the Week 7 repository from **ADR-0001**. Phases 01–05 contributed **0001–0019**; Phase 06 contributes **ADR-0020 to ADR-0025**.

| ADR | Title | Date | In one line |
|---|---|---|---|
| [ADR-0020](ADR-0020-the-finder-re-tests-not-the-fixer.md) | The Finder Re-Tests, Not the Fixer | 2026-04-17 | If nobody logs in tomorrow, does the review still happen? |
| [ADR-0021](ADR-0021-evaluate-what-the-customer-received.md) | Evaluate Payment Pages as Received by the Consumer Browser, From Outside the Network | 2026-08-13 | An internal comparison tests what Marketa published, not what the customer received |
| [ADR-0022](ADR-0022-silence-is-a-defect-not-a-success.md) | A Quarter With Zero Detective Alerts Is a Defect to Investigate | 2026-08-13 | Benign alerts are a detective control's proof of life; tuning has no natural stopping point |
| [ADR-0023](ADR-0023-provider-evidence-is-graded.md) | Provider Evidence Is Graded, and a Grade Is Not a Control | 2026-10-16 | 80 rows graded across six providers — 28 E1, 17 E2, 35 E3 — because a folder cannot answer *how do you know?* |
| [ADR-0024](ADR-0024-monitoring-tiered-above-the-annual-floor.md) | Monitoring Tiered Above the Annual Floor | 2026-07-08 | MT-1 monthly · MT-2 quarterly · MT-3 per-event, and the annual 12.8.4 review is never displaced by the tier |
| [ADR-0025](ADR-0025-hold-the-risk-until-the-control-is-complete.md) | Hold the Risk Until the Control That Treats It Is Complete, and Publish the Untested Surface | 2026-10-02 | Thirteen rows of untested surface, and R-01 held at High 20 until 11.6.1 existed |

## The series so far

| Phase | ADRs | Theme |
|---|---|---|
| 01 | 0001–0004 | Operating model; the CFO signs; QSA/ASV independence; **no "Not Tested" findings** |
| 02 | 0005–0007 | Raise a risk on a disproved assumption; store classification; **scan everything, not a sample** |
| 03 | 0008–0009 | Continuous drift detection; **deliberately sample the messy estate** |
| 04 | 0010–0012 | 6.4.2 supersedes 6.4.1; **remove the capability, do not govern it**; measure deployed state |
| 05 | 0013–0019 | A reviewable catalogue beats a perfect one; the conservative reading of single-factor access; break-glass documented; **physical security evidenced, not inherited** |
| **06** | **0020–0025** | **"Automated" means the mechanism reviews; evaluate what the customer received; silence is a defect; provider evidence is graded; monitoring tiered above the floor; hold the risk and publish the untested surface** |
