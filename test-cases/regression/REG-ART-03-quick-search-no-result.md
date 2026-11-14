---
id: REG-ART-03
title: Quick search with no match shows an empty-state message
module: Articles
type: regression
priority: P2
status: active
preconditions: Logged in, store LIVS.
---

## Steps
1. Open **Articles > Articles** from the main menu and move the mouse off the menu so the drop-down closes.
   - **Expected:** The search box "Id, Name, GTIN..." and the **Search** button are visible.
2. Search for `ZZQXNOSUCH999`.
   - **Expected:** No article rows are shown and the message "No articles found" is visible.

## Cleanup
None (read-only).

## Change log
- 2026-11-14: created by /explore
