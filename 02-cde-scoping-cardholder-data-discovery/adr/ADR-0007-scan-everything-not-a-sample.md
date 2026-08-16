# ADR-0007 — Scan 100% of the Estate Rather Than a Risk-Based Sample

| Field | Value |
|---|---|
| Status | **Accepted** |
| Date | 2026-01-19 |
| Deciders | Marcus Hale, Naomi Bhatt (CISO), Owen Castellanos |

## Context

Cardholder data discovery is usually scoped by risk: scan the systems where account data plausibly lives, sample elsewhere, and accept residual uncertainty. It is faster, cheaper, and produces a defensible-looking coverage statement.

Marketa's estate is 1,842 systems, 41 network shares and 6 email archives. A risk-based approach would have covered the payment estate, the disputes systems and a sample of shares — perhaps 700 systems — in about a third of the time.

## Decision

Scan **everything**: 1,842 of 1,842 systems, all 41 shares, all 6 email archives, plus backup catalogue review with restore-and-scan on sampled images, and reconciliation of decommissioned records against live network discovery.

## Rationale

The argument was settled in advance by a question nobody could answer: *if account data is somewhere we do not expect, which sample would find it?*

A risk-based scope is built from the organisation's existing model of where its data is. If that model is correct, the sample confirms it. If the model is wrong, the sample confirms it anyway. The method cannot detect the failure mode that matters most.

The result vindicated the decision more starkly than expected. **Three of the four findings were in populations no inventory covered** — an audio archive, an unowned file share, and a host that the CMDB said had been decommissioned. A risk-based scan would have found the fourth, at best.

## Consequences

- Discovery took five weeks (2026-01-19 to 2026-02-20) rather than roughly two, and cost proportionately more.
- Coverage is stated as **100%** and can be evidenced as such, which is a materially stronger position at fieldwork than a sampling rationale.
- False positives were substantial — 2,690 adjudicated out of 4,912 candidates — and adjudication was the largest single labour cost in the phase. This was anticipated and budgeted.
- The method is now the standing approach: the R-31 exit criterion is a **second full run**, not a sample.

## Alternatives considered

| Option | Why rejected |
|---|---|
| Risk-based scan of ~700 systems | Cannot detect data in places the organisation does not know about, which is the only interesting case |
| Full scan of systems, sample of shares and archives | Would have missed PAN-01 (audio archive) and PAN-04 (email archive) — two of the four |
| Full scan deferred until after segmentation was designed | Scope determines segmentation design, not the reverse. Sequencing it that way would have designed a boundary around the wrong environment |
