# Where the Account Data Actually Was

```mermaid
flowchart TD
    SEARCH["Discovery across 100 percent of the estate<br/>1,842 systems · 41 shares · 6 email archives"]
    SEARCH --> F1["PAN-01 · Call recording archive<br/>approx 11,400 recordings with audible PAN<br/>predating DTMF masking"]
    SEARCH --> F2["PAN-02 · Legacy dispute file share<br/>2,187 scanned documents<br/>in clear, unencrypted share"]
    SEARCH --> F3["PAN-03 · Debug log on a decommissioned host<br/>1,143 PAN instances<br/>host retired in 2022, never terminated"]
    SEARCH --> F4["PAN-04 · Emailed spreadsheet<br/>34 records across 11 copies<br/>customer emailed a card number"]
    F1 --> OUT["NONE of the four was inside<br/>the 604 systems believed in scope"]
    F2 --> OUT
    F3 --> OUT
    F4 --> OUT
    OUT --> D1["A-04 DISPROVED<br/>masking was forward-only"]
    OUT --> D2["A-07 DISPROVED<br/>dispute handling creates documents"]
    D1 --> R["R-31 RAISED<br/>likelihood 4 times impact 4 equals 16<br/>High · raised 2026-02-05"]
    OUT --> P["Four 12.10.7 procedures created<br/>P-1 media · P-2 unstructured stores<br/>P-3 orphaned assets · P-4 inbound customer data"]
```

## Why the risk went up after everything was fixed

All four locations were remediated. The archive is gone, the share is destroyed, the host is terminated, the spreadsheet copies are purged.

**The risk still rose**, because the Low rating attached to historical account data had rested on a belief — that DTMF masking had solved the problem — and the belief was wrong. Fixing four locations does not restore confidence in an estate nobody had ever searched. That confidence returns when the search runs again and finds nothing, not when the first search is cleaned up.

## Source
`02.03-unexpected-pan-locations-and-response.md`, `02.11-assumption-test-results.md`.
