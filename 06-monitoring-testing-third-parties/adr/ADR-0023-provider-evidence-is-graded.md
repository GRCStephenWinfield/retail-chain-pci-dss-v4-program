# ADR-0023 — Provider Evidence Is Graded, and a Grade Is Not a Control

| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-10-16 |
| Deciders | Owen Castellanos, Naomi Bhatt (CISO), Frank Mueller (General Counsel) |
| Phase | 06 — Monitoring, Testing &amp; Third Parties |
| Classification | Confidential — Cardholder Data Environment // Illustrative Portfolio Sample |

## Context

Phase 05 found a co-location provider performing **9.2.1** and **9.2.1.1** for the hall housing Marketa's disaster-recovery cages, registered nowhere, monitored by nobody, and never once asked for evidence. It became **TPSP-06**, and **ADR-0016** established the rule that physical security at a third-party facility is evidenced rather than inherited.

The finding's value was never the sixth register entry. It was what the omission said about the other five, and one row of that analysis is the reason this record exists:

> **A SOC 2 report was in a folder and had been treated as sufficient.**

That is the general failure. A SOC 2 Type II report, an Attestation of Compliance, a NAID certificate and a vendor email are four different kinds of evidence about four different things, and the folder they sit in makes them look identical. Filed together, read quickly, they support a register in which every provider row is green and no row records how the entity knows.

The scale of the problem became visible when the consolidated responsibility matrix was built: **six providers across 22 control areas**, **80 assurance rows**, assembled from provider statements, published registries, third-party reports and Marketa's own records, with nothing in the format distinguishing one source from another.

The alternative was to record each row as met or not met. It is faster, it produces a clean register, and it cannot answer the only question a reviewer asks.

The problem is sharpened by what Marketa's own scope reduction did. Phase 02 took the assessed population from **604 systems to 71**, a fall of **88.2%**, through P2PE, tokenization and DTMF masking. None of that removed risk; it moved risk to a place where Marketa's instruments are contractual rather than technical. **The quality of third-party evidence is now a first-order control property**, not an administrative detail, and it had been recorded in a format that could not express quality at all.

| What the TPSP-06 omission demonstrated | Why it generalises |
|---|---|
| A provider can perform a Marketa requirement for years without anybody asking it for evidence | Nothing in the register format distinguished "asked and verified" from "assumed" |
| Nobody had written down which party performs **9.2.1.1** at Ashburn until somebody had to produce the evidence | An allocation nobody wrote down is an allocation both parties can believe the other holds |
| A SOC 2 report was in a folder and had been treated as sufficient | **A report is evidence about the services and periods it names, and only those** |

## Decision

**Every item of third-party assurance evidence carries an explicit grade, and a grade is a statement about the evidence, not about the control.** No provider assurance artefact may be recorded as satisfying a Marketa obligation without a named requirement, a named evidence item, and a grade.

| Grade | Meaning |
|---|---|
| **E1** | Marketa's own direct observation or record |
| **E2** | A provider statement corroborated by an independent Marketa observation |
| **E3** | A provider statement or third-party report, uncorroborated |

## Consequences

**The matrix reports its grade distribution, not only its coverage.** Eighty rows are graded across the six providers: **28 at E1, 17 at E2 and 35 at E3.**

| Provider | E1 | E2 | E3 | The Marketa mechanism installed because the grade would otherwise be E3 |
|---|---|---|---|---|
| **TPSP-01** Truvance | 4 | 3 | **9** | Interface behaviour profiling on flows F-04 and F-05; **6.4.3 and 11.6.1 on Marketa's own pages** |
| **TPSP-02** Cadence | 3 | 2 | **8** | Daily automated assertion of the DTMF suppression point's position |
| **TPSP-03** Verition | 5 | 4 | **7** | **9.5.1 inspection of 1,914 terminals**, quarterly; two independently sourced serial numbers per device |
| **TPSP-04** Northbridge | 3 | **4** | 5 | The quarterly unannounced 03:00 handover test |
| **TPSP-05** Halberd | **6** | 2 | 2 | Certificate-to-inventory reconciliation, per collection, serial by serial |
| **TPSP-06** Ashburn | **7** | 2 | **4** | **Marketa's own reader on Marketa's own cage door**; the annual site inspection with dated photographs |

**Thirty-five uncorroborated rows are published rather than argued down.** Every one of the 35 is a provider statement Marketa cannot verify, and the three highest E3 counts belong to the three providers Marketa cannot do without. That number is the honest measure of how much of Marketa's assurance is somebody else's word, and it is a worse-looking register than the met/not-met alternative would have produced.

**An E3 grade is an obligation, not a label.** Where the grade would otherwise be E3 on a control Marketa depends on, Marketa installs its own mechanism — the last column above. That is real recurring cost: a card reader and its event feed at a facility Marketa does not operate, a serial-level reconciliation on every media collection, an unannounced out-of-hours test executed four times a year. The alternative to that cost is not a cheaper control; it is an uncorroborated claim recorded as an assurance.

**Grading slowed the matrix down.** Eighty rows each needed a named requirement, a named evidence item and a defended grade before signature, across six counterparties. It is materially slower than filing the reports, and it surfaced **four disagreements** that had to be resolved before any provider would sign — including a provider allocating **9.2.1.1** to itself for a cage it cannot enter, and a SOC 2 describing "at least 30 days" of video retention where Marketa's obligation reasoning had assumed 90. Both were settled in writing rather than inferred.

**The failure this prevents is not fraud.** It is a reviewer in 2029 who cannot tell which claims Marketa verified and which it accepted. A grade is durable in a way a folder is not.

**No matrix is complete until the provider has signed it.** A grade attaches to an evidence item, and an allocation Marketa wrote that the provider never saw is a Marketa opinion rather than an evidence item at all. All six matrices are signed, and the four disagreements were resolved before signature rather than discovered after it.

**The rule extends beyond the finding that produced it.** ADR-0016 covered physical security at one facility. This covers all six providers and all requirement areas, including the two rows of the matrix that carry no **P** in any provider column — **6.4.3** and **11.6.1** — which are wholly Marketa's and whose emptiness is the matrix's most important output.

**It does not buy depth.** Grading tells Marketa the quality of what it holds. It does not obtain anything it could not obtain before, and it does not reach inside a provider Marketa has no right to audit.

**The grade also records who is obliged to help.** Three of the six providers give the 12.8.2 acknowledgement because **12.9.1** obliges them to; three give it because a contract does. Both satisfy 12.8.2, and only one of them survives the provider deciding it no longer wishes to. That distinction costs nothing to record at grading time and is impossible to reconstruct later.

### What this decision does not claim

| Claim | Position |
|---|---|
| That an E1 grade means the control is strong | A grade is a statement about **the evidence**, not about the control. An E1 record of a weak control is an accurate record of a weak control |
| That grading reduces the third-party risk | It makes the risk legible. **R-09 stays at Moderate 10 with impact held at 5** whatever the grade distribution says |
| That 35 E3 rows is a failure | It is the ordinary position of a merchant relative to its payment providers, and the number is published so that it is not mistaken for something better |
| That every E3 row will be corrected | Some cannot be. Where a Marketa mechanism is not available, the correct response is an **explicit acceptance**, not a re-grade |
| That the six signed matrices are permanent | They are re-confirmed on service change and at each annual review. **A matrix signed once is a snapshot of an allocation, not a standing guarantee** |

## Related

- **ADR-0016** — physical security at a third-party facility is evidenced, not inherited; the rule this decision generalises to all six providers
- **ADR-0024** — monitoring tiered above the annual floor; the companion decision from the same document
- **01.09** — the third-party service provider register and the two-limb 12.8.1 test that missed TPSP-06
- **05.08 §6** — the Ashburn shared-responsibility boundary and the TPSP-06 correction
- **06.10 §3.1** — the decision as recorded in the document that owns it
- **06.10 §6.2, §6.3** — the 22-area matrix, the four resolved disagreements, and the grade distribution
- **06.10 §8** — why Marketa cannot audit its largest provider, stated rather than implied
