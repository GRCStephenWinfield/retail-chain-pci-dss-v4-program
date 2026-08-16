# ADR-0029 — Remediation During Fieldwork Is Disclosed, Never Absorbed

| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-10-23 |
| Deciders | Naomi Bhatt (CISO), Trevor Kim, Owen Castellanos |
| Phase | 08 — QSA Assessment &amp; ROC Production |
| Classification | Confidential — Cardholder Data Environment // Illustrative Portfolio Sample |

## Context

PCI DSS permits an entity to correct a deficiency during an assessment. A requirement corrected before the assessor completes testing may be assessed **In Place**; one corrected after the report is issued may not. The rule is sound — an environment that is compliant on the last day of fieldwork is compliant — and it creates an obvious temptation: correct quietly, present the corrected state, and let the report read as though the deficiency never existed.

This decision was taken at the assessment planning stage on **2026-10-23**, ten days before fieldwork opened and before anybody knew what would need correcting. Nine items were corrected during Marketa's fifteen days of fieldwork. The most significant was **1.2.8**: two of nine network security control ruleset backups were found on an unrestricted file share, on the assessor's own examination and not on Marketa's.

## Decision

**Every correction made during fieldwork is recorded in the Report on Compliance as a correction made during the assessment, with its date.** The disposition may be In Place. The narrative says how it got there.

## Consequences

The ROC contains nine paragraphs Marketa would rather not have written, and the report is materially more useful for containing them.

A reader can tell the difference between a control that operated all year and a control that operated from 5 November. So can next year's assessor, who will look at exactly those nine items first — which is the correct behaviour and is easier to plan for when the list is in the report rather than in somebody's memory.

The alternative was considered and rejected in one sentence: **a correction the assessor found and the report does not mention is a correction the entity is hoping nobody repeats.**

## Related

- **ADR-0004** — no "Not Tested" findings permitted
- **08.04 §6** — the nine in-flight corrections
- **08.13 §7** — the 1.2.8 instance recorded under R-32 rather than raised as a new entry
