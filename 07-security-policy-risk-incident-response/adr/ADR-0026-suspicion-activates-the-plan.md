# ADR-0026 — A Suspected Incident Activates the Plan

| Field | Value |
|---|---|
| Status | **Accepted** |
| Date | 2026-05-08 |
| Deciders | Marcus Hale, Naomi Bhatt (CISO) |

## Context

**12.10.1** obliges an incident response plan that exists and is ready to be activated in the event of a **suspected or confirmed** security incident.

Most plans, including Marketa's earlier version, treated activation as something that follows confirmation. An alert is triaged, an analyst investigates, a determination is made, and *then* the plan activates. It is the tidy sequence, and it produces a clean incident log in which every activation was justified.

## Decision

**The plan activates on suspicion.** A suspected security incident stands up the CSIRT, assigns a severity, and starts the clock — before anyone has confirmed that an incident occurred.

## Rationale

The word "suspected" is doing most of the work in 12.10.1, and taking it literally changes when the response begins.

A plan that activates only on confirmation activates **after the period in which it would have been most useful**. The hours in which containment is cheapest and evidence is freshest are precisely the hours spent deciding whether this is real. The tidy incident log is purchased with the response window.

The cost is false activations, and the Committee accepted it explicitly. A stood-up CSIRT that stands down two hours later has cost two hours of several people's time. A confirmation-gated response that started four hours late has cost something that cannot be recovered.

## Consequences

- Severity assignment happens early and is **revised downward without embarrassment**. Downgrades are recorded as normal operation, not as errors.
- The 24-hour notification clock under Cardinal's obligation **C5** runs from *determination* of a compromise, not from activation — and the tabletop found that nobody had defined what determination meant. It is now defined (TTF-4).
- The incident log contains activations that turned out to be nothing. That is the intended shape of it.
- The 24/7 roster under 12.10.3 has to be genuinely available, because it is called more often. Four unannounced out-of-hours tests were run; **one went unanswered** and the roster gap was corrected.

## Alternatives considered

| Option | Why rejected |
|---|---|
| Activate on confirmation | The tidy version. Buys a clean log with the response window |
| Activate on confirmation, with an informal "lean-forward" step | An unnamed step with no authority is a step people skip under pressure |
| Activate on suspicion only for SEV-1 and SEV-2 | Severity is assigned *after* activation. Gating activation on a severity that does not exist yet is circular |
