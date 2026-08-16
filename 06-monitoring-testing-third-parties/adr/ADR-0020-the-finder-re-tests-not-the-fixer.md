# ADR-0020 — The Finder Re-Tests, Not the Fixer

| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-09-25 |
| Deciders | Naomi Bhatt (CISO), Marcus Hale, Trevor Kim |
| Phase | 06 — Monitoring, Testing &amp; Third Parties |
| Classification | Confidential — Cardholder Data Environment // Illustrative Portfolio Sample |

## Context

**11.4.4** obliges an entity to correct penetration test findings and to **repeat the testing to verify the correction**. It does not say who repeats it, and the cheap reading is that the entity may verify its own remediation and record the finding as closed.

That reading is available and it is how a great many findings get closed. It is also the reading under which the party with the strongest interest in a clean result is the party grading the result, on a control it has just built, against a test it did not design.

The question became live in September 2026, when the application penetration test produced **eleven findings including a Critical** — an unauthenticated administrative interface on the chargeback application, a CDE component. Ironwood's re-test would cost time and money on findings Marketa's own engineers could demonstrate were fixed.

## Decision

**Remediation of a penetration test finding is verified by the party that found it, not by the party that fixed it.**

Marketa may — and does — verify its own fix internally before offering it for re-test. **That verification does not close the finding.** A finding closes on the tester's written re-test result and on nothing else.

## Consequences

**All nineteen programme findings across both engagements were corrected and re-tested by the tester that found them.** Eighteen closed at first re-test; **one closed only at the second**, which is the entire justification for the decision: an internally-verified close would have recorded that finding as remediated when it was not.

The cost is real and is recorded in the budget: penetration testing came in at **$178,500 against a $165,000 line**, and the overrun is the segmentation re-test plus the second-round application re-tests. **The decision buys a number that means something and is charged for it.**

There is a second cost that is harder to price. A tester re-testing its own findings is a tester still engaged, still holding an access route into the estate, weeks after the engagement was supposed to end. The scoping and access-revocation dates in **PTM-1 to PTM-10** exist because this decision extends every engagement's tail.

And the discipline has a limit worth stating: **the tester verifies that the specific finding is corrected. It does not verify that the correction is durable, that it was applied everywhere the condition existed, or that the fix introduced nothing.** Those are Marketa's questions and Marketa answers them under change control, which is why **SIG-4 was amended after APP-PT-01** so that a platform minor-version upgrade triggers a listener-and-authentication-path review.

## Related

- **06.08 §6.2** — the decision in the document that produced it, and the Critical it was taken against
- **06.11** — the consolidated 19-finding programme position, 18 closed at first re-test and 1 at second
- **DEC-608** — forensic enumeration of prior access rather than assuming none occurred; the same instinct applied to the same finding
- **ADR-0022** — silence is a defect, not a success
- **11.4.4** — the requirement whose "repeat the testing" this decision reads strictly
