# RAID Log — Phase 03

## Risks
| ID | Risk | Impact | Mitigation | Owner |
|---|---|---|---|---|
| RA-01 | A further build-image or configuration drift reintroduces the fault | R-14 stays High; the scope determination is suspended again | Drift detection DA-1 to DA-6 continuous; Boundary Change Authority weekly | Trevor Kim |
| RA-02 | The 482-store rollout of SB-4.2 does not complete before the seasonal freeze | Stores remain on Track A correction rather than the durable fix | Four uncompressed waves completing 2026-07-06, well clear of October | Adaeze Nwosu |
| RA-03 | The drift control produces enough noise that real divergence is missed | The control exists but does not work | Divergence classified as segmentation-determining or hygiene; only the former resets the R-14 clock | Marcus Hale |
| RA-04 | Cloud segmentation cannot be evidenced to the same standard as physical | An assessment finding at fieldwork | IAM treated as a segmentation control; CloudTrail and flow logs as the evidence source | Trevor Kim |

## Assumptions
| ID | Assumption | If wrong | Test |
|---|---|---|---|
| AS-01 | The corrected build image is deployed identically at all 482 stores | Divergence returns silently | Drift detection, continuously, not by sampling |
| AS-02 | No path exists from Z5 to the CDE even if Z7 to Z5 fails again | A repeat of SEG-PT-01 would reach the CDE | Tested in the re-test; re-tested annually under 11.4.5 |
| AS-03 | The 214 legacy wireless PSK devices cannot reach a payment path | The legacy remnant becomes a live exposure rather than a hygiene issue | Isolation evidenced; becomes CAP-05 at the assessment |

## Issues
| ID | Issue | Status | Owner |
|---|---|---|---|
| IS-01 | Store 1183 — contractor stock switch image produced a permissive trunk during re-test fieldwork | Closed; **reset the R-14 clock** | Trevor Kim |
| IS-02 | Store 0629 — guest SSID moved to local switching without change classification | Closed; the single two-approver compliance failure in the cycle | Adaeze Nwosu |
| IS-03 | 214 legacy wireless PSK devices across 138 stores; key set 2019, never rotated | Open — becomes CAP-05 | Trevor Kim |
| IS-04 | Vendor-locked store appliances cannot accept credentialed scanning | Open — becomes CAP-06 | Trevor Kim |

## Dependencies
| ID | Dependency | On whom | Needed by |
|---|---|---|---|
| DP-01 | Re-test window | Ironwood Security Labs | 2026-06-26 — met |
| DP-02 | Store field engineering capacity for the SB-4.2 rollout | Store Operations | 2026-07-06 — met |
| DP-03 | Vendor cooperation on unassessable appliances | Appliance vendors | 2027 — carried to CAP-06 |
| DP-04 | Capital for legacy wireless replacement | Finance | 2027 — carried to CAP-05 |
