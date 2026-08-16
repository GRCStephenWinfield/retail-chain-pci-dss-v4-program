# Incident Response Tabletop — Exercise Record

| Field | Value |
|---|---|
| Exercise | **TT-2026-01** — annual test of the incident response plan under 12.10.2 |
| Date | 2026-06-24 |
| Attendees | 17 |
| Scenario author | **Somebody who did not write the plan** (ADR-0027) |
| Scenario | A common-point-of-purchase alert from the acquirer implicating roughly 1,900 accounts |

## 1. Why the scenario was chosen by an outsider

Under **ADR-0027** the exercise scenario is set by someone who did not write the plan. The reasoning is short: an author testing their own plan tests the parts they thought about, and the parts they thought about are the parts that already work.

The chosen scenario was deliberately awkward. A common-point-of-purchase alert arrives **from outside** — from the acquirer — rather than from Marketa's own detection, which means the response begins with the organisation already behind and with an external party's timeline running.

## 2. What it disproved

The exercise took **9 hours 20 minutes** to reach a determination that the plan assumed would take four.

The delay was not technical. It came from the interaction between three things nobody had exercised together: obtaining transaction-level data across three payment channels, reconciling it against a token namespace held by a third party, and doing both while the General Counsel needed an answer for a notification clock that had already started.

**A tabletop that finds nothing was not a test.** This one found six things.

## 3. Findings

| ID | Finding | Disposition |
|---|---|---|
| TTF-1 | Determination time materially exceeded the plan's assumption | Plan amended; the assumption was removed rather than adjusted |
| TTF-2 | Cross-channel transaction reconciliation had no documented procedure | Procedure written |
| TTF-3 | The token-namespace dependency on Truvance was not in the plan's contact strategy | Added; contact register extended |
| TTF-4 | The 24-hour C5 clock starts on **determination**, and nobody had defined what determination means | Defined |
| TTF-5 | Two named alternates were unavailable and no deputy was recorded | Roster corrected |
| TTF-6 | The plan referenced card-brand procedures by name but nobody present had read them | Read; summarised into Annex A |

## 4. The lessons-learned discipline

Under **ADR-0028**, a lesson either **changes the plan** or is **recorded as declined, with a reason**. Eleven lessons were raised across the year; **nine amended the plan and two were declined**, and the two declinations are in the log.

Hale's note:

> "A lessons-learned log with no declinations is a log where the inconvenient lessons quietly evaporated. If we never say no, nobody can tell what we actually considered."

## 5. Plan version

The plan moved from **v2.0 to v3.0** on the back of this exercise and the year's operational lessons.
