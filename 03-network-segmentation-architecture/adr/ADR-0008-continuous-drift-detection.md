# ADR-0008 — Replace Periodic Configuration Review with Continuous Drift Detection

| Field | Value |
|---|---|
| Status | **Accepted** |
| Date | 2026-06-15 |
| Deciders | Trevor Kim, Naomi Bhatt (CISO), Marcus Hale |

## Context

SEG-PT-01 was caused by a trunk port template in build image SB-4.1 that lost its allowed-VLAN list in November 2024. The fault sat in the estate for **eighteen months**, latent at 37 stores, through:

- a store build process that deployed it faithfully to every new and refreshed site;
- periodic configuration reviews that examined the **intended** configuration;
- a March 2026 design review that concluded segmentation was verified.

None of those found it. A penetration tester found it in nineteen minutes.

The failure mode is specific and worth naming: periodic review compares the documented standard against itself. It answers *is the standard correct?* — not *is the standard what is running, at all 482 sites, today?*

## Decision

Introduce a **continuous drift-detection control** across the store estate, expressed as six machine-evaluated assertions (**DA-1 to DA-6**) about the deployed configuration, evaluated on every store every day, with divergence classified as **segmentation-determining** or **hygiene**.

Periodic review under **1.2.7** continues — its cadence is fixed by the standard — but it is no longer the primary control for this class of failure.

## Rationale

The fault was a difference between intended and deployed state. Only a control that reads **deployed** state can detect it, and only one that runs continuously can detect it before the next annual test.

The classification into segmentation-determining and hygiene matters more than it looks. Without it, either the control produces enough noise that real divergence is lost, or the exit criterion for R-14 becomes unachievable because some store somewhere always has a cosmetic difference.

## Consequences

- **14,942 store-days** observed in the first 31 days; **11 divergences at 9 stores**; **2 segmentation-determining** — store 1183 (a contractor's stock switch image, found *during* re-test fieldwork) and store 0629 (guest SSID moved to local switching).
- Neither produced a live path, because the counterpart precondition was absent. Both nevertheless **reset the R-14 exit clock to 2026-07-03**, earliest exit 2026-09-30.
- **ADR-0006 was amended** to rest the store estate classification on this control operating, rather than on a one-off test result.
- The control found two divergences in a month that periodic review would have surfaced in six. That ratio is the argument.

## Alternatives considered

| Option | Why rejected |
|---|---|
| Increase periodic review frequency to monthly | Still compares intended state against itself, twelve times a year instead of two |
| Rely on the annual 11.4.5 penetration test | An annual test means a fault can live for up to a year. This one lived eighteen months |
| Configuration management enforcement without detection | Enforcement assumes the management plane is intact. Store 1183's divergence arrived on a contractor's switch that the management plane never built |
