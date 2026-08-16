# Template — Detection Rule

> Supports **10.4.1.1**: automated mechanisms perform the review. Under **ADR-0020**, a dashboard is not a review — detection content is.

| Field | Entry |
|---|---|
| Rule ID |  |
| Name |  |
| Owner |  |
| Date deployed |  |
| Review cadence |  |

## 1. What it detects
| Question | Entry |
|---|---|
| Describe the behaviour, not the tool output |  |
| **Which 10.2.1 event class does it cover?** | *10.2.1.1 user access to cardholder data · .2 administrative actions · .3 access to audit logs · .4 invalid access attempts · .5 credential changes · .6 audit log initialisation, stopping or pausing · .7 system-level object creation and deletion* |
| Components in scope | *Of the 71* |
| Risk register link |  |

## 2. Logic
| Field | Entry |
|---|---|
| Data sources |  |
| Logic summary |  |
| Enrichment applied |  |
| Threshold or baseline |  |

## 3. Fidelity
| Question | Entry |
|---|---|
| Expected true-positive rate |  |
| Known benign triggers | *Name them. An unnamed benign trigger becomes a suppression nobody remembers approving* |
| **How would this rule fail silently?** |  |
| **Negative test** — how is it confirmed the rule still fires? | *Required. See ADR-0022* |

## 4. Response
| Field | Entry |
|---|---|
| Triage procedure |  |
| Escalation path |  |
| Expected time to adjudication |  |

## 5. Suppressions
| Suppression | Reason | Owner | **Expiry** |
|---|---|---|---|
|  |  |  | *A suppression with no expiry is a scope change to the control. Approve it as one* |
