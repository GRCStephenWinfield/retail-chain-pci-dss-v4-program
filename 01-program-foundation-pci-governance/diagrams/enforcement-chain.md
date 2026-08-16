# Who Actually Enforces PCI DSS

```mermaid
flowchart LR
    COUNCIL["PCI Security Standards Council<br/>writes and maintains the standard<br/>qualifies QSAs and ASVs<br/>DOES NOT ENFORCE"]
    BRANDS["Card brands<br/>Visa · Mastercard · Amex · Discover<br/>set compliance programmes<br/>THE ENFORCERS"]
    ACQ["Cardinal Merchant Bank<br/>acquirer<br/>contractually liable to the brands"]
    MRG["Marketa Retail Group<br/>Level 1 merchant"]
    QSA["Sable Ridge Assurance<br/>QSA · qualified by the Council<br/>engaged and paid by Marketa"]
    COUNCIL -.->|"publishes the standard"| BRANDS
    COUNCIL -.->|"qualifies"| QSA
    BRANDS -->|"brand rules and programmes"| ACQ
    ACQ -->|"merchant agreement<br/>the only binding instrument on Marketa"| MRG
    MRG -->|"ROC and AOC"| ACQ
    ACQ -->|"validation status"| BRANDS
    QSA -.->|"assesses and signs the ROC"| MRG
```

## Three statements this diagram exists to make

**PCI DSS is contractual, not statutory.** It reaches Marketa through the merchant agreement with Cardinal Merchant Bank, and through nothing else. It is not a law, and no regulator enforces it.

**The Council does not enforce.** It writes the standard and qualifies assessors. Enforcement runs brand → acquirer → merchant.

**There is no "PCI certification" for a merchant.** A QSA issues a Report on Compliance and an Attestation of Compliance describing a point in time. Neither is a certificate, and neither is a determination of compliance with any law.

## Source
`01.02-pci-dss-landscape-and-v4-0-1.md`, `01.04-acquirer-and-card-brand-obligations.md`.
