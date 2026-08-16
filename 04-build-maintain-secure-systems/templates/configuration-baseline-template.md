# Template — Configuration Baseline

> Requirement **2.2.1**: configuration standards for all system component types, addressing known security vulnerabilities and consistent with industry-accepted hardening guidance.
> Under **ADR-0012**, this document defines the target. It is **never** the evidence that the target is met.

| Field | Entry |
|---|---|
| Baseline ID | BL-nnn |
| Platform |  |
| Components covered | *Count, and which of the 71* |
| Derived from | *Named industry hardening guidance and version* |
| Owner |  |
| Review cadence |  |

## 1. Required settings
| Item | Setting | Requirement | Rationale | Machine-verifiable? |
|---|---|---|---|---|
|  |  | 2.2.x |  | *If no, state how it is evidenced instead* |

## 2. The mandatory items
| Requirement | Coverage in this baseline |
|---|---|
| **2.2.2** Vendor default accounts — removed or disabled; where they must remain, password changed |  |
| **2.2.3** Only one primary function per component, or functions of differing security levels isolated |  |
| **2.2.4** Unnecessary services, protocols, daemons and functions disabled or removed |  |
| **2.2.5** Where an insecure service is necessary — business justification **and** additional security features |  |
| **2.2.6** System security parameters configured to prevent misuse |  |
| **2.2.7** Non-console administrative access encrypted with strong cryptography |  |

## 3. Measurement class — ADR-0012
| Question | Entry |
|---|---|
| Class | **Asserted** (machine-evaluated continuously) / **Observed** (inspected — state why it cannot be asserted) / **Attested** (provider attestation) |
| Assertion IDs | CA-n … |
| Cadence |  |
| **Negative testing** | *How is it confirmed that the assertion would detect a divergence?* |

## 4. Deviations
| Deviation | Component(s) | Justification | Compensating measure | Approver | Expiry |
|---|---|---|---|---|---|
|  |  |  |  |  | *A deviation with no expiry is a permanent change to the baseline — amend the baseline instead* |

> Test before publishing: if every component drifted from this baseline tomorrow, how long before anyone knew? If the answer is "the annual review", the baseline is not being measured.
