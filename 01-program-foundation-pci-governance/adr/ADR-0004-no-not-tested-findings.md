# ADR-0004 — Permit No "Not Tested" Finding in the ROC

| Field | Value |
|---|---|
| Status | **Accepted** |
| Date | 2026-02-09 |
| Deciders | Naomi Bhatt (CISO), Owen Castellanos, with Grant Whitfield (lead QSA) informed |

## Context

A ROC records each applicable requirement as In Place, In Place with Compensating Control, Not Applicable, **Not Tested**, or Not in Place.

"Not Tested" is available for legitimate reasons — a requirement outside the assessed scope of a particular engagement, for instance. It is also, in practice, the softest available landing when evidence could not be produced in time. It reads as neutral. It is not neutral: it means the assessment did not examine the requirement.

## Decision

**No requirement applicable to Marketa may be recorded as Not Tested.** Where a requirement is not met, it is recorded as **Not in Place** with a named owner and a remediation date. Where it genuinely does not apply, it is recorded as **Not Applicable** with the reason stated.

## Rationale

The two entries look similar on a summary page and mean opposite things to anyone who reads carefully. Not in Place says *we know, and here is the date.* Not Tested says *we do not know.* An acquirer reading an AOC learns something from the first and nothing from the second.

This decision is also what makes the 2026 outcome defensible. The assessment produced **two Not in Place findings** — authenticated scanning incomplete on 9 of 71 components, and hard-coded credentials in 2 legacy batch integrations. Under a looser convention both could plausibly have been parked as Not Tested and the AOC filed as compliant. Instead the AOC was filed **non-compliant with a remediation date**, and full compliance was achieved at re-assessment on 2027-02-18.

## Consequences

- The 2026 AOC records non-compliance. This is the correct outcome and it was harder to sign.
- Every applicable requirement has a determinate answer, so the ROC can be read as a complete statement of position.
- Evidence retention is forced upstream: an untested requirement is a planning failure, not a reporting option.

## Alternatives considered

| Option | Why rejected |
|---|---|
| Allow Not Tested where evidence is unavailable | Turns an evidence gap into a presentation choice |
| Allow it only with CISO approval | Approval thresholds erode under deadline pressure; a flat rule does not |
| Narrow scope so untestable items fall outside it | Scope manipulation to avoid a finding is the worst version of this decision |
