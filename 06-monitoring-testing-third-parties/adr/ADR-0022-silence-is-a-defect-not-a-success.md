# ADR-0022 — A Quarter With Zero Detective Alerts Is a Defect to Investigate

| Field | Value |
|---|---|
| Status | **Accepted** |
| Date | 2026-08-13 |
| Deciders | Sonia Rendell, Marcus Hale, Naomi Bhatt (CISO) |

## Context

Detective controls that generate false positives get tuned. Tuning is legitimate and necessary — an alert stream nobody can triage is an alert stream nobody reads.

The failure mode is that tuning has no natural stopping point. Each individual suppression is defensible, the volume falls quarter on quarter, everyone is pleased, and eventually the control is silent. A silent detective control and a broken one produce identical evidence: nothing.

Marketa now operates several detective controls whose value is precisely that they speak — **11.6.1** payment-page tamper detection, **11.5.2** change detection, **10.7.2** critical security control failure detection, and the **DA-1 to DA-6** drift assertions from Phase 03.

## Decision

**A reporting period with zero alerts from a detective control is treated as a defect to investigate, not as a success.** Alert volume and disposition are reported monthly for each detective control, and a zero requires a positive demonstration that the mechanism is still running and still capable of firing.

## Rationale

The evidence a working detective control produces is *alerts that turn out to be benign*. That is not noise to be eliminated; it is the control's proof of life.

Phase 03 established the same principle from the other direction: after six benign POI seal discrepancies, the escalation threshold was deliberately **not** raised (ADR-0018), because raising a threshold in response to benign findings is how the next real one is missed. This ADR is that reasoning applied to automated controls, where the drift is quieter and the tuning is easier to justify one suppression at a time.

## Consequences

- Monthly reporting of alert volume and disposition per detective control.
- **Negative testing** — deliberately introducing a change the control should catch — is scheduled rather than improvised, extending the quarterly negative testing Phase 04 introduced for configuration assertions (ADR-0012).
- Suppressions carry an owner and an expiry. A permanent suppression is a change to the control's scope and is approved as one.
- The 11.6.1 operating record will show benign alerts, and the phase reports them rather than presenting a clean quarter as an achievement.

## Alternatives considered

| Option | Why rejected |
|---|---|
| Treat falling alert volume as improvement | True sometimes, indistinguishable from decay always |
| Annual review of suppressions | Twelve months is long enough for a control to go silent and stay silent through an assessment |
| Fixed minimum alert rate | Perverse — it incentivises manufacturing alerts. The obligation is to investigate a zero, not to prevent one |
