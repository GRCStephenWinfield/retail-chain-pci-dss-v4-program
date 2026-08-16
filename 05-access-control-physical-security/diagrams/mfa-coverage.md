# MFA — What 8.4.2 Actually Changed

```mermaid
flowchart TD
    OLD["Under v3.2.1<br/>MFA obliged for<br/>ADMINISTRATIVE and REMOTE access only"]
    OLD --> A1["8.4.1 · non-console administrative<br/>access to the CDE<br/>15 administrators"]
    OLD --> A3["8.4.3 · remote network access<br/>from outside the network<br/>remote users and third parties"]
    NEW["Under v4.0.1 since 2025-03-31<br/>8.4.2 · MFA for ALL ACCESS<br/>INTO THE CDE"]
    NEW --> B1["Every administrator"]
    NEW --> B2["Every ordinary user<br/>36 non-administrative<br/>Payment Operations users<br/>THE HEADLINE POPULATION"]
    NEW --> B3["Console and non-console alike"]
    NEW --> B4["On-network access, not only remote"]
    RULES["8.5.1 · system requirements<br/>not susceptible to replay<br/>cannot be bypassed except by a<br/>documented time-bounded exception<br/>at least two DIFFERENT factor types<br/>success requires ALL factors"]
    RULES -.-> NEW
    NEW --> SCALE["Touched every one of the<br/>71 assessed components<br/>the largest single workstream<br/>in the programme"]
```

## The sentence entities misread

**8.4.2 is not "MFA for admins".** It is MFA for *all* access into the cardholder data environment. An organisation that already had MFA on administrative and remote access under v3.2.1 — as Marketa did — can read 8.4.2 and conclude it is already compliant.

It is not. The population that changes is the **ordinary user who logs into a CDE system from inside the corporate network**: the disputes analyst, the settlement clerk, the refunds administrator. At Marketa that is **36 people who had never used a second factor to reach those systems**, against 15 administrators who always had.

## Source
`05.05-authentication-and-mfa.md`.
