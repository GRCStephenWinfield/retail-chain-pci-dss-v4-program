# ADR-0025 — Hold the Risk Until the Control That Treats It Is Complete, and Publish the Untested Surface

| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-10-02 |
| Deciders | Owen Castellanos, Naomi Bhatt (CISO), Marcus Hale |
| Phase | 06 — Monitoring, Testing &amp; Third Parties |
| Classification | Confidential — Cardholder Data Environment // Illustrative Portfolio Sample |

## Context

Phase 06 is the phase that produces numbers other people quote. **488 of 488 facilities** scanned for wireless. **71 of 71** components in every internal scan cycle. **19 of 19** penetration test findings remediated and re-tested. Four ASV scans, four attestations, all transmitted inside the window.

Every one of those figures is accurate, and read together they invite a conclusion none of them supports: that the complement is empty.

Two habits push in the same direction, and the phase had to decide about both at once.

**The first is how limits are reported.** Every testing report in the programme already carried a limitations section. **Nothing collected them.** A reader could see each instrument's limits one at a time and never see the shape of the whole gap — which is the same as not publishing it.

**The second is how a risk register responds to a control that is half built.** **R-01**, an unauthorised script on a payment page, was held at **High 20** through Phase 04 while **6.4.3** was delivered. 6.4.3 authorises each script, binds integrity at deployment and inventories with justification; it cannot detect modification at a third-party origin after deployment. The preventive half was genuinely complete and genuinely delivered, and the pressure to record a reduction against it was real — a phase that ships a major control and reports no movement looks like a phase that achieved nothing.

The alternative to both was ordinary and defensible: keep limitations distributed across eight documents, and move a risk when the workstream that addresses it closes. It is technically complete, practically invisible, and produces a register that improves on schedule.

The two halves are the same discipline pointed at two artefacts.

| Artefact | The comfortable version | What it hides |
|---|---|---|
| A coverage figure | "488 of 488 · 71 of 71 · 19 of 19" | That the complement was never described, so the reader supplies an empty one |
| A risk rating | Reduced when the delivering project closes | That the control treating it is half of a pair, and the other half does not exist yet |

Eight testing instruments operate across the assessed population. They are distinct because they answer different questions from different vantages, and the phase's own instrument-to-finding analysis has two rows where **nothing else in the programme would have found what one instrument found** — which is precisely why a coverage figure cannot be read as a completeness figure.

## Decision

**A risk is held at its rating until the control that treats it is complete, and the testing programme publishes what it does not test — with the reason, the compensating control and the condition that would close it.** A coverage figure is not a completeness statement, and a half-built control does not earn a reduction.

The untested surface is a standing section of **06.11**, reported to the Steering Committee annually alongside the coverage figures rather than filed beneath them.

## Consequences

**Thirteen rows are published, and they are not comfortable reading.** They include the environments of the three providers Marketa cannot do without, the internal state of the nine vendor-locked appliances, social engineering against colleagues, physical intrusion at stores and data centres, the store estate at scale beyond an 8.5% sample, and the consumer's own device. Each row carries why it is untested, what compensates, and what closing it would require.

| A row of the untested surface | What compensates | What would close it |
|---|---|---|
| **Truvance's environment, including the token vault** | Its AOC and scope statement read rather than skimmed; monthly MT-1 corroboration; interface behaviour profiling; **6.4.3 and 11.6.1 on the pages Marketa does own** | A right of audit Marketa cannot obtain |
| **The 9 CON-03 appliances' internal state** | Unauthenticated weekly scanning; monthly firmware reconciliation; quarterly vendor patch attestation; isolation. **All recorded as accommodations, not controls** | **CAP-06** — a contract term at renewal, or platform replacement |
| **The store estate at scale** | The **daily estate-wide configuration assertion** across 482 stores, which is what converts a sample result into an estate-wide claim | Continuous assertion is the answer; testing every store is neither affordable nor necessary once the assertion is proved |
| **The seasonal workforce mechanism under real conditions** | A 500-record synthetic dry run, which tests automation and not October | The **February 2027** close-out report — R-13's exit evidence |
| **The consumer's device** | **Nothing, and nothing can** | Out of any merchant's reach; stated so that 11.6.1 is not over-claimed |

**Three of the thirteen produced actions rather than acknowledgements.**

| Row | Action |
|---|---|
| Social engineering against colleagues | A phishing and pretext-calling programme proposed for 2027 — **OI-06-07**, Marcus Hale, **2027-06-30** |
| The 9 CON-03 appliances' internal state | **CAP-06** named as the only route; a contract term at renewal or platform replacement, not an engineering task |
| Physical intrusion testing | Not proposed. The residual is **accepted and recorded against R-38** rather than left unstated |

**Some rows will never close, and the document says so.** Nothing available to a merchant closes Verition's decryption environment or Cadence's suppression platform. Testing inside the Truvance iframe would defeat the same-origin property that protects the card fields, so it **should not** be closed. Destructive testing in production is accepted as permanently excluded, because a test that breaks the payment channel to prove it can be broken is not a proportionate test.

**A High risk stays High for a year with no instrument behind it.** **R-36** — the vendor-locked appliances cannot be authenticated-scanned — is **not treated by any instrument**. It is named in the untested surface, it is held at **High 16** unchanged, and its only route is CAP-06 at **2027-01-31**. A register that moved on effort rather than on completion would have found something to say about it.

**The risk half of the decision is what made R-01's movement mean anything.** **11.6.1** went live on **2026-08-13** and evaluates what the customer actually received. With both halves operating, R-01 moved from **High 20 to Moderate 10** on **2026-10-02** — likelihood 4 → 2, **impact held at 5**, because a skimming script on a payment page is a card-data compromise whatever else is true. The register held it through two phases so that the movement, when it came, was a statement about a complete control rather than about a completed project.

**The same discipline held twenty-two other entries still.** Six entries moved in Phase 06 on measured operating evidence; twenty-two were held with stated reasons. **R-14** stayed at High 16 despite being tested three times in the year, because the store estate's exit condition is operating history and not test passes.

**The cost is that the programme's own summary contains its own worst list.** Coverage figures and the untested surface appear in the same document, and the second is read by the same assessor, the same board and the same acquirer as the first. That is uncomfortable by design: the alternative is a coverage figure doing work it was never entitled to do.

**And publishing a gap is not treating it.** Thirteen rows named is thirteen rows still untested. The register carries them; the document does not pretend that naming them is a control.

### What this decision does not claim

| Claim | Position |
|---|---|
| That thirteen rows is the complete untested surface | It is the surface found by walking eight instruments against the assessed population. **A limitation nobody enumerated would not appear here** |
| That naming a gap treats it | Three rows produced actions; ten did not. Naming is a reporting discipline, not a control |
| That holding a risk is a conservative default | It is a rule with a stated exit. Six entries moved in the period on measured operating evidence, and each movement names the evidence that permitted it |
| That the rule prevents optimism | It prevents one specific kind: a rating moved because a project finished. **A control that operates badly still moves nothing**, and that is a separate discipline |
| That the untested surface will shrink | Some rows should not close, and one — the consumer's device — is outside any merchant's reach. **A shrinking list would be a signal to check the list, not a success** |

## Related

- **ADR-0005** — raise a risk when discovery disproves an assumption; the same rule applied in the other direction
- **ADR-0009** — deliberately sample the messy estate; the selection rule that decides what a sample can find
- **ADR-0021 · ADR-0022** — the detective half of the script control, and why a silent detective control is a defect
- **06.11 §4.2** — which instrument found which finding, and the two rows nothing else would have caught
- **06.11 §5, §5.1** — the thirteen rows and the decision as recorded in the document that owns it
- **06.12 §4, §5** — the six entries that moved, the twenty-two held, and the arithmetic behind R-01
- **07.04** — the awareness programme, and the untested-surface row covering phishing susceptibility
- **DEC-609** — the decision log entry, 2026-10-02
