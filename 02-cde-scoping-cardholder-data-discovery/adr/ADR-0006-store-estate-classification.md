# ADR-0006 — Classify the Store Estate in the Connected-To Band Without Enumerating 482 Servers as Assessed Components

| Field | Value |
|---|---|
| Status | **Accepted** |
| Date | 2026-02-14 |
| Deciders | Naomi Bhatt (CISO), Trevor Kim, Owen Castellanos; reviewed with the QSA 2026-03-27 (QC-02) |

## Context

P2PE removes the store card-data path from the CDE: the POI encrypts at swipe or tap and the store network carries only ciphertext. The 482 store back-office servers therefore do not store, process or transmit account data.

They are not, however, irrelevant. They sit behind a segmentation boundary from the corporate environment, they are managed by shared administrative services, and if that boundary failed they would provide a path toward the CDE.

Two defensible positions exist, and both have a serious problem. Enumerating all 482 servers as assessed components inflates the population from 71 to 553 and makes the assessment unaffordable in evidence terms for systems that hold nothing. Declaring them simply out of scope removes 482 systems from any PCI governance at all, on the strength of a boundary that has not yet been tested.

## Decision

The store estate is classified in the **connected-to band for governance purposes** — segmentation validated, POI obligations under 9.5.1 retained, configuration standards applied — while the components **enumerated** among the 63 are the **segmentation controls that keep the estate out** and the **shared administrative services that cross the boundary**.

The 482 servers are governed. They are not individually assessed components.

## Rationale

The assessed population exists to define what a QSA samples. Sampling 482 near-identical store servers that hold no account data tests the same control 482 times and tells the assessor nothing the segmentation test does not tell them better.

What genuinely determines whether those servers matter is **the boundary**, and the boundary is enumerated: nine segmentation enforcement components sit in the 63 specifically so they are assessed.

## Consequences

- The assessed population is **71**, and the reasoning for the exclusion of 482 systems is written down rather than implied.
- **The position is explicitly contingent.** If the segmentation penetration test fails, the boundary is not effective and this classification collapses — the store estate re-enters scope. The QSA accepted the position on exactly that basis, noting it "depends entirely on the May test."
- 9.5.1 device obligations across 1,914 terminals are retained in full and are unaffected by this decision.
- The store estate remains subject to configuration standards and monitoring under the connected-to band.

## Alternatives considered

| Option | Why rejected |
|---|---|
| Enumerate all 482 as assessed components | Inflates the population to 553; multiplies evidence cost without improving assurance; makes the annual assessment impractical |
| Declare the store estate wholly out of scope | Removes 482 systems from governance on the strength of an untested boundary. Indefensible before the May test, and unwise after it |
| Sample a representative subset into the 71 | Attractive, but sampling is the assessor's prerogative, not the entity's. Pre-selecting the sample is the thing the engagement protocol forbids |
