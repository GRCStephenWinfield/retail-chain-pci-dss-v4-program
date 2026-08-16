# ADR-0034 — Every Assessor Observation Is Adopted or Declined in Writing

| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2027-04-22 |
| Deciders | Owen Castellanos, Naomi Bhatt (CISO), Rosa Delgado (Internal Audit) |
| Phase | 09 — Executive Reporting &amp; Continuous Compliance |
| Classification | Confidential — Cardholder Data Environment // Illustrative Portfolio Sample |

## Context

The 2026 assessment raised **seventeen observations that affected no disposition**. They are not findings. Nobody is contractually obliged to act on any of them, they do not appear in the Report on Compliance's dispositions or in the Attestation's Part 4, and an entity that ignored all seventeen would still hold a compliant attestation.

That is precisely why they are the easiest artefact an assessment produces to lose. A finding has a date and a plan. An observation has a paragraph in somebody's notes.

## Decision

**Every observation is adopted or declined in writing, with a named owner and a date.** "Adopted with amendment" is a permitted third outcome and must state what was amended and why. **No observation may be left unanswered**, and a decline must carry a reason a reader can disagree with.

Outcome: **11 adopted · 3 adopted with amendment · 3 declined.**

## Consequences

The three declines are the point. One was declined because the control it proposed **duplicates a control already obliged elsewhere**, and a second instrument measuring the same thing produces two numbers and no more assurance. One was declined because it would have **raised an escalation threshold** — refused on the same reasoning as ADR-0018 in Phase 05: raising a threshold because the first findings were benign is how the next one gets missed. One was declined because it proposed **a metric with no owner**, and this programme's own lesson is that an unowned metric is a number nobody has to explain.

Each decline carries a **reversal condition**, so a reader who disagrees knows what would change the answer.

The cost of the alternative is worth stating: **an observation that reappears next year as a finding is an observation somebody filed.** The 2028 assessor will not have Sable Ridge's notes, but Sable Ridge's successor will look at the same things, and the seventeen are the best available list of where.

## Related

- **09.05** — all seventeen, with owners, dispositions and dates
- **ADR-0028** (Phase 07) — a lesson changes the plan or is recorded as declined; this is the same rule applied to somebody else's lessons
- **ADR-0018** (Phase 05) — the reasoning behind the second decline
