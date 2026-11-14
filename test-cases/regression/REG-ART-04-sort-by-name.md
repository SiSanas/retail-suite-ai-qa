---
id: REG-ART-04
title: Sort the article list by name ascending and descending
module: Articles
type: regression
priority: P2
status: active
preconditions: Logged in, store LIVS. Stable article 238 Banan exists.
---

## Steps
1. Open **Articles > Articles** from the main menu and move the mouse off the menu so the drop-down closes.
   - **Expected:** The search box "Id, Name, GTIN..." and the **Search** button are visible.
2. Search for `Banan` and wait for the rows.
   - **Expected:** Several rows are listed (8 on 2026-11-14).
3. Click the **Article name** column header.
   - **Expected:** The rows are in A→Z order by name, ignoring case ("Banan" first, "YOGH BLÅBÄR/BANAN" last).
4. Click the **Article name** header again.
   - **Expected:** The order is reversed: "YOGH BLÅBÄR/BANAN" first and "Banan" last.

## Cleanup
None (read-only).

## Change log
- 2026-11-14: created by /explore
