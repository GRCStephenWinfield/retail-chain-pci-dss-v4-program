# Template — Network Change Request

> Governs changes under **1.2.2** (change control for NSC configurations) and any change that could affect a segmentation boundary.

| Field | Entry |
|---|---|
| Change reference |  |
| Requester |  |
| Target date |  |
| Sites affected | *If store-side: remember this is a 482× problem* |

## 1. Classification — complete first
| Question | Yes / No |
|---|---|
| Does it alter a network security control configuration? |  |
| Does it alter a VLAN, trunk, route, security group, NACL or firewall rule? |  |
| Does it alter which zones can reach which? |  |
| Does it alter wireless configuration or SSID switching behaviour? | *Store 0629's local-switching change was not classified. It should have been* |
| Does it alter a build image or deployment template? | *SB-4.1's fault entered this way* |

**Any "Yes" makes this a boundary-affecting change**, requiring Boundary Change Authority approval and two approvers.

## 2. The change
| Field | Entry |
|---|---|
| Current state | *Deployed state, evidenced — not intended state* |
| Proposed state |  |
| Business justification | *Required under 1.2.5 for any port, service or protocol* |
| Rollback plan |  |

## 3. Boundary impact
| Question | Entry |
|---|---|
| Zones affected |  |
| Does any scope reduction depend on the boundary being changed? |  |
| **Does this require a segmentation re-test under 11.4.5?** | *"Change to segmentation controls" triggers testing — do not defer this question* |
| Drift-detection assertions affected |  |

## 4. Approval
| Role | Name | Date |
|---|---|---|
| Requester |  |  |
| Technical approver |  |  |
| Boundary Change Authority |  |  |
| Second approver | *Two approvers required for boundary-affecting change* |  |

## 5. Post-implementation
| Question | Entry |
|---|---|
| Deployed state verified against intent |  |
| Drift detection confirms the expected state |  |
| Diagrams updated under 1.2.3 and 1.2.4 |  |
| Re-test obligation raised, discharged or not applicable |  |
