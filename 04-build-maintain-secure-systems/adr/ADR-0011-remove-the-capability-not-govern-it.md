# ADR-0011 — Remove the Tag Manager's Publication Path Rather Than Govern Its Use

| Field | Value |
|---|---|
| Status | **Accepted** |
| Date | 2026-03-11 |
| Deciders | Sonia Rendell, Naomi Bhatt (CISO), with the Head of Digital Marketing consulted |

## Context

The first 6.4.3 inventory found **three unauthorised scripts** on payment templates. All three had arrived through the marketing tag manager, which nineteen accounts could use to publish to any template on the site, including the six payment templates.

Nothing had been compromised. The scripts were ordinary analytics pixels. The tag manager was **working exactly as designed**.

The obvious response was to govern the capability: require security approval for payment-template tags, add an alert, review the container quarterly.

## Decision

**Remove payment-template publication from the tag console entirely.** Publication accounts reduce from 19 to 6, and none of the remaining six can reach a payment template. In exchange, Marketing receives a **five-business-day approval SLA** through the engineering deployment path.

## Rationale

Governing the capability leaves the capability. Every governance control over it — approval workflows, alerts, quarterly reviews — is a control that can be bypassed by someone in a hurry during peak trading, and peak trading is precisely when marketing pressure is highest and change freezes make the official path slowest.

Removing it changes the question from *did someone follow the process?* to *does the path exist?* The second question has an answer that does not depend on anyone's behaviour on a bad day.

The SLA is not a courtesy; it is load-bearing. A control that makes the business wait indefinitely gets routed around, and the route will be less visible than the one just closed.

## Consequences

- **R-34 (payment-page script inventory drift) is the one clear reduction in Phase 04**, precisely because a capability that no longer exists does not need an operating history to be trusted.
- Eleven tag submissions followed under the SLA: **seven approved, four refused.** The refusals are the evidence the review is real.
- Two of the three removed scripts were re-justified and **conditionally re-authorised** on 2026-05-19. The container was not reinstated. Removal is not the only correct answer — it was the correct answer for the container.
- Marketing lost a self-service capability. That cost is real and was accepted at the March review with the Head of Digital Marketing present.

## Alternatives considered

| Option | Why rejected |
|---|---|
| Approval workflow inside the tag console | The console's own controls are configured by the same people who use it |
| Quarterly container review | Detects at up to 90 days. A skimming script needs hours |
| Alert on payment-template publication | Detective, and it fires after the script is already executing in a customer's browser |
| Remove the container and offer nothing in return | Guarantees an informal workaround. The SLA is what makes the removal survivable |
