# Segmentation Penetration Test — Readout

| Field | Value |
|---|---|
| Provider | Ironwood Security Labs |
| Engagement | IWSL-MRG-2026-SEG-01 |
| Fieldwork | 2026-05-11 → 2026-05-22 |
| Report issued | 2026-05-29 |
| Readout | 2026-06-02 |
| Requirement | **11.4.5** — segmentation controls tested at least annually and after changes. *(11.4.6's six-month cadence is a service-provider requirement and does not apply to Marketa.)* |
| **Result** | **FAIL** |

## 1. Scope of the test

The engagement attempted to reach the cardholder data environment from **every out-of-scope zone**: store guest wireless, store back-office, corporate, the e-commerce platform, the contact centre, and the store payment device VLAN. A stratified sample of **14 stores (2.9%)** was tested, with one stratum deliberately composed of **stores with a recent local network change** — the stratum that produced the finding.

## 2. Findings

| Severity | Count |
|---|---|
| Critical | **1** |
| High | 2 |
| Medium | 3 |
| Low | 2 |
| **Total** | **8** |

These 8 findings, together with the 11 from the later application penetration test, reconcile to the programme's 19 (2 Critical, 5 High, 7 Medium, 5 Low).

## 3. What the tester said at the readout

Asked whether the finding was unusual, the Ironwood lead recorded:

> "The trunk template fault is common. What is uncommon is that you asked us to include stores with recent local changes in the sample. Most clients give us the standard build and a list of well-maintained sites. If you had done that we would have passed you, and the fault would still be sitting at thirty-seven stores."

## 4. What the test did and did not establish

| Established | Not established |
|---|---|
| Guest wireless reached the store back-office VLAN in 19 minutes | The tester did **not** reach the cardholder data environment |
| Segmentation between Z7 and Z5 was **not effective** | Segmentation between Z5 and the CDE held; that boundary was tested and not defeated |
| Configuration review had reached the wrong conclusion | The corrected boundary is durable — that is what the re-test is for |
| The fault was latent at 37 stores | Whether other latent classes exist — the drift control exists to answer this continuously |

## 5. Marketa's response, as recorded by Ironwood

Ironwood noted in the report that containment was achieved **41 minutes** after notification and that Marketa elected to raise the associated risk rather than close the finding on remediation. Both observations were carried into the re-test engagement letter as context.

## Source
`03.07`, `03.08`.
