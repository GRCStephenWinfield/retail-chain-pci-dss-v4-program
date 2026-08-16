# Template — Account Data Flow Record

> One record per account data flow, supporting the diagram required by **Requirement 1.2.4**.
> A flow diagram without records behind it cannot be verified; records without a diagram cannot be read.

| Field | Entry |
|---|---|
| Flow ID | F-nn |
| Name |  |
| Channel | Card-present / e-commerce / MOTO / internal / third-party |
| Frequency and volume |  |
| Owner |  |

## 1. The flow
| Field | Entry |
|---|---|
| Origin | *Where the data enters Marketa's world* |
| Destination |  |
| Systems traversed | *Every one. If a component only forwards ciphertext, say so* |
| Network zones traversed |  |
| Third parties involved |  |

## 2. The data
| Field | Entry |
|---|---|
| Data elements | PAN / name / expiry / service code / SAD |
| **State in transit** | Clear / encrypted / tokenized / truncated |
| **Does it come to rest anywhere?** | *If yes, name the system and the Requirement 3 controls that apply* |
| Retention, if any |  |

## 3. Protection
| Question | Entry |
|---|---|
| Cryptography in transit and its basis | *Requirement 4.2.1* |
| Where encryption terminates |  |
| Key custody | *Whose keys, held where* |
| Could an operator see clear PAN at any point? |  |

## 4. Verification
| Question | Entry |
|---|---|
| How was this flow **proved**, not described? | *Capture, log analysis, code review, test transaction* |
| Date proved |  |
| Re-verified when? | *At minimum, annually under 12.5.2 and on change* |

> The test: could someone who has never seen this environment redraw the diagram from the flow records alone? If not, the records are incomplete.
