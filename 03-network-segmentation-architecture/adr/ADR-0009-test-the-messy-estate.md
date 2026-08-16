# ADR-0009 — Deliberately Sample the Messy Estate, Not the Standard Build

| Field | Value |
|---|---|
| Status | **Accepted** |
| Date | 2026-04-10 |
| Deciders | Naomi Bhatt (CISO), Marcus Hale, Owen Castellanos |

## Context

Penetration test sampling across a 482-store estate is necessarily small — the first engagement covered 14 stores, under 3%. How those stores are chosen determines what the test can find.

The default is a representative sample of the standard build: sites that are well documented, recently refreshed, and typical. It produces a clean, defensible sampling rationale and it tests the architecture as designed.

## Decision

Stratify the sample deliberately, and include a stratum composed of **stores with a recent local network change** — sites where someone had solved a local problem in a way the standard build did not anticipate.

## Rationale

An architecture is only as good as its worst deployment. The standard build was, in fact, correct in its intent; the estate diverged from it. A sample drawn from well-maintained sites would have confirmed the architecture and told Marketa nothing about the estate.

The Ironwood lead put it more bluntly at the readout:

> "If you had given us the standard build and a list of well-maintained sites, we would have passed you, and the fault would still be sitting at thirty-seven stores."

## Consequences

- **SEG-PT-01 was found in the change stratum.** It would almost certainly not have been found otherwise.
- The test **failed**, which is an uncomfortable result to have engineered deliberately, and the right one.
- The re-test used a materially larger sample — **41 stores (8.5%)**, comprising all 37 latent sites plus 4 selected by Ironwood without Marketa's input.
- The principle now governs sampling across the programme: **Marketa proposes strata, the tester selects within them, and at least one stratum targets known messiness.**
- Marketa does not select the sample. That remains the assessor's or tester's prerogative — the entity's contribution is ensuring the population offered is not quietly pre-cleaned.

## Alternatives considered

| Option | Why rejected |
|---|---|
| Representative sample of the standard build | Tests the documentation. The estate is what gets attacked |
| Let the tester choose blind with no strata | Acceptable, but a 3% blind sample of 482 near-identical sites is unlikely to land on the anomalies |
| Test every store | Not affordable, and not necessary once drift detection covers the full estate continuously |
