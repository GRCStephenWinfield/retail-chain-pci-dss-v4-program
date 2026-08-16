# Governance and Escalation

```mermaid
flowchart TD
    BOARD["Board of Directors"] --> AC["Audit Committee<br/>chair Priya Raghunathan<br/>quarterly"]
    AC --> STEER["PCI Steering Committee<br/>chair Raymond Voss CFO<br/>monthly"]
    IA["Internal Audit · Rosa Delgado<br/>attends as non-voting observer<br/>reports to the Audit Committee"] --> AC
    STEER --> PROG["Programme owner<br/>Naomi Bhatt CISO"]
    PROG --> MGR["Payment Card Compliance Manager<br/>Owen Castellanos<br/>day-to-day delivery"]
    MGR --> WG["PCI Working Group<br/>weekly"]
    WG --> W1["Network and infrastructure<br/>Trevor Kim"]
    WG --> W2["E-commerce engineering<br/>Sonia Rendell"]
    WG --> W3["Security operations<br/>Marcus Hale"]
    WG --> W4["Store operations · 482 stores<br/>Adaeze Nwosu"]
    WG --> W5["Payment operations<br/>Elena Marchetti"]
    WG --> W6["Call centre<br/>Bill Traynor"]
    QSA["Sable Ridge Assurance · QSA<br/>lead Grant Whitfield<br/>monthly checkpoint from 2026-03"] -.->|"assesses · does not decide"| PROG
    ACQ["Cardinal Merchant Bank<br/>acquirer"] -.->|"C1 to C10 obligations"| PROG
    PROG -->|"AOC signed by the CFO<br/>ADR-0002"| ACQ
```

## The two lines that matter

**Internal Audit does not report to the CISO.** Rosa Delgado reports to the Audit Committee, which is what makes her review of the programme worth anything.

**The QSA assesses; it does not decide.** Sable Ridge determines whether a requirement is met. It does not choose Marketa's controls, and it cannot make Marketa compliant. Responsibility stays with the assessed entity — which is why the AOC is signed by the CFO and not by the assessor.

## Source
`01.06-program-charter-and-objectives.md`, `01.07-roles-responsibilities-and-raci.md`.
