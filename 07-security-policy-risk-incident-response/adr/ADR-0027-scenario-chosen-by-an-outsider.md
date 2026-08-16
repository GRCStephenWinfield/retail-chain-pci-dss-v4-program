# ADR-0027 — The Exercise Scenario Is Chosen by Somebody Who Did Not Write the Plan

| Field | Value |
|---|---|
| Status | **Accepted** |
| Date | 2026-06-10 |
| Deciders | Naomi Bhatt (CISO), Marcus Hale, Rosa Delgado (Internal Audit) |

## Context

**12.10.2** obliges the incident response plan to be reviewed and tested at least once every 12 months, including all the elements listed in 12.10.1.

The convenient way to run that test is for the plan's authors to design the scenario. They know the plan, they know which parts are load-bearing, and they can construct an exercise that covers the required elements efficiently.

They also know, without meaning to, which parts of the plan are weak — and scenario design is full of small choices that route around them.

## Decision

**The exercise scenario is set by somebody who did not write the plan**, and is not shared with the responders in advance.

## Rationale

An author testing their own plan tests the parts they thought about. The parts they thought about are, by definition, the parts that already work. Everything a plan gets wrong lives in the interactions nobody modelled, and an author cannot deliberately probe an interaction they did not know existed.

The 2026 scenario demonstrates the difference. A **common-point-of-purchase alert arriving from the acquirer** puts the organisation behind from the first minute — the response begins with an external party's timeline already running, and with the determination depending on data held across three payment channels and a token namespace owned by a third party.

No internal author would have picked it, because the plan had nothing to say about it. That is exactly why it was worth running: it took **9 hours 20 minutes** to reach a determination the plan assumed would take four.

## Consequences

- **Six findings** from one exercise (TTF-1 to TTF-6), including a definitional gap that mattered: nobody had defined what "determination" meant, and the C5 notification clock runs from it.
- The plan moved from **v2.0 to v3.0**.
- The exercise is genuinely uncomfortable to run, and the discomfort is the product.
- Scenario authorship rotates, and Internal Audit may set it in any year it chooses.

## Alternatives considered

| Option | Why rejected |
|---|---|
| Authors design the scenario | Tests the parts that already work |
| Buy a standard scenario from a vendor | Better than self-authoring, but generic — it will not know about the token namespace or the three-channel reconciliation |
| Share the scenario in advance so people can prepare | Tests preparation. The plan is for the day nobody prepared |
