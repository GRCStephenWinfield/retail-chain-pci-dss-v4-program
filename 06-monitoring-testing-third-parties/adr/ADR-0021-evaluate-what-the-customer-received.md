# ADR-0021 — Evaluate Payment Pages as Received by the Consumer Browser, From Outside the Network

| Field | Value |
|---|---|
| Status | **Accepted** |
| Date | 2026-08-13 |
| Deciders | Sonia Rendell, Naomi Bhatt (CISO) |

## Context

**11.6.1** obliges a change- and tamper-detection mechanism that alerts on unauthorised modification to the **HTTP headers and the contents of payment pages as received by the consumer browser**.

Two implementations were available. The cheaper one compares the deployed bundle against source control from inside the estate, on a schedule. The other stands up synthetic browser agents that fetch the live payment pages **from outside Marketa's network** and compare what comes back.

## Decision

Evaluate **what the customer received**, from outside the network, across **192 permutations** of geography, device class and network path.

## Rationale

Rendell's argument settled it:

> "Comparing the deployed bundle against source control tells you what we published. It does not tell you what the customer received. Those are the same thing right up until the moment they are not, and the moment they are not is the only moment this control exists for."

Everything that makes digital skimming hard to catch lives in the gap between those two statements: a compromised CDN edge, a third-party origin serving different content to different geographies, an injection conditioned on device class or on the absence of developer tooling. An internal comparison is blind to every one of them, and the requirement's own wording — *as received by the consumer browser* — points directly at the gap.

The permutations follow from the same reasoning. A skimmer that serves clean content to one datacentre IP range and malicious content to residential mobile users is defeated by one fetch and caught by the right several.

## Consequences

- The mechanism runs continuously with **alerting inside 24 hours**, against a requirement floor of weekly (TRA-11.6.1). The floor is a floor; the window between evaluations is the window a skimmer operates in.
- The baseline is reconciled **monthly to the 6.4.3 inventory**. A divergence is a finding in **both** directions: an unexpected script on the page, or an inventoried script the page no longer serves.
- False positives arrive from legitimate vendor releases, and triage capacity is funded rather than wished for.
- It closes the specific gap 6.4.3 cannot: a vendor released a new version of an authorised script **before** the contractual notification arrived. 6.4.3 alone would have permitted it — the script was authorised and its integrity method was a contract. 11.6.1 saw the change.

## Alternatives considered

| Option | Why rejected |
|---|---|
| Compare deployed bundle to source control internally | Tests what Marketa published, not what the customer received. Blind to CDN and third-party-origin compromise |
| Weekly evaluation at the requirement floor | Seven days is a long time to be running a skimmer on a payment page |
| Rely on Content Security Policy reporting alone | CSP reports violations of a policy. It does not detect modification of content the policy permits |
