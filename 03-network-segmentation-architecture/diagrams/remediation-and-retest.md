# From Failure to Tested Boundary

```mermaid
flowchart TD
    FAIL["2026-05-15 · TEST FAILS<br/>SEG-PT-01 Critical"]
    FAIL --> CONT["Containment<br/>store 0417 isolated in 41 minutes"]
    FAIL --> RAISE["2026-05-18 · R-14 RAISED<br/>4 times 4 equals 16 · High<br/>under ADR-0005"]
    FAIL --> SUSP["2026-05-19 · Steering Committee<br/>scope determination<br/>provisionally suspended"]
    CONT --> TA["Track A · the fast fix<br/>allowed-VLAN list restored<br/>at all 37 latent stores<br/>2026-05-19 to 05-20"]
    TA --> TB["Track B · the durable fix<br/>build image SB-4.2<br/>482 stores in four waves<br/>2026-05-20 to 07-06"]
    TB --> DRIFT["2026-06-15 · Drift detection live<br/>DA-1 to DA-6 across the estate<br/>so Marketa finds the next one"]
    DRIFT --> RETEST["2026-06-26 · RE-TEST PASSED<br/>41 stores · 8.5 percent<br/>zero findings"]
    RETEST --> ADR["2026-07-06 · ADR-0006 restored<br/>and AMENDED — now contingent on<br/>the drift control operating"]
    RETEST --> LIMIT["What the re-test does NOT prove<br/>the process that let the boundary rot<br/>is fixed. That needs operating history"]
    DRIFT --> HIST["First 31 days · 14,942 store-days<br/>11 divergences · 2 segmentation-determining<br/>R-14 clock RESET to 2026-07-03"]
```

## The distinction that matters

The re-test proves **the boundary holds today**. It does not prove the process that allowed a build image to silently drop an allowed-VLAN list for eighteen months has been fixed. Only operating history proves that, which is why **R-14 stays High** with a 90-day clean-operation exit criterion — and why that clock was **reset** when two further divergences appeared in the first month.

A clock that never resets is not a clock.

## Source
`03.08-remediation-and-retest.md`, `03.09-nsc-ruleset-governance.md`.
