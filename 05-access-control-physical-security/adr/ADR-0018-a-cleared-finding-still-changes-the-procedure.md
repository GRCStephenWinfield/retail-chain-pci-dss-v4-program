# ADR-0018 — A Cleared Discrepancy Still Changes the Procedure

| Field | Value |
|---|---|
| Status | **Accepted** |
| Date | 2026-09-30 |
| Deciders | Adaeze Nwosu, Naomi Bhatt (CISO) |

## Context

The Q3 inspection cycle raised **six tamper-evident seal discrepancies** across the terminal estate. All six were escalated, the terminals were removed from service, and all six were resolved without any evidence of tampering: five were unrecorded reseals following a Verition service wave in September, and one was solvent damage from a cleaning product.

Nothing was wrong with any device. The natural conclusion is that the control produced six false positives and that the incident is closed.

## Decision

**The procedure changes anyway.** Verition now files a service record per terminal before a technician leaves the store, and that record is reconciled against the next inspection cycle.

Separately, and deliberately, **the escalation threshold is not raised** (DEC-510).

## Rationale

A vendor service wave that leaves six seals nobody can account for is a **process gap**, whether or not a device was touched. The next service wave might leave seven, and the seventh might not be benign — and Marketa would have no way to distinguish it, because the reconciliation that would separate "our technician did this" from "somebody else did this" did not exist.

The second half of the decision is the more important one. The instinct after six benign findings is to raise the threshold so that a single anomaly does not pull a terminal out of service during trading. That instinct is exactly backwards: **raising a threshold because the first findings were benign is how the next one gets missed.** The cost of six unnecessary removals in a quarter was accepted as the price of the control working as designed.

## Consequences

- Vendor service records are now reconciled against inspections, closing the gap that made the six unexplainable.
- The escalation threshold is unchanged; false positives remain expected and are treated as a cost rather than a defect.
- The principle generalises across the programme: **"all cleared" is not the same as "nothing to learn"**, and an investigation that ends in a clean result should still be asked what made the question hard to answer.
- A regional manager's proposal to raise the threshold is recorded as declined, with the reasoning, so the argument does not have to be had again next year.

## Alternatives considered

| Option | Why rejected |
|---|---|
| Close the six as false positives and change nothing | Leaves the reconciliation gap that made them unexplainable in the first place |
| Raise the escalation threshold | Reduces false positives by reducing detection. The wrong trade for a control whose whole purpose is detection |
| Stop counting vendor-caused reseals as discrepancies | Requires the colleague to know whether a reseal was authorised, which is precisely the judgement ADR-0017 removes from them |
