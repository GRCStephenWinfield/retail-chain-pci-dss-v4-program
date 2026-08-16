# ADR-0012 — Evidence Configuration Compliance from Deployed State, Never from the Baseline Document

| Field | Value |
|---|---|
| Status | **Accepted** |
| Date | 2026-06-15 |
| Deciders | Trevor Kim, Marcus Hale, Naomi Bhatt (CISO) |

## Context

Requirement 2 obliges configuration standards for all system component types. The natural deliverable is a set of baseline documents — and the natural evidence, at assessment, is to hand the assessor those documents alongside a sample of screenshots.

Phase 03 demonstrated what that is worth. A trunk port template lost its allowed-VLAN list in a build image in November 2024. The **documented standard remained correct throughout**. Periodic configuration reviews examined the intended configuration and found nothing wrong, because nothing was wrong with the intent. The estate had diverged from it, and a penetration tester found that in nineteen minutes.

## Decision

Configuration compliance is evidenced **exclusively from deployed state**. Baseline documents define the target; they are never offered as evidence that the target is met.

Compliance is measured in three classes, and the class is recorded per component:

| Class | Components | Method |
|---|---|---|
| **Asserted** | 56 | Machine-evaluated continuously against the baseline via CA-1 to CA-6 |
| **Observed** | 9 | Cannot accept an agent — evidenced by inspection at a defined cadence |
| **Attested** | 6 | SaaS control planes with no configurable OS layer — evidenced by provider attestation |

## Rationale

A baseline document is not a control. The deployed state is the control, and measuring it is the only thing that makes the claim real.

The three-class model exists because pretending otherwise would be the greater sin. Nine appliances genuinely cannot be measured the standard way; recording them as *observed*, with the limitation stated, is more useful to an assessor than folding them into an assertion coverage figure that would then be quietly false.

## Consequences

- Baseline compliance is reported as **coverage by class**, not as a single percentage — the single number would hide the nine.
- The nine observed components become **CAP-06** at the assessment. That is the correct outcome: a known limitation with a remediation path beats an unexamined claim.
- Quarterly **negative testing** was introduced — deliberately introducing a divergence to confirm the assertion detects it. First cycle: 18 of 18 detected, two detection windows corrected.
- The assertion framework CA-1 to CA-6 is a deliberate extension of Phase 03's DA-1 to DA-6, so the store estate and the assessed components are measured by one mechanism rather than two.

## Alternatives considered

| Option | Why rejected |
|---|---|
| Baseline documents plus sampled screenshots | Exactly the evidence model that missed a trunk misconfiguration for eighteen months |
| Assert everything and mark the nine as exceptions | Buries a real measurement gap inside a compliance percentage |
| Annual configuration audit | Annual means a divergence can live for a year. The drift control already found two in a month |
