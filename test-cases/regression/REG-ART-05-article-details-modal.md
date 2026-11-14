---
id: REG-ART-05
title: Article details modal shows read-only basic and store info
module: Articles
type: regression
priority: P2
status: active
preconditions: Logged in, store LIVS. Stable article 238 Banan (GTIN 2317401100009) exists.
---

## Steps
1. Open **Articles > Articles** from the main menu and move the mouse off the menu so the drop-down closes.
   - **Expected:** The search box "Id, Name, GTIN..." and the **Search** button are visible.
2. Search for `238` and open the `238 Banan` row.
   - **Expected:** "Complete article details" shows Basic info with Article ID `238` and Name `Banan`.
3. In **Basic info**, press **Details** (not Edit).
   - **Expected:** A modal "Article details" opens. "Article basic info" shows Article ID 238, Name Banan, Status Active and EAN 2317401100009, with its checkboxes disabled. "Store specific info" shows Article receipt text "Banan".
4. Close the modal with the × in its top-left corner.
   - **Expected:** The modal closes and the article detail panel is still shown.

## Cleanup
None (read-only). Do not press any **Edit** button.

## Change log
- 2026-11-14: created by /explore
