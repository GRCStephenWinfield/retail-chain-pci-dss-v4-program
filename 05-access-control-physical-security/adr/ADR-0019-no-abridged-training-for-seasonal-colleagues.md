# ADR-0019 — No Abridged Control Training for Seasonal Colleagues

| Field | Value |
|---|---|
| Status | **Accepted** |
| Date | 2026-10-01 |
| Deciders | Adaeze Nwosu, Naomi Bhatt (CISO), HR Director |

## Context

Up to **6,800 seasonal colleagues** join between October and January — during the change freeze, during peak transaction volume, and for an average tenure of under four months. They work the same lanes as permanent colleagues.

Onboarding time is the scarcest resource in the business during that window, and the standard proposal is an abridged security module: the essentials, the things most likely to matter, delivered in a fraction of the time.

## Decision

**Seasonal colleagues receive the full 9.5.1.3 and 12.6.3 training.** No abridged version exists.

## Rationale

The argument for abridgement assumes the risk is proportional to tenure. It is not. **A colleague who joined six weeks ago is standing at the same terminal as one who has been here nine years**, during the quarter when card volume peaks and when an attacker would most prefer to install an overlay.

There is a second reason, which is about the permanent population. If an abridged version exists, it becomes the version that gets used whenever anyone is busy — and the busiest period is the one where the full version matters most. Not building it is a design decision about the permanent programme, not only about seasonal colleagues.

## Consequences

- Completion: **98.1% permanent, 95.7% seasonal, 97.6% blended** — above the charter's ≥95% bar, and the seasonal figure is reported separately rather than hidden inside the blend.
- Onboarding time for seasonal colleagues is materially longer, and this cost was accepted at the October review with HR present.
- The training must be delivered again every season; there is no carry-over from a colleague who worked the previous year unless they return within the retention window.
- The blended figure is deliberately kept distinct from the 12.6.3 enterprise figure so that neither flatters the other.

## Alternatives considered

| Option | Why rejected |
|---|---|
| Abridged module covering only POI inspection | Creates the shortcut that will be used by everyone under time pressure |
| Defer full training to week four of employment | The first four weeks are the ones inside the peak. Deferral covers the period after the risk |
| Exclude seasonal colleagues from POI inspection duty | Would require permanent colleagues to inspect every terminal in the busiest quarter, which is when they have least time. It also tells 6,800 people that a control does not apply to them |
