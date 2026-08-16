# ADR-0017 — Design the POI Inspection for the Shift, Not for the Policy

| Field | Value |
|---|---|
| Status | **Accepted** |
| Date | 2026-04-15 |
| Deciders | Adaeze Nwosu, Naomi Bhatt (CISO), regional store managers |

## Context

Requirement 9.5.1.2 obliges periodic inspection of POI device surfaces to detect tampering and substitution. At Marketa that means **1,914 terminals across 482 stores**, inspected quarterly.

The operators are **store colleagues on shift**. There are roughly 29,600 of them, turnover is high, up to 6,800 seasonal colleagues join during the busiest quarter, and the inspection is not the most urgent thing any of them is doing.

The conventional design is a written procedure describing the indicators of tampering — unusual wires, mismatched panels, adhesive residue, an overlay that does not sit flush — and a checklist to sign.

That design optimises for the auditor. It is close to useless for a colleague who has never seen a tampered terminal, on a Saturday, with a queue.

## Decision

Design the inspection for the shift:

| Element | Design choice |
|---|---|
| **The aid shows what CORRECT looks like** | Photographs of the specific make and model at that lane, not a description of what tampering looks like. Recognising a deviation from a picture is easier than recalling a list of indicators |
| **Serial verification is mandatory, not optional** | Substitution is the attack a visual check misses entirely. A cloned device can look perfect |
| **Photograph capture replaces the written report** | The evidence exists as a by-product of doing the inspection, rather than requiring a separate act of documentation |
| **Escalation is one action** | Remove the terminal from service and raise it. The colleague is not asked to judge whether the anomaly is serious |
| **No abridged version for seasonal colleagues** | ADR-0019 |

## Rationale

The control's quality is a function of **training and simplicity**, not of policy language. Every element of the procedure that requires judgement, recall or a separate documentation step is an element that degrades under time pressure, and time pressure is the normal operating condition of a retail shift in Q4.

Removing judgement from the colleague also improves the data: an escalation that fires on any anomaly produces false positives that can be analysed, whereas a colleague deciding what is "serious enough" produces silence that cannot.

## Consequences

- Coverage reached **99.56% across four cycles** (7,622 of 7,656 inspections), which is the figure the design was aiming at.
- The **49 discrepancies** raised across the year include benign ones by design. Q3's six were all cleared as maintenance — and still changed the procedure (ADR-0018).
- The measure that actually tests the training is not coverage but the **unannounced repair-personnel tests: 9 conducted, 2 failed**. Coverage says inspections happened; that figure says what they are worth.
- The design must be re-taught every season rather than assumed to persist.

## Alternatives considered

| Option | Why rejected |
|---|---|
| Written procedure with an indicator checklist | Optimises for the auditor and requires recall the operator does not have |
| Central inspection by visiting engineers | 1,914 terminals across 38 states, quarterly. Not affordable, and it would put inspection four times a year in the hands of people who are not there the other 361 days |
| Inspection only at high-risk stores | Substitution attacks target the store nobody is watching |
