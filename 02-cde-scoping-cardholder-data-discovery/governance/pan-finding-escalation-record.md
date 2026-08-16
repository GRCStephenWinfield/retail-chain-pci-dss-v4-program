# PAN Finding — Escalation Record

| Field | Value |
|---|---|
| Escalation | Discovery of account data in four locations outside the assessed scope |
| Raised by | Marcus Hale, Security Operations Manager |
| Raised to | Naomi Bhatt (CISO), then the PCI Steering Committee and the Audit Committee Chair |
| First finding confirmed | 2026-02-03 (PAN-01) |
| Escalation to the Audit Committee Chair | 2026-02-06 |

## 1. Why this was escalated rather than absorbed

None of the four findings was a breach. There was no indicator of compromise in any of them, the data was recovered or destroyed in every case, and no external party obtained anything.

It was escalated anyway, for one reason: **the organisation had been wrong about where its account data was.** That is a governance fact, not an operational one, and the Steering Committee had been told in February that discovery was expected to confirm the scope hypothesis.

## 2. What was reported, in the order it was reported

1. Account data exists in four locations that were **not in the 604 systems believed in scope**.
2. **No indicator of compromise** in any of the four, with the evidence for each — and one **stated limitation**: file-server access logs for the dispute share did not exist before a 24-month window, and that gap was not closed by inference.
3. Two Phase 01 assumptions are **disproved**.
4. **R-31 is being raised**, not closed, notwithstanding complete remediation.
5. Four new incident response procedures under 12.10.7 will follow.

## 3. The Audit Committee Chair's response

Priya Raghunathan recorded three points:

| Point | Recorded |
|---|---|
| On the finding itself | "Four locations found by a search that covered everything is a better outcome than zero found by a search that covered what we expected" |
| On the raised risk | Endorsed. The Chair noted she had asked in March not to receive a report in which the scope figure never moved, and observed that this is the same principle applied to a risk rating |
| On the log limitation | **"Do not let that be smoothed over between now and November."** Recorded as IS-03 and carried openly |

## 4. Notification analysis

| Question | Determination |
|---|---|
| Is any card brand or acquirer notification triggered? | **No.** No compromise of account data occurred; the acquirer obligation C7 is a compromise-notification obligation |
| Is any state breach-notification statute triggered? | Reviewed by Frank Mueller (General Counsel). **No** — no unauthorised acquisition by an external party in any of the four |
| Was the acquirer informed anyway? | **Yes**, in the ordinary quarterly programme update, as a matter of transparency rather than obligation |
| Is the determination documented? | Yes, with the reasoning, so that a later reader can see the decision was analysed rather than assumed |
