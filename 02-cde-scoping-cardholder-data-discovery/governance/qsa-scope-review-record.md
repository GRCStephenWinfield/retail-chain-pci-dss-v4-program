# QSA Scope Review — Record

| Field | Value |
|---|---|
| Assessor | Sable Ridge Assurance, LLC — Grant Whitfield (lead QSA), Amara Osei |
| Date | 2026-03-27 |
| Purpose | Early review of the scope determination, ahead of fieldwork in November |
| Standing | **Advisory only.** The QSA reviewed the determination; it did not approve it, and nothing here binds the fieldwork conclusion |

## 1. Why this review happened in March

Scope disagreements discovered during fieldwork cannot be fixed during fieldwork. The engagement protocol sets monthly checkpoints from March precisely so that an interpretation dispute surfaces while there is still time to act on it.

## 2. The three challenges raised

| # | QSA challenge | Marketa response | Outcome |
|---|---|---|---|
| **QC-01** | Payment pages are being treated as in scope for 6.4.3 and 11.6.1 while the AWS delivery tier is out of the CDE. Is the delivery infrastructure for those pages genuinely out? | A defined subset of the delivery path — the components that build, sign and serve the payment templates — is enumerated among the 63 as security-impacting. The remainder of the AWS estate is not | **Accepted**, with the subset to be re-examined at fieldwork |
| **QC-02** | The 482 store servers are described as connected-to but do not appear in the 71 | The store estate sits in the connected-to band for governance; what is enumerated is the segmentation boundary that keeps it out and the shared services that cross it. **If segmentation fails the penetration test, this position collapses** | **Accepted as contingent.** Whitfield noted the position "depends entirely on the May test" |
| **QC-03** | The negative detokenisation test — how is a 403 response evidence of an absence of capability rather than of a misconfigured call? | Entitlement review with Truvance, contract review, and the recorded attempt together. No single one is sufficient | **Accepted** |

## 3. What the QSA declined to do

Whitfield declined to state in advance whether the scope would be accepted at fieldwork, and recorded why: an assessor who pre-approves a scope in March has fewer degrees of freedom in November. Marketa recorded the position without objection.

## 4. The observation Marketa asked to be minuted

> "Most entities I assess present a scope that has only ever shrunk. Yours added ten systems that were never on the original list. That is the part I will spend the least time challenging."

## Source
`02.09`, `02.10`, `02.12`, and `01-program-foundation-pci-governance/governance/qsa-engagement-record.md`.
