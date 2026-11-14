---
id: SMK-ART-02
title: Advanced search opens and finds an article by Article Id
module: Articles
type: smoke
priority: P1
status: active
preconditions: Logged in, store LIVS. Stable article 238 Banan exists.
---

## Steps
1. Open **Articles > Articles**, then reload the page so Advanced search starts with an empty form. Click **Advanced search**. Do **not** press Reset (see Known quirks).
   - **Expected:** A modal titled "Advanced search" opens with fields including "Article Id", "Article Name", "Article type", "Status" (pre-filled "Created, Active") and the buttons **Reset**, **Export to Excel**, **Save as selection** and **Search**.
2. Type `238` in **Article Id** and press **Search** in the modal. Wait for the list to fill.
   - **Expected:** The article list shows exactly one row: `238` / `Banan`.
3. If the modal is still open, close it with the × in its top-left corner (Escape does not close it).
   - **Expected:** The modal is gone and the list still shows `238` / `Banan`.

## Cleanup
None (read-only). Never press **Save as selection** or **Export to Excel** in this test.

## Change log
- 2026-11-14: created by /explore
