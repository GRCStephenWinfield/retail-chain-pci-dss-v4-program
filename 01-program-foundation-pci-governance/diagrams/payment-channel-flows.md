# Payment Channel Flows

```mermaid
flowchart TD
    subgraph CP["CARD PRESENT — 50.6M transactions"]
        SHOP["Customer at one of 1,914 lanes"] --> POI["Verition POI terminal<br/>P2PE validated · SRED<br/>encrypts at swipe or tap"]
        POI --> STORE["Store back-office and WAN<br/>carries ciphertext only<br/>NOT in the CDE"]
    end
    subgraph EC["E-COMMERCE — 15.7M transactions"]
        WEB["Customer on a Marketa payment page"] --> IFRAME["Truvance-served checkout iframe<br/>card fields never touch a Marketa origin"]
        PAGE["Marketa page and its 38 scripts<br/>IN SCOPE for 6.4.3 and 11.6.1"] -.-> IFRAME
    end
    subgraph MO["MOTO CALL CENTRE — 2.1M transactions"]
        CALLER["Customer on the phone"] --> DTMF["Cadence pause-and-resume masking<br/>tones suppressed before Marketa telephony"]
        AGENT["Agent desktop · 310 agents<br/>never sees or hears the PAN"] -.-> DTMF
    end
    STORE --> VDEC["Verition P2PE decryption environment"]
    VDEC --> TRU["Truvance Payments<br/>gateway and single token vault"]
    IFRAME --> TRU
    DTMF --> TRU
    TRU --> ACQ["Cardinal Merchant Bank<br/>acquirer"]
    ACQ --> BRANDS["Visa · Mastercard · Amex · Discover"]
    TRU --> TOKEN["Token returned to Marketa<br/>one token namespace across all three channels"]
    TOKEN --> CDE["Corporate CDE · 8 systems<br/>payment ops · chargebacks · settlement · refunds<br/>THE ASSESSED ENVIRONMENT"]
```

## The point of this diagram

Three channels, three different scope-reduction mechanisms, **one token namespace**. In every channel the PAN is taken out of Marketa's hands before it reaches a Marketa system — encrypted at the POI, collected inside a Truvance iframe, or suppressed before the tone reaches the telephony platform.

What remains in the CDE is the **corporate payment operations estate**, because chargebacks, settlement reconciliation and refunds are the one place a human at Marketa legitimately handles account data.

## Source
`01.01-company-profile-and-payment-channels.md`, `FACTS §4`.
