# ADR-0032 — The 2026 Attestation Is Not Withdrawn or Replaced

| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2027-02-18 |
| Deciders | Raymond Voss (CFO), Naomi Bhatt (CISO), Priya Raghunathan (Audit Committee Chair) |
| Phase | 08 — QSA Assessment &amp; ROC Production |
| Classification | Confidential — Cardholder Data Environment // Illustrative Portfolio Sample |

## Context

The re-assessment on 2027-02-18 produced a revised Report on Compliance and a compliant Attestation. A question was raised at the Audit Committee: should the 2026 attestation now be withdrawn, superseded or replaced, so that Marketa's record for the assessment period reads as compliant?

## Decision

**No.** The revised attestation is **additive**. The 2026 attestation stands, and Marketa's record shows a non-compliant attestation dated 2026-12-11 and a compliant attestation dated 2027-02-18.

## Consequences

Marketa carries a documented non-compliant year. That is the accurate description of an environment which, on 11 December 2026, did not meet two PCI DSS requirements.

The reasoning is one sentence: **an attestation is a statement about a period, and the period does not change because the environment later did.** A compliant attestation covering an assessment period during which two requirements were not met would be a false statement, and the fact that it would be a convenient one is the reason to be careful about it.

There is also a practical consequence in Marketa's favour. Every party who received the December attestation — Cardinal, the Audit Committee, the Board — received the same document, and there is no version of events in which somebody holds a superseded copy and somebody else holds a replacement. **The record is the record.**

## Related

- **ADR-0031** — the non-compliant attestation is filed early
- **ADR-0002** — the signature sits with the CFO
- **08.12 §7** — the revised report and attestation
- **governance/re-assessment-record.md**
