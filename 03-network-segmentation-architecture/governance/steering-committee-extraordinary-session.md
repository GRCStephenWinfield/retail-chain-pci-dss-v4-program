# PCI Steering Committee — Extraordinary Session

| Field | Value |
|---|---|
| Meeting | Extraordinary session, convened on the segmentation penetration test result |
| Date | 2026-05-19 |
| Chair | Raymond Voss, Chief Financial Officer |
| Present | Naomi Bhatt (CISO), Curtis Lang (CIO), Trevor Kim, Adaeze Nwosu, Owen Castellanos, Frank Mueller (General Counsel) |
| In attendance | Rosa Delgado (Internal Audit, non-voting observer) |

## 1. What was reported

Ironwood Security Labs reached the **store back-office VLAN from store guest wireless in 19 minutes**, at store 0417 in Dayton, Ohio, on 2026-05-15. Containment followed 41 minutes after notification.

The root cause is a trunk port template in store build image **SB-4.1**, released November 2024, which lost its allowed-VLAN list. The fault is **latent at 37 stores**; it became exploitable at one, where the guest SSID had been moved to local switching in September 2025 to resolve a latency complaint.

**The test result is FAIL.**

## 2. The Chair's first question

Voss asked why a configuration review in March had concluded the boundary was closed.

Kim's answer, recorded at the Chair's request:

> "Because we read the intended configuration and not the deployed one. The template said what the trunk should carry. Nobody compared that to what the trunk actually carried, at 482 stores, for eighteen months. Configuration review tells you what you meant. It does not tell you what is running."

## 3. Decisions

| # | Decision |
|---|---|
| 3.1 | **The Phase 02 scope determination is provisionally suspended** pending remediation. ADR-0006 made the store estate's classification contingent on this boundary; the contingency has triggered |
| 3.2 | **R-14 is raised** to 4 × 4 = 16 (High), under ADR-0005. The Committee explicitly rejected holding the rating on the grounds that the tester never reached the CDE |
| 3.3 | Remediation runs on **two tracks** — immediate VLAN restoration at the 37 latent stores, then a corrected build image to all 482 |
| 3.4 | **Cardinal Merchant Bank will be notified** under obligation C7, notwithstanding that no compromise occurred |
| 3.5 | A **re-test is commissioned** covering a materially larger store sample, and it must pass before the scope determination is restored |
| 3.6 | A **continuous drift-detection control** is commissioned. Periodic review demonstrably did not find this |

## 4. The exchange the Committee asked to be minuted

A member observed that the finding affected one store out of 482 and asked whether the response was proportionate.

Bhatt's answer:

> "One store is where both preconditions happened to coincide. The template fault is sitting at thirty-seven. If we report this as a single-store issue we will be telling ourselves that a latent fault at thirty-seven sites is a coincidence rather than a control failure. And the number that matters is not how many stores — it is nineteen minutes, from a wireless network any customer can join."

The Committee accepted the position without dissent. The Chair recorded that **"only one store" is not to appear in any reporting of this finding.**

## Source
`03.07`, `03.08`, `03.13`.
