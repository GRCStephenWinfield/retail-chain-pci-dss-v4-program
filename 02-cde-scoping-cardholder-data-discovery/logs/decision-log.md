# Decision Log — Phase 02

| ID | Date | Decision | Rationale | Decided by | Reference | Status |
|---|---|---|---|---|---|---|
| DEC-201 | 2026-01-19 | Scan **100% of the estate**, not a risk-based sample | A sample can only confirm where you already thought the data was. Three of the four findings were in populations no inventory covered | Marcus Hale | 02.02 §2 | Approved |
| DEC-202 | 2026-01-28 | Treat the **legacy dispute share as containing account data** pending adjudication, rather than assuming scanned images were benign | The share had no owner and no classification. Assuming in Marketa's favour is how it got there | Elena Marchetti | 02.03 §3 | Approved |
| DEC-203 | 2026-02-05 | **Raise R-31** rather than close it on remediation | The rating expressed a belief about the estate, and the belief was disproved. Remediating four locations does not restore it | Naomi Bhatt | ADR-0005 | Approved |
| DEC-204 | 2026-02-06 | **Suspend the P2PE scope reduction for three stores** on discovery of a non-conforming POI network path | The reduction is conditional on PIM compliance. Three stores did not comply, so for those stores it did not apply | Trevor Kim | 02.04 §7 | Approved |
| DEC-205 | 2026-02-11 | Perform a **documented negative detokenisation test** rather than rely on contractual assurance | "We cannot detokenise" is a claim. A 403 response with the attempt recorded is evidence | Elena Marchetti | 02.07 §6 | Approved |
| DEC-206 | 2026-02-14 | Classify the **482 store servers in the connected-to band for governance**, while enumerating only the boundary and shared services in the 63 | Prevents a 71-component count that silently excludes 482 systems from oversight, without inflating the assessed population | Naomi Bhatt | ADR-0006 | Approved |
| DEC-207 | 2026-02-19 | **Close the dormant ninth merchant ID** identified during the Q-13 reconciliation | An acceptance channel nobody uses is an acceptance channel nobody monitors | Elena Marchetti | 02.07 §8 | Approved |
| DEC-208 | 2026-02-20 | Record the scope determination as **evidenced for data, configuration-only for segmentation** | Configuration is not proof of segmentation. The claim is bounded until the Phase 03 penetration test | Naomi Bhatt | 02.12 §6 | Approved |

## Source
`02.03`, `02.04`, `02.07`, `02.12`, and `adr/`.
