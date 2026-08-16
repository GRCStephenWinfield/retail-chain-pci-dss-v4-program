# Payment-Page Script Inventory — Review Record

| Field | Value |
|---|---|
| Review | First 6.4.3 script inventory and the three unauthorised scripts |
| Date | 2026-03-13 |
| Chair | Naomi Bhatt (CISO) |
| Present | Sonia Rendell (E-Commerce Engineering), Owen Castellanos, Marcus Hale, Elena Marchetti |
| Also attending | Head of Digital Marketing |

## 1. What the inventory found

**38 scripts across 6 payment templates**, of which **11 are third-party**. Three were **unauthorised**: nobody could produce a business justification, an owner, or a record of a decision to place them there.

All three had arrived through the marketing tag manager.

## 2. The exchange that mattered

The Head of Digital Marketing observed that the tag manager had been used this way for years, that nothing had gone wrong, and that the tags in question were ordinary analytics pixels.

Rendell's response, minuted at the Chair's request:

> "All of that is true and none of it is the point. The container has permission to execute arbitrary JavaScript on the page where our customers type their card number. It does not matter what we have put in it so far. It matters what it is capable of putting there, and who has to approve that. Right now the answer is nobody."

The Chair added that the tag manager **was working exactly as designed** — the failure was that a business function had been handed a direct publication path onto a payment page and no one had ever decided it should have one.

## 3. Decisions

| # | Decision |
|---|---|
| 3.1 | The three unauthorised scripts are **removed** — not documented retrospectively |
| 3.2 | Payment-template publication is **removed as a capability** from the tag console. Publication accounts reduce from 19 to 6 |
| 3.3 | Marketing gets a **five-business-day approval SLA** in exchange. A control that makes the business wait indefinitely gets routed around |
| 3.4 | Two of the three may be **re-submitted with a written justification**; the container itself may not |
| 3.5 | Anything not on the inventory is **unauthorised by default** |

## 4. What happened next

Eleven tag submissions followed under the new SLA. **Seven were approved, four refused.** Two of the three removed scripts were re-justified and conditionally re-authorised on 2026-05-19. The container was not reinstated.

## 5. The limitation the Committee recorded

6.4.3 is **preventive**. It confirms a script is authorised and binds its integrity at the point of deployment. It cannot tell Marketa that an authorised third-party script has since been modified at its origin.

**That is 11.6.1, and it lands in Phase 06.** The Committee recorded explicitly that the script control is not complete until both are operating.
