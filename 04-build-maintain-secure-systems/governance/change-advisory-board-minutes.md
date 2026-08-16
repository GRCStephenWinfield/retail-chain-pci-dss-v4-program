# Change Advisory Board — Extract of Minutes

| Field | Value |
|---|---|
| Meeting | Change Advisory Board — significant-change definition |
| Date | 2026-05-08 |
| Chair | Trevor Kim, Director of Infrastructure &amp; Network |
| Present | Curtis Lang (CIO), Sonia Rendell, Marcus Hale, Adaeze Nwosu, Owen Castellanos |

## 1. The problem being solved

Five PCI requirements hang off the phrase **"significant change"** — 11.3.1 internal scanning, 11.3.2.1 external scanning, 11.4.3 penetration testing, 11.4.5 segmentation testing, and 12.5.2 scope re-confirmation. The standard does not define the phrase exhaustively. **The entity defines it, and the assessor tests the definition.**

Marketa had no written definition. In practice this meant that whether a change was significant was decided after the fact, usually by whoever was asked.

## 2. What Phase 03 contributed to this conversation

Castellanos noted that the guest-SSID change at store 0629 — moving local switching, which is precisely a change to a segmentation control — **had not been classified as a change at all**. It was handled as a store operational fix.

Kim accepted the point:

> "If we had a definition in November 2024, SB-4.1 would have been a significant change and we would have re-tested. The absence of a definition is not a paperwork gap. It is the reason a trunk carried every VLAN for eighteen months."

## 3. The definition adopted

Ten enumerated triggers, **SIG-1 to SIG-10**, covering: new system components in or connected to the CDE; changes to network topology, segmentation or firewall rules; changes to build images or deployment templates; new or materially changed applications handling account data; changes to the payment channel or a payment service provider; cloud account, VPC or IAM boundary changes; upgrades to operating systems, databases or platform versions; changes to encryption or key management; physical relocation of in-scope systems; and changes to the assessed scope itself.

## 4. Operating results in the period

| Measure | Value |
|---|---|
| Total changes | 1,043 |
| Classified as significant | **27** |
| Rejected at approval | 34 |
| Backed out after implementation | 11 |
| **6.5.2 confirmations producing a finding** | **4 of 27** |

## 5. The Chair's closing note

> "Four of twenty-seven confirmations found something. If that number had been zero I would have assumed the confirmation step was a signature exercise. It is the only evidence we have that the step does anything."
