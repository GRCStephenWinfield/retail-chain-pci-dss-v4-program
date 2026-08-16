# ADR-0014 — The Conservative Reading of Single-Factor Access

| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-04-15 |
| Deciders | Trevor Kim (Director of Infrastructure &amp; Network), Naomi Bhatt (CISO), Owen Castellanos |
| Phase | 05 — Access Control &amp; Physical Security |
| Classification | Confidential — Cardholder Data Environment // Illustrative Portfolio Sample |

## Context

**8.3.9** applies where a password or passphrase is used **as the only authentication factor**. Where it applies, it obliges either a change at least every 90 days, or dynamic analysis of the account's security posture with real-time access decisions.

Whether it applied to Marketa at all turned on a reading, not on a fact.

A residual population exists across the estate where a password is the sole credential accepted **at the component**. It is small, enumerable and stable.

| Class | Components | Accounts | Individuals | Why a password is the sole factor at the component |
|---|---|---|---|---|
| **P1** | The **9 CON-03 vendor-locked POS back-office appliances** | **36** | 4 | Vendor firmware supports local password authentication only; the support contract prohibits modification |
| **P2** | CT-46, CT-47, CT-49, CT-58, CT-59, CT-60 local fallback accounts | **12** | 2 per component class | Accounts of last resort. **By definition they cannot depend on the central authentication path**, and so cannot depend on the MFA service behind it |
| **P3** | CT-39 storage array management local realm | **4** | 4 | The running firmware release does not support external authentication integration |
| **P4** | Vendor support tiers on CT-33 and CT-54 | **6** | 6 | The provider's support-tier login sits outside Marketa's federation and offers no MFA |
| **P5** | CT-38 hypervisor management local realm | **3** | 3 | Local realm retained for cluster recovery; the SSO realm is the normal path |
| **Total** | **19 of 71 components** | **61** | **17** | |

There was a legitimate argument that none of these accounts is single-factor at all. Every one of the 61 is reached through a **CT-11** brokered session or a named management subnet, and the human who reaches it has already presented two factors at the broker. Under that reading the *access path* is multi-factor, 8.3.9's applicability condition fails for all **217** in-scope accounts, and Marketa needs no customized approach anywhere in the programme.

That reading was available, arguable, and cheaper by an order of magnitude. It was also unfalsifiable, because nothing in it had been tested.

The consequence of taking it would not have been a lighter control. It would have been a paragraph — that MFA at the broker satisfies 8.3.9 estate-wide — followed by no analysis at all of what protects 61 accounts on which a password is the last thing standing.

## Decision

**Where a password is the only credential the component itself accepts, treat the access as single-factor, regardless of what the access path in front of it enforces.** Marketa credits a control at the point where the control actually stands, and accordingly elects the **customized approach at 8.3.9** for the 61 accounts on 19 components rather than arguing the requirement away.

The Steering Committee had already set the bar for using the customized approach anywhere in the programme, and this election had to clear it before the decision could be taken.

| Test the proposal had to pass | 8.3.9's answer |
|---|---|
| Does the requirement offer a Customized Approach Objective? | **Yes.** Where none is stated, the customized approach is unavailable |
| Is there **evidence, not opinion**, that the defined approach degrades the outcome? | **Yes.** Measured on this population under 90-day rotation and after its suspension |
| Has the second defined-approach option been genuinely examined and found not to fit? | **Yes.** For **51 of the 61** the component authenticates locally with no external decision point |
| Is the population bounded, enumerable and stable? | **Yes.** 61 accounts, 19 components, 17 individuals, reconciled monthly |
| Is the entity prepared to pay the recurring assessment cost, every year? | **Yes**, quantified and approved by the CFO |
| Is the entity prepared for there to be **no fallback** if the approach fails at assessment? | **Yes** |

## Consequences

**Marketa took on a customized approach it could have avoided.** That is the cost, it was quantified before the decision, and the CFO approved it. The customized approach is the heavier option, not the lighter one: a full targeted risk analysis, a controls matrix, QSA-derived testing procedures **CTP-1 to CTP-12** executed at every fieldwork, and a recurring annual assessment burden that does not diminish with familiarity.

**There is no fallback.** A customized approach cannot be combined with a compensating control for the same requirement. If **8.3.9** fails at assessment, the requirement fails, and the AOC records it. The programme accepted that before electing the approach rather than discovering it afterwards.

**The broker argument was tested rather than asserted, and it half-held.** That is the finding that decided the matter.

| Argument | Position |
|---|---|
| The broker enforces MFA, so the access is multi-factor | **Rejected as the basis for a compliance claim.** The credential on the component is protected by a password and nothing else |
| No route exists that the broker does not mediate | **True for 6 of the 19 components, and proved by test** — that is how exception **MFA-EX-02** was closed. **Not proved for the other 13**, and for the P2 class the entire purpose of the account is to work when the broker does not |
| The conservative reading is what an adversary uses | The decisive point. **A threat model does not care which control the entity credits** |

**One argument survived and one did not, and the programme wrote down which.** Six components can evidence path exclusivity; thirteen cannot. An entity that had taken the broad reading would have recorded a single sentence covering all nineteen and would never have learned that the sentence was true of six of them.

**The evidence for the customized approach was measured on this population, not asserted.** Marketa ran 90-day rotation across these accounts until 2025 and audited what it produced, which is why the analysis in 05.06 is a comparison rather than an opinion.

| Measure | Under 90-day rotation, 2024–2025 | After rotation was suspended, 2026 |
|---|---|---|
| Changes differing from their predecessor only by an increment, a case change or a single substitution | **71%** on the P1 and P2 populations | No scheduled changes occur |
| Mean measured guessing resistance against a rule-aware attacker | ≈ **34 bits** | ≈ **62 bits** |
| Credentials found in a known-breached corpus at audit | **4 of 61** | **0 of 61** |
| Credentials found written down at physical inspection | 9 instances across 4 engineers | 1 instance |

**This decision is why 05.06 exists at all.** Without it there is no residual population, no targeted risk analysis, no controls matrix and no assessor-derived testing procedures — and no record anywhere of what protects the accounts a password protects.

**The bar was set high enough to refuse other candidates.** Two further uses of the customized approach were proposed during the programme — one for **8.3.6**'s character minimum on an appliance population, one for **10.6.1** time synchronisation across the store estate — and **both were refused**, because in each case the defined approach was inconvenient rather than counterproductive. Inconvenience is not the trigger, and this decision would be worth much less if it had been.

**The population is now a standing reconciliation obligation.** Nineteen components, 61 accounts and 17 individuals are reconciled monthly and re-confirmed at each six-monthly access review. A population that drifts silently is a customized approach whose scope statement has quietly become false, and that is the failure mode this decision creates and must now manage.

**8.4.2 does the work that makes the residual tolerable.** MFA on all **20** access paths bounds who can reach the management surfaces at all. The programme does not claim that bound as satisfying 8.3.9 — that is the whole of this decision — but it is the reason 61 password-only accounts is a residual rather than an exposure.

**The same reading was applied one layer out, and cost real friction.** 8.4.1 and 8.4.2 are literally scoped to the cardholder data environment. Marketa applied MFA to **connected-to components whose compromise would yield CDE access** as well, on the identical logic: a conservative reading costs a few hundred authentications a week, and a narrow one costs an argument at fieldwork with no evidence to settle it. The friction was measured — **41 complaint tickets** in the six weeks after enforcement, falling to 2 once security keys replaced push for the highest-frequency population.

### What this decision does not claim

| Claim | Position |
|---|---|
| That the broker argument is wrong | It is **right for 6 of the 19 components and proved by test**. It is rejected as the *basis for a compliance claim* across the population, not as a description of the estate |
| That the customized approach is a lighter route | It is the heavier one. It exists here because the defined approach demonstrably worked against the outcome on this population, and nowhere else in the programme |
| That 61 accounts is a safe number | It is a **bounded, enumerated and monitored** number. Bounded is not safe; it is assessable |
| That the population is fixed | It is reconciled monthly precisely because it is not. A component that gains external authentication integration leaves the population, and one that loses it joins |
| That the reading would survive a different assessor | It is the conservative reading, so a stricter assessor changes nothing. **A more permissive one would simply not require this document to exist** |

## Related

- **ADR-0004** — no "Not Tested" findings; the same refusal to take the softest available reading
- **ADR-0011** — remove the capability rather than govern it; the pattern **MFA-EX-02** reused to close six of the nineteen
- **05.05 §15.1** — exceptions **MFA-EX-02** and **MFA-EX-03**, and the test that proved path exclusivity where it could be proved
- **05.06 §2.2, §2.3, §3** — the 61 accounts by class, the rejected reading, and the six tests the customized approach proposal had to pass
- **08.06** — execution of **CTP-1 to CTP-12** at fieldwork and the Appendix E artefacts in the ROC
- **DEC-503, DEC-504** — the decision log entries behind the reading and the election
