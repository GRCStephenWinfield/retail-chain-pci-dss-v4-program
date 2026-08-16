# Incident Response — From Alert to Notification

```mermaid
flowchart TD
    SRC["Detection sources · 12.10.5<br/>SIEM · 187 detection rules<br/>11.5.2 change detection<br/>10.7.2 control failure detection<br/>11.6.1 payment-page tamper detection"]
    SRC --> TRIAGE["Triage<br/>24/7 roster · 12 named personnel<br/>12.10.3"]
    TRIAGE --> SUSP{"Suspected OR confirmed<br/>security incident?"}
    SUSP -->|"no"| CLOSE["Adjudicated and closed<br/>recorded either way"]
    SUSP -->|"YES"| ACT["PLAN ACTIVATES<br/>the word SUSPECTED does the work<br/>ADR-0026"]
    ACT --> SEV["Severity assigned<br/>SEV-1 to SEV-4"]
    SEV --> CSIRT["CSIRT stood up<br/>standing authorities<br/>no approval needed to contain"]
    CSIRT --> NOT{"Account data<br/>compromise suspected<br/>or confirmed?"}
    NOT -->|"yes"| C5["Cardinal Merchant Bank<br/>within 24 HOURS of determination<br/>obligation C5"]
    C5 --> BRANDS["Card brand procedures<br/>referenced in the plan · 12.10.1"]
    C5 --> LEGAL["Legal analysis of reporting<br/>obligations · General Counsel"]
    NOT -->|"no"| CONT["Contain · eradicate · recover"]
    CONT --> LESSON["Lessons learned · 12.10.6<br/>a lesson either CHANGES THE PLAN<br/>or is recorded as declined<br/>ADR-0028"]
    LESSON --> ACT
```

## The word that does the work

**12.10.1** obliges a plan ready to be activated on a **suspected or confirmed** security incident. "Suspected" is doing most of the work in that sentence, and **ADR-0026** takes it literally: the plan activates on suspicion, not on confirmation.

The alternative — waiting for confirmation before standing up the response — means the response begins after the period in which it would have been most useful. A plan that activates only when you are certain is a plan that activates late by design.

## Source
`07.08-incident-response-plan.md`, `07.10-monitoring-and-response-to-alerts.md`.
