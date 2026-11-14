---
id: REG-ASD-01
title: Items with content switch shows or hides empty categories
module: Articles
type: regression
priority: P3
status: active
preconditions: Logged in, store LIVS.
---

## Steps
1. Open **Articles > Active store data** and move the mouse off the menu.
   - **Expected:** The "Current" tab is active, and "Categories" and "Details" are visible.
2. Look at the categories under "Articles and labels changes" with the **Items with content** switch ON.
   - **Expected:** No category with "(0)" is listed.
3. Turn the **Items with content** switch OFF.
   - **Expected:** Categories with count 0 appear as well, e.g. "Sales price changes (0)", "New articles (0)", "Deleted articles (0)", "Other changes (0)".
4. Turn the switch back ON.
   - **Expected:** The "(0)" categories are hidden again.

## Cleanup
Leave the switch ON. **Never** press Print, the Print drop-down, "Export Articles" or any trash-can icon on this page.

## Change log
- 2026-11-14: created by /explore
