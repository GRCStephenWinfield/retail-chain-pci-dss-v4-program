# ADR-0024 — Monitoring Tiered Above the Annual Floor

| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-07-08 |
| Deciders | Owen Castellanos, Elena Marchetti (VP Payment Operations), Naomi Bhatt (CISO) |
| Phase | 06 — Monitoring, Testing &amp; Third Parties |
| Classification | Confidential — Cardholder Data Environment // Illustrative Portfolio Sample |

## Context

**12.8.4** obliges a programme to monitor TPSPs' PCI DSS compliance status **at least once every 12 months**. It states a fixed minimum and delegates nothing — there is no entity-defined frequency here, and so no targeted risk analysis is required.

The floor is also, on its own, a window. Three of Marketa's six providers hold published validations that support scope reductions covering **533 of the 604** systems originally believed in scope. A withdrawn listing, a lapsed AOC or a narrowed scope statement suspends the reduction that depends on it, and an annual programme anchored to one review date can leave that condition unnoticed for eleven months. **R-10** exists precisely because the window is real.

Two further facts made a single uniform cadence unattractive in both directions.

| Fact | Consequence |
|---|---|
| Validation evidence for the three MT-1 providers is **independently publishable** — brand registries and the Council's P2PE list | The status can be verified without the provider's cooperation, at any frequency, at effectively zero cost. **This is what makes monthly verification affordable** |
| **Two providers hold no PCI validation at all** | There is no external status to check. A status-check instrument applied to them produces a green indicator that measures nothing |
| AOC anniversaries fall in **March, May, September, February and June** | A single annual review date leaves some providers reviewed fifteen months after their last evidence |
| A status check costs minutes; a full annual review costs days | The two activities are different in kind, and one cadence forces the same treatment on both |

Marketa therefore performed **TRA-12.8.4 electively** — an analysis it was not obliged to produce, on **2026-06-30**, approved **2026-07-08** — and considered four candidates.

| Candidate | Decision |
|---|---|
| Annual review only, the requirement's floor | **Rejected as the whole programme; retained as its backbone** |
| Quarterly full review of all six | **Rejected.** A full review performed quarterly across six providers becomes form-filling, and the annual review's depth is what actually finds things |
| Continuous automated status verification for all six | **Rejected as uniform; adopted for the three where it works** |
| Tiered, with the annual review retained in full for all six | **Adopted** |

## Decision

**TPSP monitoring is tiered by what the provider's validation actually holds up, above the 12-month floor, and the annual review is never displaced by the tier.** A provider whose published validation supports a Marketa scope reduction is verified monthly; a provider delivering a live security function with no validation is reviewed quarterly on performance; a provider whose service is evidenced per transaction by Marketa's own records is reviewed annually with event triggers.

| Tier | Providers | What happens, and how often |
|---|---|---|
| **MT-1** | TPSP-01 Truvance · TPSP-02 Cadence · TPSP-03 Verition | **Monthly** verification against the authoritative published source, with a dated capture; a **60-day pre-expiry watch** on every AOC and attestation date; plus the full annual review on the provider's own anniversary |
| **MT-2** | TPSP-04 Northbridge | **Quarterly** review of service performance against the agreed use cases, including the unannounced 03:00 handover test, and of the responsibility matrix; plus the annual review |
| **MT-3** | TPSP-05 Halberd · TPSP-06 Ashburn | **Per-event evidence** — a certificate reconciled against the released inventory per collection; an annual site inspection with dated photographs; plus the full annual review; plus event triggers |
| **All** | All six | **Six event triggers** force an out-of-cycle review, and **the annual 12.8.4 review is never skipped in any tier** |

The six triggers are the part of the determination that does not depend on a cadence at all.

| Trigger | Effect |
|---|---|
| A **validation status change**, detected or notified | Immediate full review; scope-delta review under 12.5.2; **the dependent scope reduction is suspended, not deleted** |
| A change to the **AOC's scope statement**, even where the status is unchanged | Full review. **This trigger fired in the period** |
| A notified or discovered **compromise** at a provider | Immediate; Cardinal notified under obligation **C7** if material; Marketa's 12.10 process runs regardless of whose environment it was |
| A material **subservice organisation change** | Full review and scope-delta review |
| A **service change** altering what the provider does for Marketa | Matrix re-confirmation before the change takes effect |
| **A new provider classified as a TPSP** | The engagement process; where the relationship pre-dates classification, a due-diligence-equivalent review within 60 days |

## Consequences

**Three tiers cost more to operate and more to explain than one cadence.** That is the price, and it was named as the argument against the option that was adopted rather than discovered later. Every tier assignment must be justified, re-tested annually, and defended to an assessor who is entitled to ask why the requirement's own number was not good enough.

**Recording it as a decision is the point.** An entity that does more than a requirement demands should record why, so that a successor does not quietly revert to the floor on the entirely reasonable ground that the floor is what the standard says. Without this record, the tiering is an unexplained operational habit with a twelve-month justification available to anyone who wants to stop doing it.

**Monitoring frequency buys currency, not depth.** A monthly registry check tells Marketa that a provider's status has not changed. It tells Marketa nothing new about the provider's environment, and **Marketa cannot audit a Level 1 provider**. The tiering exists so that the annual review — where the AOC's scope statement is read, the matrix is reconciled and the relationship owner is questioned — stays deep rather than becoming the only thing that happens.

**The monthly limb reported a null result, and that is what it is for.** **36 MT-1 verifications** across twelve cycles and three providers detected **no status change**. The value of the control is that it would have detected one, and the phase reports the null rather than presenting attendance as assurance.

**The trigger set is where the year's actual finding came from.** Truvance's AOC scope statement changed at the **2026-03-31** re-issue, describing the hosted checkout service Marketa consumes under a different product designation. Status was unchanged and validated; the question was whether the service Marketa uses was still inside the boundary. Raised **2026-04-14** at the annual review, confirmed in writing **2026-04-29** as a renaming with the service and locations unchanged. **The trigger fired, the answer was benign, and the review is the reason the question was asked at all.**

**R-10 moves on this control; R-09 moves on likelihood only.** The validation-lapse risk falls from **Moderate 12 to Low 6** on the strength of monthly verification, the pre-expiry watch and a suspension rule written in advance. Provider concentration falls from **High 15 to Moderate 10** — likelihood 3 → 2 — with **impact held at 5**, because no monitoring cadence reduces the consequence of a Truvance compromise.

**The analysis is now a recurring obligation Marketa took on voluntarily.** TRA-12.8.4 is reviewed at least every twelve months, next due **2027-07-08**, and one of its questions is unforgiving: has the monthly verification ever detected a change before the provider notified it? That is the measure of whether MT-1 is doing anything, and after a year the answer is still no.

**Contractual notification is a claim on somebody else's diligence, and it failed once.** The notification duties in the security schedules are real and they are not a control Marketa operates. In the period one arrived four days late — the vendor script change behind **SCR-29**. The tiering exists partly because the alternative to checking is trusting a counterparty's process, and the counterparty's process has a measured failure rate greater than zero.

### What this decision does not claim

| Claim | Position |
|---|---|
| That monthly verification is a substitute for assurance | It buys **currency, not depth**. Nothing in this determination reaches inside a provider's environment |
| That the tiers are permanent | A provider moves between tiers when what its assurance consists of changes. Tier movement is an explicit question at the annual review |
| That a null result is a weak result | **36 verifications and no status change** is the expected output of a working control. The value is that it would have detected one |
| That the annual review is a formality now | It is the opposite. The tiering exists so that the annual review can stay deep, and it is where the year's only real finding came from |
| That doing more than the requirement demands makes the requirement met more strongly | 12.8.4 is met by the annual review. The tiers treat **R-10**, which is a risk position, not a compliance position |

## Related

- **ADR-0023** — provider evidence is graded; the companion decision from the same document
- **01.09 §7** — the suspension rule: a lapse suspends a scope reduction, it does not delete it
- **01.11** — the compliance calendar and the recurring obligation set this programme executes
- **06.10 §5** — TRA-12.8.4 in full, its six elements, the tier determination and what the monitoring found
- **06.10 §8** — why frequency cannot substitute for assurance Marketa is unable to obtain
- **DEC-610** — the decision log entry recording the elective analysis and its quarterly status check
