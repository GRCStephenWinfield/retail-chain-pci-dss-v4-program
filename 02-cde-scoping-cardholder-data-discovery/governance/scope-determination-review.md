# Scope Determination Review — Record

| Field | Value |
|---|---|
| Review | Formal review and approval of the Phase 02 scope determination |
| Date | 2026-02-20 |
| Chair | Naomi Bhatt (CISO) |
| Present | Owen Castellanos, Trevor Kim, Sonia Rendell, Marcus Hale, Elena Marchetti, Adaeze Nwosu, Bill Traynor |
| Purpose | Approve the assessed system component population and the rationale for every exclusion |

## 1. The determination

| Population | Count |
|---|---|
| Enterprise estate | 1,842 |
| Believed in scope at kickoff (Phase 01 hypothesis) | 604 |
| **CDE components** | **8** |
| **Connected-to / security-impacting** | **63** |
| **Total assessed system components** | **71** |
| Reduction against the hypothesis | **−88.2%** |

## 2. What the review challenged

The Chair required each mechanism owner to argue **against** their own reduction before it was approved.

| Challenge | Response accepted |
|---|---|
| P2PE removes 482 systems on the strength of a vendor listing | **Rejected as stated.** The reduction rests on the listing *and* deployment as validated *and* PIM compliance. Three stores failed the third test and were suspended from the reduction until corrected |
| The iframe removes the e-commerce tier, so the web estate is out of scope | **Half true, and the dangerous half.** The AWS tier leaves the CDE; the payment pages remain fully in scope for 6.4.3 and 11.6.1. A script on the parent page can overlay or keylog regardless of where the iframe is served from |
| DTMF masking removes the call centre | **Only prospectively.** Masking was implemented forward-only in 2023. The historic archive was never in scope of the control — which is precisely where PAN-01 was found |
| The 63 connected-to systems look like a suspiciously round outcome | Confronted directly: 44 of the original 63 were confirmed, 19 were substituted. The count coinciding with the prior figure is a coincidence and is documented as one |

## 3. The uncomfortable finding

Ten systems were added to scope that had **never appeared in the 604**. The Chair recorded that this is the more important half of the result:

> "A scoping exercise that only removes systems has not tested the hypothesis. It has confirmed a preference. The ten additions are the evidence that we actually looked."

## 4. Determinations

1. The **71-component population is approved** as the assessed scope.
2. All **35 reduction conditions** are approved with named verification and reversal triggers.
3. **A-04 and A-07 are recorded as disproved**; A-05 is restated in testable form for Phase 03.
4. **R-31 is raised** and will not be lowered on remediation alone.
5. The scope claim is recorded as **evidenced for data and configuration-only for segmentation** — bounded until the Phase 03 penetration test.
