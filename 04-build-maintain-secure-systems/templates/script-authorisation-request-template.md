# Template — Payment-Page Script Authorisation Request

> Required under **6.4.3** before any script may execute on a payment page.
> **Anything not on the inventory is unauthorised by default.** There is no retrospective authorisation.

| Field | Entry |
|---|---|
| Request ID |  |
| Requested by |  |
| Date submitted |  |
| **SLA** | Five business days to a decision |
| Templates affected | TPL-01 … TPL-06 — *list each* |

## 1. The script
| Field | Entry |
|---|---|
| Name and version |  |
| Origin | First-party / third-party — *if third-party, name the vendor* |
| Served from | *Which origin actually serves the bytes* |
| Does it load further scripts? | *A container that can load anything is a request to authorise everything* |

## 2. Business justification — required by 6.4.3
| Question | Entry |
|---|---|
| What business purpose does it serve? |  |
| **Why must it run on a payment page specifically?** | *Most analytics do not need to. This is the question that refuses four submissions in eleven* |
| What breaks if it is not there? |  |
| Named business owner |  |

## 3. Risk review
| Question | Entry |
|---|---|
| What can it read from the page? |  |
| Can it observe form fields, keystrokes or the DOM around the iframe? |  |
| Does it make outbound requests, and to where? |  |
| What happens if the vendor is compromised? |  |

## 4. Integrity binding — required by 6.4.3
| Question | Entry |
|---|---|
| Method | Subresource Integrity / build-pipeline hash / nonce-bound module |
| **If SRI is not possible, why not, and what replaces it?** |  |
| CSP directive required |  |
| How is a post-authorisation change at the origin detected? | *This is 11.6.1's job, not 6.4.3's — name the detection, do not assume it* |

## 5. Decision
| Field | Entry |
|---|---|
| Named authoriser |  |
| Decision | Approved / Conditionally approved / **Refused** |
| Conditions |  |
| Inventory ID assigned | SCR-nn |
| Date effective |  |

> If the justification would embarrass you in a forensic report after a skimming incident, refuse it.
