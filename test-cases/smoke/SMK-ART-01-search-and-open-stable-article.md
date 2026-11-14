---
id: SMK-ART-01
title: Search the stable article by ID and open its details
module: Articles
type: smoke
priority: P1
status: active
preconditions: Logged in, store LIVS. Stable article from config/app.md (238 Banan) exists.
---

## Steps
1. Hover **Articles** in the main menu and click the **Articles** entry in the drop-down (the first sub-item; it has the same name as the top-level item). After clicking, move the mouse off the menu so the drop-down closes.
   - **Expected:** The breadcrumb shows "Articles / Articles". A search box with the placeholder "Id, Name, GTIN...", a **Search** button and the links "Advanced search" and "Reset form" are visible.
2. Type the stable article ID `238` into the search box and press **Search**. Wait for rows to appear (up to 15 s).
   - **Expected:** The list shows rows with "Article ID" and "Article name" columns. The **first** row is `238` / `Banan` (other rows are partial ID/GTIN matches; see Known quirks).
3. Click the `238 Banan` row.
   - **Expected:** The right panel "Complete article details" shows a "Basic info" section with Article ID `238` and Name `Banan`, and a "Prices" section with an "Active price" column whose Sales price is not empty.

## Cleanup
None (read-only).

## Change log
- 2026-11-14: created by /explore
- 2026-11-14: dry-run: step 1 now says which "Articles" link to click (the top-level item and the sub-item share the name)
