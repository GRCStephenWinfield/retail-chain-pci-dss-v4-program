# ADR-0010 — Treat 6.4.2 as the Sole Route for Public-Facing Application Protection

| Field | Value |
|---|---|
| Status | **Accepted** |
| Date | 2026-06-15 |
| Deciders | Naomi Bhatt (CISO), Sonia Rendell, Owen Castellanos |

## Context

Under PCI DSS v4.0, public-facing web applications could be protected either by **6.4.1** — an annual and on-change review by a specialist, with vulnerabilities corrected — or by **6.4.2**, an automated technical solution continually detecting and preventing web-based attacks.

**6.4.2 was future-dated and became mandatory on 2025-03-31, replacing the 6.4.1 option.** From that date the review-based route is no longer available.

Three earlier documents in this portfolio — `02.09`, `03.11` and `03.12` — map controls or components to "6.4.1", written before this phase examined the requirement closely.

## Decision

**6.4.2 is the operative requirement** for Marketa's public-facing applications in the 2026 assessment. 6.4.1 is recorded as **superseded**, not as a Not Applicable determination.

Where earlier approved documents cite 6.4.1, the mapping is restated in `04.09 §1` and `04.12 §1` rather than amended in place — another phase's approved file is not silently rewritten.

## Rationale

An incorrect requirement citation carried into a ROC is a specific and avoidable embarrassment: it tells an assessor that the entity mapped its controls to a version of the standard that no longer applies.

Recording it as **superseded** rather than **Not Applicable** also matters. A Not Applicable determination says the requirement does not apply to this environment; that is not what happened here. The requirement was withdrawn as an option for everyone.

## Consequences

- The WAF is the compliance mechanism, not the specialist review — so its **coverage, tuning and blocking posture** become assessable evidence rather than supporting detail.
- Detection-only mode is not sufficient: 6.4.2 requires detecting **and preventing**. The staged move to blocking is recorded with dates.
- The four Not Applicable entries in the ROC remain reserved for merchant-applicable requirements determined not to apply. 6.4.1 is not one of them.
- The portfolio now carries a standing rule: **cite the requirement that is in force, not the one that was in force when the control was designed.**

## Alternatives considered

| Option | Why rejected |
|---|---|
| Keep the 6.4.1 mapping and explain at fieldwork | Puts a known error in the ROC and invites the assessor to wonder what else is stale |
| Amend the earlier phase documents in place | Rewrites approved records. The portfolio's convention is to report and restate, not to revise history |
| Record 6.4.1 as Not Applicable | Wrong characterisation — the option was withdrawn, not inapplicable |
