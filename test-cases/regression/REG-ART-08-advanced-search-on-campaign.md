---
id: REG-ART-08
title: Advanced search filter Is on campaign = Yes
module: Articles
type: regression
priority: P2
status: active
preconditions: Logged in, store LIVS. Stable campaign 2014233 is Active, with articles 55, 71 and 259.
---

## Steps
1. Open **Articles > Articles**, reload the page and open **Advanced search**. Do not press Reset.
   - **Expected:** The modal is open, and the "Is on campaign" drop-down offers blank, Yes and No.
2. Set **Is on campaign = Yes** and press **Search**.
   - **Expected:** A limited list (30 rows on 2026-11-14) that includes `55` DOMESTOS, `71` Test8 and `259` Vilka doningar, and does **not** include `238` Banan.

## Cleanup
None (read-only).

## Change log
- 2026-11-14: created by /explore
