# Template — Scope Decision Record

> One record per system, network segment or process where an in-scope / out-of-scope determination is made.
> **A determination without a recorded reason is not a determination.**

| Field | Entry |
|---|---|
| Record ID | SDR-nnn |
| System / segment / process |  |
| Owner |  |
| Date of determination |  |
| Reassessed by |  |

## 1. The determination
| Question | Entry |
|---|---|
| Does it **store, process or transmit** account data? |  |
| Is it **connected to** or could it **impact the security of** the CDE? |  |
| Is it a **security service** for the CDE (authentication, logging, monitoring, patching)? |  |
| **Determination** | CDE / Connected-to / Security-impacting / **Out of scope** |

## 2. If out of scope — the conditions
| Question | Entry |
|---|---|
| What mechanism removes it from scope? | P2PE / tokenization / DTMF masking / segmentation / no account data |
| **What conditions must hold for that to remain true?** | *State each one. A scope reduction is conditional, always* |
| How is each condition verified, and how often? |  |
| What brings it back into scope? |  |

## 3. Evidence
| Evidence | Location |
|---|---|
| Data-flow diagram reference |  |
| Discovery scan result |  |
| Configuration or architecture evidence |  |
| Third-party attestation, if relied upon |  |

## 4. Review
| Question | Entry |
|---|---|
| Next scheduled review | *At minimum, the annual 12.5.2 scope confirmation* |
| Change events that trigger early review |  |

> **Test before filing:** could a QSA reach the same determination from this record alone, without asking anyone a question? If not, it is not finished.
