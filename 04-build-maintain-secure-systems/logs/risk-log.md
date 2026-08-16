# Risk Log — Phase 04

The baseline register is `03.11-risk-register.md` — **44 risks, 9 High · 21 Moderate · 14 Low**. This log records what Phase 04 changed.

| ID | Risk | Baseline | Phase 04 effect | Standing | Owner |
|---|---|---|---|---|---|
| **R-01** | Unauthorised or malicious script on a payment page | **High 20** | 6.4.3 implemented in full; 3 unauthorised scripts removed; the publication path closed | **Held** — 6.4.3 is preventive only. Reduces once **11.6.1** lands in Phase 06 and both have run a cycle | Sonia Rendell |
| R-17 | Application and system accounts with embedded credentials | High 16 | Inventory built under 8.6.1; credentials moved to the vault with programmatic retrieval | **Partially treated** — 2 legacy batch integrations remain and become the 8.6.2 finding | Trevor Kim |
| R-20 | Destructive malware and business interruption | Moderate 12 | EDR across 71 components; 5.3.3 removable media; 5.4.1 automated anti-phishing | **Held** — three months of operating history is not a track record | Marcus Hale |
| R-21 | Unpatched vulnerability exploited in the CDE | Moderate 12 | Ranking methodology, patch SLA, exception register with owner and expiry | **Held** — the seasonal freeze has not yet been survived once under the new SLA | Marcus Hale |
| R-30 | Patching against the seasonal freeze | Moderate 9 | Freeze-aware patch planning; pre-freeze remediation gate | Reduced on the first successful freeze cycle, not before | Marcus Hale |
| R-34 | Payment-page script inventory drift | Moderate 12 | The injection mechanism removed rather than governed; publication accounts 19 → 6 | **Reduced** | Sonia Rendell |
| R-37 | Insecure development practice introduces a flaw | Moderate 9 | 6.2 SDLC, annual developer training, code review by someone other than the author | **Held** — one training cycle is not evidence of practice | Sonia Rendell |

## The honest position

Almost everything in this phase is **held rather than reduced**, and that is deliberate. Every control here was deployed within the last three months. A control with no operating history is a design, not a demonstrated reduction — and the register moves when evidence accumulates, not when something is switched on.

The one clear reduction is **R-34**, and it is clear precisely because the treatment was to **remove a capability** rather than to govern its use. Capabilities that no longer exist do not need an operating history.
