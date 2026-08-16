# Template — Significant Change Assessment

> Completed for **every** change before implementation. Five requirements hang off the outcome — 11.3.1, 11.3.2.1, 11.4.3, 11.4.5 and 12.5.2.
> Classifying after the fact is how a build image carried a segmentation fault for eighteen months.

| Field | Entry |
|---|---|
| Change reference |  |
| Description |  |
| Requester |  |
| Target date | *Note the October–January seasonal freeze* |

## 1. Classification — SIG-1 to SIG-10
| Trigger | Yes / No |
|---|---|
| New system component in, or connected to, the CDE |  |
| Change to network topology, segmentation or firewall rules |  |
| **Change to a build image or deployment template** |  |
| New or materially changed application handling account data |  |
| Change to a payment channel or payment service provider |  |
| Cloud account, VPC or IAM boundary change |  |
| Operating system, database or platform version upgrade |  |
| Change to encryption or key management |  |
| Physical relocation of an in-scope system |  |
| Change to the assessed scope itself |  |

**Any "Yes" makes this a significant change.**

## 2. Consequent obligations
| Obligation | Requirement | Required? | Owner | Date |
|---|---|---|---|---|
| Internal vulnerability scan until passing | 11.3.1 |  |  |  |
| External scan | 11.3.2.1 |  |  |  |
| Penetration test | 11.4.3 |  |  |  |
| **Segmentation test** | 11.4.5 |  |  |  |
| Scope re-confirmation | 12.5.2 |  |  |  |

## 3. The 6.5.2 confirmation — after implementation
| Question | Entry |
|---|---|
| All applicable requirements confirmed in place? |  |
| **Did the confirmation produce a finding?** | *4 of 27 did in the period. Zero would suggest the step is a signature exercise* |
| Documentation updated — diagrams, inventories, baselines |  |
| Confirmed by | *Not the implementer* |
| Date |  |

## 4. If not significant
| Question | Entry |
|---|---|
| Who classified it, and when? | *Before implementation* |
| Reviewed by a second person? |  |
| Recorded where? | *An unrecorded classification is an unmade decision* |
