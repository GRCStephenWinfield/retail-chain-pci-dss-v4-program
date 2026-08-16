# ADR-0005 — Raise a Risk When Discovery Disproves an Assumption, Even After Full Remediation

| Field | Value |
|---|---|
| Status | **Accepted** |
| Date | 2026-02-05 |
| Deciders | Naomi Bhatt (CISO), Owen Castellanos, Rosa Delgado (Internal Audit) |

## Context

Discovery found account data in four locations, none of them inside the 604 systems believed in scope. All four were remediated quickly and completely: the recording archive quarantined and deleted, the dispute share destroyed, the orphaned host terminated, the emailed spreadsheet purged from all eleven copies. No indicator of compromise was found in any of them.

The conventional response is to close the findings and leave the associated risk rating where it was, on the reasoning that the exposure no longer exists.

## Decision

Where independent discovery or testing **disproves an assumption** underlying a risk rating, the rating is **raised or restored** — regardless of whether the specific instance has been remediated.

Accordingly **R-31** was raised to **4 × 4 = 16 (High)** on 2026-02-05, two days after PAN-01 was confirmed, and will not be lowered on remediation alone.

## Rationale

A risk rating is not a statement about one location. It is a statement about **a class of exposure across an environment**, and it encodes a belief about how well that environment is understood.

R-31's prior rating rested on the belief that DTMF masking, implemented in June 2023, had eliminated spoken account data from the call estate. That belief was wrong in a specific and instructive way: the control was **forward-only** and had never been applied to what already existed. Deleting the 11,400 recordings that were found removes those recordings. It does not restore the belief, because the belief was never about those recordings — it was about whether Marketa knew what it held.

The exit criterion follows directly. R-31 comes down when a **second discovery run across the same populations returns nothing**, not when the first run's findings are cleaned up.

## Consequences

- The Phase 03 register opens with R-31 as a **High** risk in an organisation that has just completed remediation. This looks worse and is more accurate.
- Three further risks (R-08, R-19, R-22) were created rather than folded into existing entries, because each has a distinct root cause and a distinct control.
- The exit criterion is **evidence-based and dated**: a clean re-run by 2026-08-31.
- The rule generalises: any later phase that disproves an assumption raises the affected rating. Phase 03's segmentation test will invoke it again.

## Alternatives considered

| Option | Why rejected |
|---|---|
| Close the findings, hold the rating | Records that the instances are gone, and quietly asserts that the understanding was fine all along. It was not |
| Close the findings and lower the rating, citing new controls | The controls are three weeks old. There is no operating history, and one of them exists only because the belief failed |
| Raise it, then lower it once remediation completes | Remediation completed within days. Lowering it on that basis would make the raise decorative |
