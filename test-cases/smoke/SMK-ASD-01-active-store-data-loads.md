---
id: SMK-ASD-01
title: Active store data page loads with categories and details
module: Articles
type: smoke
priority: P2
status: active
preconditions: Logged in, store LIVS.
---

## Steps
1. Open **Articles > Active store data** from the main menu, then move the mouse off the menu.
   - **Expected:** The breadcrumb shows "Articles / Active store data". The tabs "Current", "Future" and "Historical" are visible. The left panel "Categories" has the "Items with content" switch and the groups "Articles and labels changes" and "Campaign information". The right panel "Details" is visible.
2. Click the **Historical** tab.
   - **Expected:** A "Historic changes" grid with the columns Approved datetime, Approved by and Number of articles is shown (or the message "No historic batches are available"), and the Details panel says "No batch is selected".

## Cleanup
None. **Never** press Print, the Print drop-down or any trash-can icon on this page.

## Change log
- 2026-11-14: created by /explore
