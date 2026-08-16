# ADR-0028 — A Lesson Either Changes the Plan or Is Recorded as Declined

| Field | Value |
|---|---|
| Status | **Accepted** |
| Date | 2026-06-24 |
| Deciders | Marcus Hale, Naomi Bhatt (CISO) |

## Context

**12.10.6** obliges the incident response plan to be modified and evolved according to **lessons learned** and to incorporate industry developments.

Lessons-learned processes have a characteristic failure mode. Lessons are captured enthusiastically after an exercise or an incident, entered into a log, and then encounter the ordinary friction of implementation. Some are adopted. The rest do not get rejected — they simply stop being mentioned. Six months later the log contains a column of open items nobody owns and nobody will close.

The log then reads as though every lesson was accepted, which is both untrue and unhelpful to whoever inherits it.

## Decision

Every lesson reaches one of exactly two states: it **changes the plan**, or it is **recorded as declined with a reason and a named decider**. There is no third state, and nothing stays open indefinitely.

## Rationale

The declination is the useful artefact. A log where everything was accepted tells a reader nothing about judgement; a log with declinations shows what was considered and rejected, and why — which is what a successor, or an assessor, actually needs.

Hale's formulation, minuted at the exercise:

> "A lessons-learned log with no declinations is a log where the inconvenient lessons quietly evaporated. If we never say no, nobody can tell what we actually considered."

Forcing the binary also prices the lesson. "We should reconcile transactions across all three channels within an hour" sounds obviously correct until someone has to own it, and the decision to decline it — with the reason — is more honest than leaving it open for a year.

## Consequences

- Eleven lessons were raised across 2026: **nine amended the plan, two were declined**, and both declinations are in the log with their reasons.
- The plan is now at **v3.0**, and its version history is a record of what was learned rather than a record of formatting changes.
- Declining a lesson is uncomfortable and is meant to be. It requires a named person to say that a proposed improvement is not worth its cost.
- The same discipline was adopted for penetration test findings and audit recommendations, where the equivalent failure mode is "risk accepted" with nobody named.

## Alternatives considered

| Option | Why rejected |
|---|---|
| Track lessons as open items until resolved | Produces the column of stale open items this ADR exists to prevent |
| Accept all lessons | Sounds rigorous, guarantees the log is fiction within a year |
| Review open lessons annually | An annual review of a stale list is how the list got stale |
