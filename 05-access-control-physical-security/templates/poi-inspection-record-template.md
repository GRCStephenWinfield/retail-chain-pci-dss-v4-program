# Template — POI Device Inspection Record

> Requirement **9.5.1.2**. Completed by the colleague on shift, at the lane, at the frequency set by **TRA-9.5.1.2.1**.
> Designed under **ADR-0017** to require no judgement and no separate documentation step.

| Field | Entry |
|---|---|
| Store |  |
| Lane |  |
| Device make and model |  |
| **Serial number read from the device** | *Read it off the device. Do not copy it from the register* |
| Inspector |  |
| Date and time |  |

## 1. Compare against the aid
| Check | Matches the aid? |
|---|---|
| Device shape and panel alignment |  |
| Card slot and contactless area |  |
| Keypad surface |  |
| Cables and connections |  |
| Any attachment not shown in the aid |  |

## 2. Serial verification — 9.5.1.1
| Question | Entry |
|---|---|
| Serial read from the device |  |
| Serial recorded in the register |  |
| **Match?** | *Substitution is the attack the visual check will not catch. A cloned device can look perfect* |

## 3. Tamper-evident seals
| Question | Entry |
|---|---|
| Seals present and intact? |  |
| Seal serial matches the record? |  |
| Any evidence of reseal? | *If yes, a vendor service record must exist. Five of Q3's six discrepancies were unrecorded reseals* |

## 4. Photograph
| Required | Captured |
|---|---|
| Full device, front |  |
| Card slot and contactless area |  |
| Cable entry |  |
| Seal |  |

## 5. Outcome
| Outcome | Action |
|---|---|
| No discrepancy | Record and close |
| **Any discrepancy** | **Remove the terminal from service and escalate under POI-8.** Do not assess whether it is serious — that is not your call, and it is deliberately not your call |

> If somebody arrives to service or replace this terminal, verify their identity against the work order before granting access. Nine unannounced tests were run last year and **two colleagues failed**. There is no penalty for refusing access to someone who turns out to be genuine.
