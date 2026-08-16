# Third-Party Service Provider — Annual Review

| Field | Value |
|---|---|
| Review | Requirement 12.8 annual TPSP compliance monitoring |
| Date | 2026-10-16 |
| Chair | Owen Castellanos, Payment Card Compliance Manager |
| Present | Naomi Bhatt (CISO), Frank Mueller (General Counsel), Elena Marchetti, Trevor Kim |
| Providers reviewed | **6** |

## 1. The population

Five providers at programme start. **Six after Phase 05** added the Ashburn co-location as TPSP-06 under ADR-0016 — physical security at a third-party facility is evidenced, not inherited.

| Provider | What Marketa depends on them for |
|---|---|
| Truvance Payments | The hosted checkout iframe, the payment gateway and the token vault — all three channels |
| Cadence Voice Solutions | DTMF pause-and-resume masking for the call centre |
| Verition POS Systems | The P2PE-validated solution and its decryption environment |
| Northbridge Managed Services | After-hours SOC monitoring |
| Halberd Data Destruction | Certified media destruction and the 9.4.7 certificates |
| Ashburn co-location provider | Physical security of the facility housing Marketa's DR environment |

## 2. What the review found

A **Truvance AOC scope statement did not clearly cover a service Marketa relies on.** It was clarified and re-issued.

Castellanos recorded why this matters more than it looks:

> "We have an AOC on file for Truvance. We had never read it against the list of things we actually use them for. An AOC is evidence about the services it names, and only those."

## 3. The elective targeted risk analysis

**TRA-12.8.4** was published: annual formal review **plus a quarterly status check**. The quarterly check exists for one purpose — catching an AOC that lapses between annual reviews, which annual monitoring alone would miss for up to eleven months.

## 4. The structural point

Bhatt asked the Committee to record the position plainly:

> "Phase 02 reduced our scope by eighty-eight per cent, and we were right to. But the card data did not disappear — it moved. Three providers now sit between us and our ability to accept payment at all. That is not a criticism of the architecture. It is the bill for it, and this meeting is where it arrives."

The concentration is carried in the register as a **structural residual** that does not reduce.

## 5. What cannot be delegated

The Committee recorded, at Coleman's request, that a provider can operate a control but **cannot hold Marketa's obligation**. The AOC is signed by Marketa's CFO under ADR-0002, and no responsibility matrix changes that.
