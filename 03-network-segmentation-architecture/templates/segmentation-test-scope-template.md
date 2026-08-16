# Template — Segmentation Penetration Test Scope

> Requirement **11.4.5**: where segmentation is used to reduce scope, it must be tested **at least annually and after any change to segmentation controls**.
> *(11.4.6's six-month cadence applies to service providers. Marketa is a merchant.)*

| Field | Entry |
|---|---|
| Engagement reference |  |
| Provider |  |
| Fieldwork dates |  |
| Requirement | 11.4.5 |
| Trigger | Annual / change to segmentation controls — *state which* |

## 1. The claim being tested
| Question | Entry |
|---|---|
| Which zones are claimed to be isolated from the CDE? |  |
| **What is out of scope because of that claim?** | *State the number of systems. This is what the test is protecting* |
| Which ADR or scope decision depends on it? |  |

## 2. Sampling
| Question | Entry |
|---|---|
| Population |  |
| Sample size and percentage |  |
| **Strata** | *At least one stratum must target known messiness — recent local change, non-standard build, contractor-installed equipment (ADR-0009)* |
| Who selects within strata? | **The tester.** The entity does not select the sample |
| What was deliberately excluded, and why? |  |

## 3. Method
| Question | Entry |
|---|---|
| Attempt paths from which zones? | *Every out-of-scope zone, not only the obvious one* |
| Both directions tested? |  |
| Wireless in scope of the test? |  |
| Cloud boundaries in scope? |  |

## 4. Rules of engagement
| Question | Entry |
|---|---|
| Notification threshold and timescale | *e.g. Critical findings notified immediately* |
| Stop conditions |  |
| Named containment authority |  |
| Trading-hours constraints |  |

## 5. What a PASS will and will not mean
| Question | Entry |
|---|---|
| A pass proves | *The boundary held, on these dates, at these sites* |
| A pass does **not** prove | *That the process maintaining the boundary is sound. That needs operating history* |
| What operating evidence accompanies the test? | *e.g. continuous drift detection* |

> If the test cannot fail, it is not a test. Design the sample so that a real fault would be found.
