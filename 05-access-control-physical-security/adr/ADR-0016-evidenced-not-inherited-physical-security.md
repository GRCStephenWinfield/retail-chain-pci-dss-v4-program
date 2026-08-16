# ADR-0016 — Physical Security at a Third-Party Facility Is Evidenced, Not Inherited

| Field | Value |
|---|---|
| Status | **Accepted** |
| Date | 2026-06-24 |
| Deciders | Owen Castellanos, Trevor Kim, Naomi Bhatt (CISO) |

## Context

Marketa's disaster-recovery environment sits in a **co-location facility at Ashburn, Virginia**. The cages are Marketa's; the building, its perimeter, its guards, its cameras and its visitor process are the provider's.

Requirement 9 obliges Marketa to restrict physical access to systems in the cardholder data environment. At Ashburn, most of the controls that discharge that obligation are operated by somebody else.

The comfortable assumption is that a professional co-location provider's physical security is adequate and that Marketa inherits it. Comfortable, and untested — the provider **was not in the third-party service provider register at all**, so nobody had ever asked for evidence.

## Decision

Physical security at a third-party facility is **evidenced, not inherited**. The Ashburn provider is added to the register as **TPSP-06**, with a responsibility matrix under 12.9.2 stating which Requirement 9 sub-requirements the provider discharges and which remain Marketa's.

## Rationale

An inherited control is an assumption with a professional reputation attached. The register exists precisely to convert assumptions about third parties into documented, evidenced positions — and a provider absent from the register has never been through that conversion.

The specific obligations matter. **9.2.1.1** requires monitoring of individual entry and exit to sensitive areas with **at least three months of retention**. Marketa cannot assert that from its own systems for a building it does not operate. Either the provider evidences it, or the requirement is not met — and "the provider is reputable" is not evidence.

## Consequences

- The quarterly TPSP forum population moves from **five providers to six**, which diverges from the "all five providers" stated in `01.11` §4. The divergence is recorded here and in `05.08` §6.2 rather than by rewriting an approved Phase 01 document — the same convention `04.12` used for the 6.4.1 mapping.
- The provider's attestation and the responsibility matrix become fieldwork evidence, carried into the Phase 06 third-party work.
- The finding generalises into a question now asked of every facility: **who actually operates this control, and have we ever asked them for evidence?**

## Alternatives considered

| Option | Why rejected |
|---|---|
| Rely on the provider's reputation and industry certifications | A certification held by the provider is evidence about the provider, not evidence that Marketa's cages are covered by it |
| Treat Ashburn as out of scope because it holds only DR copies | The DR environment can hold everything production holds. Scope follows the data, not the intention |
| Add the provider to the register without a responsibility matrix | Produces a register entry and no clarity about who does what — the failure mode 12.9.2 exists to prevent |
