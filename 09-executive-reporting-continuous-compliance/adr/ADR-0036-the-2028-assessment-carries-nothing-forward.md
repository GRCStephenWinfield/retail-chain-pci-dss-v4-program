# ADR-0036 — The 2028 Assessment Is Planned as Though Nothing Carries Forward

| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2027-06-16 |
| Deciders | Owen Castellanos, Naomi Bhatt (CISO), Grant Whitfield (QSA, consulted) |
| Phase | 09 — Executive Reporting &amp; Continuous Compliance |
| Classification | Confidential — Cardholder Data Environment // Illustrative Portfolio Sample |

## Context

Sable Ridge Assurance rotates off the Marketa engagement in 2028. The temptation at that point is obvious and expensive: to treat the 2026 report as a starting position, hand the new assessor the previous year's arguments, and expect the same conclusions.

Almost nothing in the 2026 report survives that assumption.

## Decision

**The 2028 assessment is planned as though nothing carries forward.**

| What resets | Why |
|---|---|
| **CTP-1 to CTP-12** | They are **Sable Ridge's** derived testing procedures for the 8.3.9 customized approach. The next assessor derives its own, and may derive harder ones |
| **All 18 sampling rationales** | Standardisation is demonstrated to the assessor who is doing the sampling, not to the one who did it last year |
| **All 3 compensating controls** | A worksheet is validated against a stated constraint, a stated population and a stated control set, and every one of those can move |
| **All 4 Not Applicable determinations** | And the three refused in 2026 may be refused again — or the four accepted may not be |
| **The scope boundary itself** | 604 → 71 rests on P2PE, tokenization and DTMF masking, each of which is a third party's validation status rather than a Marketa control |

## Consequences

The 2026 assessment cost **51 assessor hours on one requirement** because Marketa chose the customized approach at 8.3.9 — against an estimate of 46, and the variance is recorded because this is the budget line it informs. **In 2028 that 51 hours is spent again, from zero, by somebody who has never seen the argument.**

That makes the retain-or-abandon decision on the customized approach a live one, and **09.11 §6 sets out the arguments both ways without reaching a conclusion**. The decision is deferred to 2027 Q4 under **DEC-911**, because it belongs to the year it is taken and the next assessor's disposition toward customized approaches is not knowable in June 2027.

The corollary is cheaper and more useful: **the evidence that made 2026 work — 186 of 214 requests answered from artefacts that already existed — is the part that does carry forward**, provided the artefacts keep being produced by a business-as-usual function with a third of the programme's resourcing. That is what **09.08** and the monthly control attestation exist for.

## Related

- **09.11** — the preparation plan and the retain-or-abandon arguments
- **08.06** — the customized approach as assessed, and the 51-hour actual
- **08.02** — the eighteen sampling populations and their rationales
- **ADR-0033** — the closure that makes business as usual answerable for all of it
