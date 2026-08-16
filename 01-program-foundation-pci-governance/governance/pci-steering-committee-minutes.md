# PCI Steering Committee — Extract of Minutes

| Field | Value |
|---|---|
| Meeting | PCI Steering Committee — inaugural |
| Date | 2026-02-13 |
| Chair | Raymond Voss, Chief Financial Officer |
| Secretary | Owen Castellanos, Payment Card Compliance Manager |
| Present | Naomi Bhatt (CISO), Curtis Lang (CIO), Elena Marchetti (VP Payment Operations), Trevor Kim (Infrastructure &amp; Network), Sonia Rendell (E-Commerce Engineering), Adaeze Nwosu (Store Operations), Bill Traynor (Call Centre), Frank Mueller (General Counsel) |
| In attendance | Rosa Delgado (Internal Audit, non-voting observer) |

## 1. Terms of reference adopted

The Committee adopted its terms of reference: monthly cadence, CFO chair, quarterly reporting to the Audit Committee, and authority to direct remediation across business units. Internal Audit attends as a **non-voting observer** — the Committee recorded that this preserves Delgado's independence for the Phase 08 review.

## 2. Merchant level and validation path

Confirmed: **68.4M annual card transactions**, Level 1 for both Visa and Mastercard, validation by **QSA-issued ROC and AOC** with quarterly ASV scans. The Committee noted there is no SAQ route available at this volume and that the determination is arithmetic, not a choice.

## 3. The question the Chair asked

Voss asked what would make this assessment materially harder than 2023 and 2024. Bhatt's answer, recorded in full at the Chair's request:

> "Those were v3.2.1 assessments. This one is v4.0.1 with **fifty-one requirements that were optional then and are mandatory now**. Three of them do not exist in any form we have implemented — payment-page script control, payment-page tamper detection, and MFA for *all* access into the cardholder data environment rather than just administrative and remote. We are not repeating a passed assessment. We are doing a materially different one."

## 4. Scope

The Committee accepted DEC-106: the **604-system figure is a hypothesis**, not a baseline, and Phase 02 will test each assumption behind it. Marchetti asked what happens if the number goes up. Castellanos confirmed the contingency in the budget and the fact that the fieldwork date cannot move.

## 5. Matters recorded

| # | Matter | Position |
|---|---|---|
| 5.1 | Seasonal change freeze, October to January | Accepted as immovable. The plan is built backwards from **2026-11-02** |
| 5.2 | 482 stores means any store-side change is a 482× rollout | Nwosu to pilot the 9.5.1 procedure before enterprise rollout |
| 5.3 | Marketing tag deployment onto payment pages | **To stop pending a governed approval path.** Rendell to agree an SLA with Marketing |
| 5.4 | Northbridge and Halberd hold no PCI AOC | Covered inside Marketa's own assessment under 12.8.4 |
| 5.5 | AOC signature | **CFO**, per ADR-0002 |

## 6. Resolutions

1. Terms of reference **adopted**.
2. Level 1 validation path **confirmed**.
3. The 604-system scope is recorded as a **hypothesis to be tested**, not an agreed baseline.
4. Payment-page tag deployment is **suspended** pending a governed approval path.
5. The programme plans backwards from **2026-11-02** and that date does not move.
