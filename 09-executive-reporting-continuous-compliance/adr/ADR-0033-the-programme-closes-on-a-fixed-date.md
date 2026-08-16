# ADR-0033 — The Programme Closes on a Fixed Date, With a Named Owner for Every Obligation

| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2027-06-16 |
| Deciders | Raymond Voss (CFO), Naomi Bhatt (CISO), Owen Castellanos |
| Phase | 09 — Executive Reporting &amp; Continuous Compliance |
| Classification | Confidential — Cardholder Data Environment // Illustrative Portfolio Sample |

## Context

A compliance programme has a natural end — the attestation is filed, the findings are closed, the register stops moving quickly — and no natural closure. The obligations it created are permanent: forty-seven dated items recur every year, fourteen targeted risk analyses need review, three compensating controls need re-arguing, and an assessment happens whether or not anybody has prepared for it.

The failure mode is not that a programme ends badly. It is that it never ends. Meetings thin out, the manager is reassigned, the tracker stops being updated, and eighteen months later nobody can say who owns the annual scope confirmation.

## Decision

**The programme closes on 2027-06-30, on a fixed date, and every recurring obligation is assigned a named business-as-usual owner before that date.** No obligation transfers to a role, a team or a function — each transfers to a person. Nothing is left with the programme, because after 2027-06-30 there is no programme to leave it with.

## Consequences

Three items could not be finished and are carried explicitly rather than quietly: **BAU-01** (the contractual commitment Truvance declined), **BAU-02** (Route B, replacement of the vendor-locked appliance class), **BAU-03** (the fourth detection rule, validated three-quarters of the way). Naming them costs the closure report its tidiness and buys the handover its usefulness.

The uncomfortable consequence is the resourcing. The programme ran at **11.9 FTE average** and business as usual is **4.2**. Some of that is real — build work does not recur. Some of it is not, and **09.08 §6** names the obligations where the honest answer is that less will be done. A transition document that shows only the savings is a business case rather than a handover.

## Related

- **09.08** — the transition, the ownership map and the resourcing list
- **09.09** — the 47 dated obligations
- **ADR-0036** — the 2028 assessment is planned as though nothing carries forward
- `governance/bau-transition-record.md`
