# Payment-Page Tamper Detection — Go-Live Review

| Field | Value |
|---|---|
| Control | Requirement **11.6.1** — change- and tamper-detection on payment pages |
| Go-live | **2026-08-13** |
| Owner | Sonia Rendell, Director of E-Commerce Engineering |
| Present | Naomi Bhatt (CISO), Marcus Hale, Owen Castellanos |

## 1. What was switched on

Synthetic browser agents fetch the six payment templates **from outside Marketa's network**, across **192 permutations** of geography, device class and network path, and compare the received **HTTP headers, DOM and script content** against an approved baseline reconciled to the 6.4.3 inventory.

**Alerting inside 24 hours**, against a requirement floor of weekly. The frequency is set by **TRA-11.6.1**, and the reasoning is short: the window between evaluations is the window in which a skimming script operates undetected.

## 2. The design decision that mattered

Rendell rejected an implementation that would have compared source control against the deployed bundle inside the estate:

> "That tells you what we published. It does not tell you what the customer received. Those are the same thing right up until the moment they are not, and the moment they are not is the only moment this control exists for."

## 3. What it can and cannot do

| Can | Cannot |
|---|---|
| Detect modification of an authorised third-party script **at its origin, after deployment** — the gap 6.4.3 structurally cannot close | **Prevent** anything. It is detective |
| Detect header changes, injected elements and content substitution as received | Distinguish a malicious change from a vendor's legitimate one without human triage |
| Detect geography- or device-targeted injection, through the fetch permutations | Cover a page not in the baseline — which is why the baseline is reconciled monthly to the 6.4.3 inventory |

## 4. The proof that both halves were needed

The Committee asked for a concrete case rather than an argument. Rendell provided two:

| Case | What it shows |
|---|---|
| A vendor released a new version of an authorised script, and the release arrived **before** the contractual notification | **6.4.3 alone would have permitted it** — the script was authorised, and its integrity method was a contract. 11.6.1 saw the change |
| The baseline itself | **11.6.1 alone would have had no authorised state to compare against**, and would have been tuned toward silence within a quarter |

## 5. The standing instruction

**A quarter with zero alerts is treated as a defect to investigate, not as a success.** Alert volume and disposition are reported monthly. A detective control that has stopped speaking is indistinguishable from one that has stopped working.

## 6. Determination

The script control is recorded as **complete**: 6.4.3 preventive plus 11.6.1 detective. **R-01 moves from High 20 to Moderate 10** — likelihood 4 → 2, impact held at 5.
