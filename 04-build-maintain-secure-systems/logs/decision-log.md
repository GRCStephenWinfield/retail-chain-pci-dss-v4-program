# Decision Log — Phase 04

| ID | Date | Decision | Rationale | Decided by | Reference | Status |
|---|---|---|---|---|---|---|
| DEC-401 | 2026-03-06 | Close the first payment-page script inventory at **38 scripts** and treat anything not on it as unauthorised by default | An inventory that grows to accommodate what it finds is not an inventory | Sonia Rendell | 04.10 §4 | Approved |
| DEC-402 | 2026-03-11 | **Remove the marketing tag manager's ability to publish to payment templates entirely**, rather than governing its use | The capability had no legitimate use that a reviewed deployment path could not serve. Governing a direct publication path leaves the path | Sonia Rendell | 04.10 §7 | Approved |
| DEC-403 | 2026-04-10 | Deploy **DLP for PAN in mail** following PAN-04 | 4.2.2 obliges strong cryptography for PAN over end-user messaging. Marketa prohibits it outright, which is stricter than the requirement and easier to evidence | Marcus Hale | 04.04 §7 | Approved |
| DEC-404 | 2026-04-24 | Agree a **five-business-day tag approval SLA** with Marketing | A control that makes the business wait indefinitely gets routed around. A dated SLA is what made the removal of the direct path acceptable | Sonia Rendell | 04.10 §7 | Approved |
| DEC-405 | 2026-05-18 | Move **CSP to enforcing** rather than report-only | Report-only tells you what would have been blocked. It does not block | Sonia Rendell | 04.10 §8 | Approved |
| DEC-406 | 2026-05-19 | **Conditionally re-authorise two of the three removed scripts** after a written justification, and permanently refuse the third | Removal is not the only correct answer. Two had a real business purpose that survived review; the container did not | Sonia Rendell | 04.10 §7 | Approved |
| DEC-407 | 2026-06-02 | Enforce **Subresource Integrity** on every static third-party script | 6.4.3's integrity limb needs a mechanism, not a policy | Sonia Rendell | 04.10 §8 | Approved |
| DEC-408 | 2026-06-15 | Treat **6.4.2 as the sole route** for public-facing application protection; record 6.4.1 as superseded | 6.4.1's option ended 2025-03-31. Mapping a 2026 control to it would be an error carried into the ROC | Naomi Bhatt | ADR-0010 | Approved |
| DEC-409 | 2026-06-30 | Evidence the **nine vendor-locked appliances** by observation and vendor attestation rather than assertion | They cannot accept an agent. Recording the limitation is better than recording a measurement that was never taken | Trevor Kim | 04.11 §5 | Approved |
| DEC-410 | 2026-07-10 | Set **TRA-5.2.3.1 at six-monthly**, amending the annual cadence assumed in the Phase 01 calendar | An assumed frequency is not a determined one. The analysis is what determines it | Marcus Hale | 04.05 §4 | Approved |

## Source
`04.04`, `04.05`, `04.09`, `04.10`, `04.11`, and `adr/`.
