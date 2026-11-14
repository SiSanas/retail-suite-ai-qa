---
id: REG-ART-01
title: Quick search by name returns partial name matches
module: Articles
type: regression
priority: P1
status: active
preconditions: Logged in, store LIVS. Stable article 238 Banan (GTIN 2317401100009) exists.
---

## Steps
1. Open **Articles > Articles** from the main menu and move the mouse off the menu so the drop-down closes.
   - **Expected:** The search box "Id, Name, GTIN..." and the **Search** button are visible.
2. Search for `Banan`.
   - **Expected:** `238` / `Banan` is in the list, and every row's Article name contains "banan" (case-insensitive), e.g. "MJÖLKDRYCK BANAN", "Banana".

## Cleanup
None (read-only).

## Change log
- 2026-11-14: created by /explore
