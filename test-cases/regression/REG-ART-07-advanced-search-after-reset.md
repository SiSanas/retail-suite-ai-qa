---
id: REG-ART-07
title: Advanced search applies a filter entered after Reset
module: Articles
type: regression
priority: P1
status: active
preconditions: Logged in, store LIVS. Stable article 238 Banan exists.
---

## Steps
1. Open **Articles > Articles**, open **Advanced search**, type `238` in **Article Id** and press **Search**.
   - **Expected:** The list shows only `238` / `Banan`.
2. Open **Advanced search** again and press **Reset**.
   - **Expected:** Article Id is empty and Status is back to "Created, Active".
3. Wait 5 seconds, type `Banan` in **Article Name** and press **Search**.
   - **Expected:** The list shows only articles whose name contains "Banan" (about 8 rows, `238 Banan` among them), **not** the full assortment.

## Notes
Failed on 2026-11-14 (likely PRODUCT-BUG): after Reset, the search request had no `articleName`, and the list paged
through 3,000+ unfiltered rows. Without Reset, the same filter returns 8 rows.
Evidence: [screenshot](../../artifacts/explore/EXPLORE-adv-search-reset-filter-ignored.png), `reports/explore-20261114-1527/report.md`.

## Cleanup
None (read-only). Never press **Save as selection** or **Export to Excel**.

## Change log
- 2026-11-14: created by /explore
