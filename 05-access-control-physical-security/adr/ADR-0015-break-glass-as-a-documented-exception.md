# ADR-0015 — Break-Glass as a Documented 8.5.1 Exception, Time-Bounded in Use

| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-06-03 |
| Deciders | Trevor Kim (Director of Infrastructure &amp; Network), Naomi Bhatt (CISO), with Grant Whitfield (lead QSA) consulted |
| Phase | 05 — Access Control &amp; Physical Security |
| Classification | Confidential — Cardholder Data Environment // Illustrative Portfolio Sample |

## Context

**8.5.1** requires that multi-factor authentication cannot be bypassed by any user, including administrative users, **unless specifically documented and authorised by management on an exception basis, for a limited time period.**

Marketa's MFA design fails closed. If **CT-05** is unavailable, in-scope access stops; a degraded mode permitting password-only authentication during an outage was considered and rejected, on the ground that an attacker able to cause an outage would then be choosing the authentication regime. The cost of that decision is that a CT-05 outage is a full stop for Payment Operations — and it is the reason **eleven** break-glass accounts exist at all.

| Account class | Count | Components | Why it cannot use MFA |
|---|---|---|---|
| **CDE break-glass** | **8** | One per CDE-01 to CDE-08 | Recovery when the directory, the federation service or the brokering path is unavailable — precisely when a per-user account cannot be authenticated |
| **Boundary and vault cluster recovery** | **3** | CT-11, CT-43, CT-50 | Recovery of the brokering and boundary planes themselves, which cannot depend on the brokering plane |
| **Total** | **11** | | |

An account that depends on the MFA service cannot recover the MFA service. The exception is therefore structural rather than temporary, and it is the one exception among the five in the register — **MFA-EX-01** to **MFA-EX-05** — that has no closure date, where the other four all closed between 2026-04-24 and 2026-06-30.

The live question was what to do with "for a limited time period" when the exception is, by construction, permanent. Three readings were on the table and only one of them survives contact with the estate.

| Reading | Position |
|---|---|
| "Limited time period" means the exception must expire on a date | **Rejected.** Under that reading a recovery control must be periodically removed from production and re-authorised, creating a scheduled window with no recovery path |
| "Limited time period" bounds **the use**, not the authorisation | **Adopted** |
| The authorisation itself is unbounded | **No.** It is reviewed at every six-monthly access review and re-signed annually by the CISO |

The tempting alternative was neither of the first two. It was to write the exception into policy without commentary, let the register show a permanent entry with no expiry date, and hope nobody asked — which reads, to anyone who does ask, as a policy that forgot to set a limit.

The exception register makes the shape of the problem visible. Four of the five exceptions are engineering problems with closure dates; one is not.

| Exception | What could not do MFA | Closure |
|---|---|---|
| **MFA-EX-01** | Call-recording platform management node CT-60 | Hardware OTP tokens to the 3 RC-22 holders — **2026-05-12** |
| **MFA-EX-02** | Core switching layer CT-46 and two boundary devices | **Direct administration removed**; reachable only through CT-11 — **2026-06-08** |
| **MFA-EX-03** | Vendor support accounts on the 9 CON-03 appliances | Disabled by default, activated only inside an MFA-gated brokered window — **2026-06-30** |
| **MFA-EX-04** | **The 11 break-glass accounts** | **Not closed. Permanent by design** |
| **MFA-EX-05** | 47 accounts on the CT-19 and CT-22 consoles | Agent upgraded, enforcement applied — **2026-04-24** |

## Decision

**Record break-glass as a documented 8.5.1 exception whose "limited time period" bounds the use rather than the authorisation, and write the reasoning down so it can be challenged.** The credential does not exist in a usable state, is released only for a specific event, is valid for at most **4 hours**, rotates on check-in, and every release is a P1 event with two named humans attached. The bypass is time-limited to the incident.

## Consequences

**The controls that make the reading defensible are operational, not declarative.**

| Control | Implementation |
|---|---|
| Use prevented unless needed | Credentials are held by no person. They exist only as sealed material in **CT-14** and are not valid until released |
| Used only for the time needed | Rotated automatically on check-in, and unconditionally within **4 hours** of release whether checked in or not |
| Release authority | **Two named individuals** from a panel of nine; release of the **CT-11** account requires Naomi Bhatt personally |
| Attribution | Full session recording through CT-11; where CT-11 is itself the target, an out-of-band recorded session with a second person present as observer |
| Detection | Any authentication by one of the eleven raises a **P1** to Marcus Hale and Naomi Bhatt, **regardless of whether it was authorised**, because an authorised break-glass event is still an event |
| Authorisation review | One signed justification per account, reviewed at each six-monthly access review, re-signed annually by the CISO |

**The operating record in the period is two uses and no surprises.** Both were controlled tests during the **2026-06-20** disaster-recovery exercise, both pre-notified, both fully recorded, both followed by credential rotation. **Zero unplanned uses.** Two uses is a working recovery capability and it is not an operating history, and the phase says so rather than presenting it as assurance.

**The decision creates a second exception, to a different rule.** The eleven accounts are exempt from inactivity disablement. An account that is never used is exactly what a break-glass account should be, and applying an inactivity rule would remove a recovery control on the ground that recovery had not been needed. That exemption is the row an assessor will query, and it exists because of this one.

**The factor inventory carries material nobody holds.** Twelve of the **302** authenticators in inventory are sealed break-glass authenticators — the only multi-person credential anywhere in the estate, in a programme whose stated position is that zero shared authenticators exist. Both statements are true and the reconciliation between them is this record.

**The reading is contestable, and the programme has priced that.** A QSA reading "limited time period" strictly would require a different arrangement — most plausibly a scheduled re-authorisation cycle with the recovery gap that implies. The reasoning was put to Grant Whitfield at the April checkpoint and accepted, and it is written here **precisely so it can be challenged**, with the evidence to support that conversation rather than a policy line to defend.

**A permanent exception never leaves the register.** Every future exception report, every access review pack and every ROC will carry MFA-EX-04 with no closure date against it. That is the discomfort this decision buys and it is preferable to the alternative, which is an exception that expires on paper and is silently renewed.

**Everything else in 8.5.1 had to hold for this to be arguable at all.** The exception is only defensible because there is no other bypass to find: conditional access admits **no** exclusion group for in-scope resources, legacy authentication protocols are blocked at the identity provider and at the network layer, fallback to password-only on service failure is disabled, and the policy export is asserted daily with a **quarterly negative test** attempting each known bypass route. **Zero successful single-factor authentications** were recorded on any in-scope path across the period, evidenced from CT-05 authentication records rather than from policy configuration.

### What this decision does not claim

| Claim | Position |
|---|---|
| That the reading of "limited time period" is the only defensible one | It is **the reading Marketa adopted and put to the QSA**. A stricter reading is available and this record exists so that conversation starts from evidence |
| That eleven accounts is a small residual | It is eleven accounts that bypass the programme's strongest control. The compensation is that none holds a usable credential and every use is a P1 |
| That two controlled uses is an operating history | It is a **proof that the mechanism works**, obtained at a scheduled exercise. The first unplanned use is the real test and it has not happened |
| That session recording makes the accounts attributable in every case | Where **CT-11 itself** is the recovery target, attribution rests on an out-of-band recorded session with a human observer — a procedural control, and it is named as one |
| That the exception could be removed by better engineering | An account that depends on the MFA service cannot recover the MFA service. **This one is structural, and the four that were engineering problems were closed** |

## Related

- **ADR-0004** — no "Not Tested" findings; the same preference for a determinate recorded position over a comfortable silence
- **ADR-0011** — remove the capability rather than govern it; the pattern that closed **MFA-EX-02** and could not close this one
- **05.04 §4** — the eleven accounts under 8.2.2, their justification, release and attribution controls
- **05.04 §7** — the inactivity-disablement exemption and why applying the rule would be a category error
- **05.05 §14** — the bypass row, the fail-closed decision and the quarterly negative testing
- **05.05 §15.2** — the three readings of "limited time period" and the one adopted
- **DEC-506** — the decision log entry, 2026-06-03
