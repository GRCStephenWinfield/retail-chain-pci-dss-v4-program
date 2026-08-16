# Application Penetration Test — Readout

| Field | Value |
|---|---|
| Provider | Ironwood Security Labs |
| Requirement | **11.4.3** — external penetration testing at least annually and after significant change |
| Fieldwork | September 2026 |
| Findings | **11 — 1 Critical, 3 High, 4 Medium, 3 Low** |
| Attending | Naomi Bhatt (CISO), Sonia Rendell, Marcus Hale, Elena Marchetti, Owen Castellanos |

## 1. The Critical

**APP-PT-01 — an unauthenticated administrative interface on the chargeback application**, a CDE component.

The interface was reachable without authentication. It had never had an authentication check applied to it, which is a different and worse problem than a check that failed: nothing broke, because nothing had ever been there.

## 2. What Marketa did that it did not have to

The obvious response is to fix the interface, retest, and record that there was no evidence of unauthorised access.

Marketa instead performed **forensic enumeration of prior access** across the exposure window. Bhatt's reasoning, minuted:

> "'No evidence of access' obtained by not looking is not a finding. It is a sentence. If we are going to write it in a report that goes to our acquirer, we should have looked first."

The enumeration was performed, its scope and limitations recorded, and the conclusion stated with the evidence behind it.

## 3. The consolidated programme position

| Engagement | Findings | Critical | High | Medium | Low |
|---|---|---|---|---|---|
| Segmentation test — Phase 03, May | 8 | 1 | 2 | 3 | 2 |
| Application test — this engagement | 11 | 1 | 3 | 4 | 3 |
| **Programme total** | **19** | **2** | **5** | **7** | **5** |

**All 19 remediated and independently retested.** None closed on Marketa's assertion.

## 4. The tester's observation

Asked how Marketa compared to other Level 1 merchants, the Ironwood lead recorded:

> "Two Criticals in a year is not unusual. What is unusual is that both were found by us rather than by you *and you wrote it that way*. Most reports I write get edited into something where the client found half of it."

## 5. What the readout did not conclude

The Committee declined to treat 19 findings, all remediated, as evidence that the programme is secure. Bhatt recorded the limit:

> "Nineteen findings, nineteen fixes and nineteen retests tells us we can respond. It does not tell us what the twentieth would have been. That is what next year's test is for."

## Source
`06.08`, `06.11`, `03.07`.
