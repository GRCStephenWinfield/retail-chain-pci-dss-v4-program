# ADR-0002 — Place the AOC Signature with the CFO

| Field | Value |
|---|---|
| Status | **Accepted** |
| Date | 2026-01-26 |
| Deciders | Raymond Voss (CFO), Frank Mueller (General Counsel), Naomi Bhatt (CISO) |

## Context

The Attestation of Compliance is signed by an officer of the assessed entity. In 2023 and 2024 it was signed by the CISO, on the reasoning that the CISO understood the controls best.

The AOC is not a technical document. It is an **attestation made to the acquirer under a commercial agreement**, and it carries consequences that are commercial: non-compliance handling, liability allocation, and in the worst case the acquirer's exposure to brand assessments.

## Decision

The AOC is signed by the **Chief Financial Officer**, who owns the Cardinal Merchant Bank relationship. The CISO attests to the technical accuracy of the underlying ROC content in an internal record supporting the signature.

## Rationale

Signatures should sit with the person who owns the consequence. Voss owns the acquirer relationship, the merchant agreement, and the financial exposure that follows from a non-compliant filing.

There is a second, less comfortable reason. When the person who **built** the controls is also the person who **attests** that they work, the attestation is worth less. Separating construction from attestation is the same principle that puts Internal Audit outside the CISO's reporting line.

## Consequences

- The CFO must understand what is being signed, which forces a genuine briefing rather than a signature request. In 2026 that briefing surfaced the two Not in Place findings before the AOC was prepared.
- The CISO retains technical accountability through the internal supporting record.
- The signature is deliberately harder to obtain. This is the intent.

## Alternatives considered

| Option | Why rejected |
|---|---|
| CISO signs, as in prior years | Conflates building the controls with attesting to them |
| CEO signs | Correct in principle for the most senior accountability, but too remote from the acquirer relationship to make the briefing meaningful |
| Joint CFO and CISO signature | Attractive, but shared signature tends to mean shared assumption that the other party checked |
