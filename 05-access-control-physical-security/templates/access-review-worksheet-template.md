# Template — Access Review Worksheet

> Requirement **7.2.4**: review all user accounts and related access privileges **at least once every six months**, confirm access remains appropriate, and obtain **management acknowledgement**.
> Application and system accounts are reviewed under **7.2.5 / 7.2.5.1** at the frequency set by TRA-7.2.5.1.

| Field | Entry |
|---|---|
| Review cycle |  |
| Population reviewed | *Take the population from the IAM extract, not from the role catalogue — the catalogue is what you believe, the extract is what exists* |
| Reviewer |  |
| Reviewer's relationship to the population | *A reviewer who granted the access is not reviewing it* |

## 1. Per role
| Role ID | Assignments | Business function it serves | Still required? | Revocations |
|---|---|---|---|---|
|  |  | *State the function. "Historical" is not a function* |  |  |

## 2. Management acknowledgement — what it requires
| Question | Entry |
|---|---|
| Acknowledged **by role**, not by list? | *Clicking approve on 1,247 lines is not acknowledgement* |
| For each role, can the reviewer state the justifying business function? |  |
| **Where the reviewer could not state it, was access revoked?** | *Revoked, not deferred. 41 of 214 cycle-1 revocations arose this way* |
| Acknowledgement recorded by whom, and when? |  |

## 3. Exceptions and orphans
| Finding | Count | Disposition |
|---|---|---|
| Accounts with no matching HR record |  | *Cycle 1 found 19 unregistered contractors — the JML process was working on a population it did not know existed* |
| Accounts inactive beyond 90 days (8.2.6) |  |  |
| Privileged access without documented approval |  |  |
| Shared or generic accounts (8.2.2) |  | *Each requires a documented exception and individual accountability* |

## 4. Cycle comparison
| Question | Entry |
|---|---|
| Revocations this cycle vs last |  |
| **If the number fell sharply, is that a working process or a less rigorous review?** | *Do not assume the flattering explanation. Cycle 3 is sampled independently by Internal Audit for exactly this reason* |
