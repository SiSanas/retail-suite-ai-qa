---
id: REG-ASD-02
title: Current, Future and Historical tabs show their content
module: Articles
type: regression
priority: P2
status: active
preconditions: Logged in, store LIVS.
---

## Steps
1. Open **Articles > Active store data** and move the mouse off the menu.
   - **Expected:** The "Current" tab is active, and "Categories" and "Details" are visible.
2. Look at the Details panel on the Current tab.
   - **Expected:** The counters "Articles with changes" and "Labels to print" are shown. If there are labels, a grid with Article ID, Article name, GTIN, Ordering alt. ID, Sales price, Sales price change, Labels and Action is shown.
3. Click the **Future** tab.
   - **Expected:** The URL ends with `tab=futureChanges`, and Categories and a Details panel are shown.
4. Click the **Historical** tab.
   - **Expected:** The URL ends with `tab=historicChanges`. Either a "Historic changes" grid (Approved datetime, Approved by, Number of articles) or "No historic batches are available" is shown, and Details shows "No batch is selected".

## Cleanup
None. **Never** press Print, the Print drop-down, "Export Articles" or any trash-can icon, and don't untick article checkboxes.

## Change log
- 2026-11-14: created by /explore
