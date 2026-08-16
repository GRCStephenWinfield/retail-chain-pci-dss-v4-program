# ADR-0013 — A Reviewable Catalogue Beats a Perfect One

| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-04-08 |
| Deciders | Elena Marchetti (VP Payment Operations), Naomi Bhatt (CISO), Owen Castellanos |
| Phase | 05 — Access Control &amp; Physical Security |
| Classification | Confidential — Cardholder Data Environment // Illustrative Portfolio Sample |

## Context

**ACP-4** forbids individual entitlement grants: access to an assessed system component is held through a catalogue role or not at all. The rule is right and it has one predictable failure mode. Every request that does not fit an existing role becomes a *new* role. The catalogue grows to several hundred entries, each defensibly justified at the moment it was created, and the **7.2.4** six-monthly review degenerates into a signature on a spreadsheet nobody read.

That failure mode is invisible in a compliance artefact. A 400-role catalogue and a 24-role catalogue produce the same evidence — a role register, an approver per role, a review record — and only one of them was actually reviewed.

Marketa's first draft, in February 2026, held **41 roles**. Rationalisation through March and early April produced **24**, covering all **71 assessed system components** as **134 role assignments** held by **118 distinct individuals** out of a workforce of about **34,000**.

The measurement that decided the question was taken during the second review cycle rather than argued in advance.

| Measure | Value |
|---|---|
| Roles at first draft, February 2026 | **41** |
| Roles after rationalisation, April 2026 | **24** |
| Time for one reviewer to review one role definition | **11 minutes**, measured in Cycle 2 |
| Reviewer attention required per cycle at 24 roles | ≈ **4.5 hours**, distributed across ten role owners |
| Reviewer attention required per cycle at 41 roles | ≈ **8 hours** each |
| Reviewer attention required at several hundred roles | Not reviewable at all |

The catalogue that resulted is small enough to publish in full, which is itself part of the decision. **RC-01 to RC-24** cover eight CDE roles and sixteen connected-to and governance roles, split **76 privileged** and **58 standard** assignments, with the fourteen individuals authorised to see a full PAN concentrated in three of the twenty-four.

The alternative on the table was finer granularity: split roles until every holder's entitlement matched their work exactly. It produces a better least-privilege statement on paper. It also produces a catalogue whose six-monthly attestation is a formality, and an unreviewed catalogue accumulates residual access faster than a coarse one grants it.

Three options were considered.

| Option | Why rejected or adopted |
|---|---|
| **Fine-grained roles matched to observed entitlement use** | **Rejected.** Produces the best least-privilege statement and the worst review. At the estate's shape it lands somewhere between 150 and 400 roles, and no reviewer attests to that population honestly in a fortnight |
| **Individual grants for the awkward cases, roles for the rest** | **Rejected outright by ACP-4.** An individual grant has no owner, no definition, no renewal and no natural review population. It is the mechanism that produced the 1,247-entitlement estate the programme inherited |
| **A coarse catalogue with explicit over-provisioning, and a mechanism to detect it** | **Adopted** |

## Decision

**Hold the catalogue at a granularity a human being can genuinely review, and accept the over-provisioning that follows.** Where perfect least privilege and a reviewable catalogue conflict, reviewability wins, and the resulting unused entitlement is recorded as a deliberate trade rather than an oversight.

Five rules hold the catalogue at that size, and each exists to close a specific route back to role explosion.

| Rule | What it prevents |
|---|---|
| A role must have **at least three plausible holders** | A role defined for one person is an individual grant wearing a costume |
| A new role requires **the CISO's approval**, not a manager's | The cost of a new role is borne by the review, which is a programme cost rather than a team cost |
| **Roles are additive, not bespoke** — two functions means two roles | Combination roles multiply the catalogue and hide what a holder can actually do |
| **Privileged and standard are separate roles**, never a flag on one role | It is what makes the privileged population countable at **76 of 134** assignments |
| A role at **zero membership across two consecutive cycles is retired** | A catalogue that only grows is a catalogue that stops being read |

## Consequences

**The trade is real and it is stated.** Some individuals carry an entitlement they will never use, because their role includes it for a colleague who will. That is a genuine deviation from least privilege, and the judgement is that a reviewable 24-role model with a little slack produces less residual access than an unreviewable 240-role model with none.

**The rules bite, and the refusals are recorded.** Seven role proposals were refused for having fewer than three plausible holders — a role defined for one person is an individual grant wearing a costume. **Zero combined roles** exist anywhere in the catalogue; sixteen individuals hold exactly two roles and none holds three.

**The review became a control rather than a ritual.** The two executed cycles are the evidence, and the second is the one that matters.

| Cycle | Population reviewed | Revocations | What it shows |
|---|---|---|---|
| **Cycle 1** | 1,247 entitlements inherited from the pre-programme estate | **214** | The size of the problem the catalogue replaced |
| **Cycle 2** | **134** catalogue assignments | **9** | A population small enough that nine revocations is a finding rather than noise |

**Approval decisions became reviewable too.** Of **147** role assignment requests in the period, **134** were approved and remain active, **9** were approved and subsequently revoked at a review, and **4** were refused. Three of the four were refused because a nearby existing role already carried the entitlement — which is the catalogue working as designed — and one because the requester wanted **RC-07** to run a monthly report, and the report was rebuilt as a programmatic extract instead.

**The counter-evidence is defined in advance, and it is not free to collect.** The signal that would overturn this decision is a role whose holders use only part of it. The mechanism that would surface it is the **monthly check-out pattern review** by the role owner, which is an additional recurring obligation the finer-grained alternative would not have needed. In the measurement period it examined **2,847 privileged check-outs** across **76 assignments**, median duration **51 minutes** against a 4-hour default, with **31 extensions** requested and **29** approved. **Nine check-outs carried no change or incident reference**; all nine proved to be legitimate diagnostic work performed without a ticket, and the corrective action was to make the reference field mandatory rather than expected.

**Nothing has been retired yet, and the decision has not been tested by time.** The retirement rule requires two consecutive cycles at zero membership, and the catalogue is four months old at **2026-07-15**. The first annual rationalisation falls due in **April 2027**, and it is the point at which the trade is re-examined rather than re-asserted.

**A reviewer will read 24 roles and see over-provisioning.** That reading is correct and this record exists so that the reading arrives with the reasoning attached, alongside the number that produced it — eleven minutes per role definition — rather than as an unexplained coarseness.

### What this decision does not claim

| Claim | Position |
|---|---|
| That 24 is the correct granularity | It is the granularity that is **reviewable**. Whether it is correct is a question the annual rationalisation answers with holder-level check-out evidence, not one this record settles |
| That the catalogue contains no unused entitlement | It contains some, deliberately. The commitment is that the unused entitlement is **detectable**, not that it is absent |
| That 118 individuals is the complete access population | It is the complete population holding a **catalogue role**. Twenty-seven external individuals hold provider access under 8.2.7, and application and system accounts are governed separately in 05.07 |
| That the coarseness is safe on privileged roles | It is not applied there in the same way. Privileged roles are separated from their standard counterparts precisely so the coarse-catalogue trade never quietly widens a privileged population |
| That the trade has been validated | The catalogue is four months old at 2026-07-15 and no role has been retired. **The evidence that would overturn this decision has not yet had time to accumulate** |

## Related

- **ADR-0011** — remove the capability rather than govern it; the same preference for a control that can be evidenced over one that can only be described
- **05.01 §8** — role explosion, the five counter-measures, and the cost of keeping the model small
- **05.02 §9** — the catalogue this decision produced: 41 → 24, and the eleven-minute measurement
- **05.02 §10** — what the catalogue does not claim, including that 24 is the correct granularity
- **05.03** — the two review cycles, 214 revocations against 1,247 entitlements and then 9 against 134
- **DEC-501** — the decision log entry, 2026-04-08
