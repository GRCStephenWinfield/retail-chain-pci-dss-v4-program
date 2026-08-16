# ADR-0001 — Run PCI as a Standing Programme, Not an Annual Project

| Field | Value |
|---|---|
| Status | **Accepted** |
| Date | 2026-01-19 |
| Deciders | Naomi Bhatt (CISO), Raymond Voss (CFO), Curtis Lang (CIO) |

## Context

Marketa validated compliant in 2023 and 2024. Both were run as projects: a push beginning roughly ten weeks before fieldwork, an assessment, an AOC, and then a return to business as usual until the following year.

That model produced two passing assessments and one uncomfortable fact — for most of each year, nobody could have said with confidence whether the controls were still operating. **Requirement 12.4.2** exists precisely because the Council observed the same pattern across the industry: entities that validate compliant and drift.

v4.0.1 makes the project model materially harder to sustain. Daily automated log review, quarterly authenticated internal scanning, quarterly device inspection across 1,914 terminals, weekly payment-page integrity checks, and annual targeted risk analyses are not activities that can be reconstructed in a ten-week window.

## Decision

PCI compliance is operated as a **standing programme** with a permanent owner (Owen Castellanos, reporting to the CISO), a published obligations calendar, and evidence generated **as a by-product of operating each control** rather than assembled for an assessment.

The annual assessment becomes a **verification of a running programme**, not the programme itself.

## Rationale

The decisive argument is evidential. A control operated all year but evidenced only in October produces exactly one kind of assessment conversation, and it is not a good one. A control that emits a dated artefact every time it runs produces a file the assessor can sample.

The secondary argument is cost. Ten-week compliance pushes are expensive in overtime, in deferred project work, and in the quality of the decisions made under time pressure.

## Consequences

- A named owner and a funded operating cadence exist between assessments.
- Every obligation in `01.11` carries a named **evidence artefact**; if an activity produces no artefact, it is redesigned rather than documented.
- The seasonal freeze becomes survivable, because nothing critical is left to do inside it.
- Phase 09 delivers a business-as-usual model rather than a closeout.

## Alternatives considered

| Option | Why rejected |
|---|---|
| Repeat the 2024 project model | Cannot produce the evidence the future-dated requirements demand, and the two prior passes would have made the failure feel surprising |
| Outsource the programme to the QSA | Sable Ridge does not advise on control design; and buying assurance from the party assessing you is the arrangement this programme is trying to avoid |
| Run it as a project but retain more evidence | Retaining evidence of an activity nobody performed between assessments does not help |
