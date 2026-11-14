---
id: REG-ART-02
title: Quick search by GTIN returns the article
module: Articles
type: regression
priority: P1
status: active
preconditions: Logged in, store LIVS. Stable article 238 Banan (GTIN 2317401100009) exists.
---

## Steps
1. Open **Articles > Articles** from the main menu and move the mouse off the menu so the drop-down closes.
   - **Expected:** The search box "Id, Name, GTIN..." and the **Search** button are visible.
2. Search for the stable article's GTIN `2317401100009`.
   - **Expected:** Exactly one row: `238` / `Banan`.
3. Open the row.
   - **Expected:** Basic info shows Barcode `2317401100009`, and the GTIN section shows "Primary GTIN: 2317401100009".

## Cleanup
None (read-only).

## Change log
- 2026-11-14: created by /explore
