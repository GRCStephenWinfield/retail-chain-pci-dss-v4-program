# Customized Approach at 8.3.9 — Authorisation Record

| Field | Value |
|---|---|
| Decision | Elect the customized approach for Requirement 8.3.9 |
| Date | 2026-05-06 |
| Approved by | PCI Steering Committee |
| Chair | Raymond Voss, CFO |
| Present | Naomi Bhatt (CISO), Trevor Kim, Owen Castellanos, Curtis Lang |
| QSA informed | Grant Whitfield, Sable Ridge Assurance — 2026-05-08 |

## 1. What was decided

Marketa elects the **customized approach** for 8.3.9, for a bounded population: **61 password-only accounts across 19 connected-to or vendor-managed components**. This is the programme's **only** customized approach.

## 2. Why the defined approach does not fit

8.3.9 offers two defined options. Both were examined and both rejected on the record.

| Option | Why it was rejected |
|---|---|
| Change passwords at least every 90 days | For vendor-managed and connected-to components, rotation on 61 accounts produces credential sprawl and change-window risk without a corresponding reduction in exposure |
| Dynamically analyse account security posture and determine access in real time | **For 51 of the 61 accounts the component authenticates locally.** There is no external decision point at which a real-time determination could be made. Marketa's analytics are post-admission, not access-determining — claiming otherwise would be stretching the option past what it says |

Castellanos noted that the second option is the one most entities quietly claim. The Committee declined to.

## 3. What the Committee had to accept

| Cost | Position |
|---|---|
| **The entity does not write the test** | Sable Ridge derives the testing procedures — CTP-1 to CTP-12. Marketa satisfies them; it does not propose them |
| **Approximately 46 additional assessor hours** | Every year, forever. The derivation is redone at each assessment |
| **The assessor may decline** | A QSA is not obliged to accept a customized approach, and there is no appeal to the Council |
| **It is not portable** | Assessor rotation is planned for 2028 under ADR-0003. The approach must be re-argued to a new assessor |

## 4. The Chair's question

Voss asked why Marketa would take on a permanent annual cost for 61 accounts.

Bhatt's answer:

> "Because the alternative is to rotate passwords on sixty-one accounts every ninety days, tell ourselves that is security, and hope nobody asks what it achieved. The customized approach costs more and is honest. If the population were six hundred rather than sixty-one I would give you a different answer, and the arithmetic is in the paper."

## 5. Authorisation

The customized approach at 8.3.9 is **approved** for the stated population only. Any expansion of the population requires a fresh decision and a fresh targeted risk analysis under 12.3.2.
