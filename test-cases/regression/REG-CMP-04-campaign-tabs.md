---
id: REG-CMP-04
title: Campaign overview tabs load
module: Articles
type: regression
priority: P2
status: active
preconditions: Logged in, store LIVS. Stable campaign 2014233 Test_Import_Campaign is Active.
---

## Steps
1. Open **Articles > Campaigns** and move the mouse off the menu.
   - **Expected:** The "All campaigns" tab is active and shows the campaign grid.
2. Click the **Active discount combinations campaigns** tab.
   - **Expected:** A grid with Campaign ID, Campaign name, Campaign description, Discount combination name and Discount combination type, including 2014233 Test_Import_Campaign rows (e.g. "Import_Test_DC_Article").
3. Click the **Top 5 active campaign articles** tab.
   - **Expected:** A grid with Article name, GTIN, Campaign name, Camp. price, Norm. price, Diff and Diff (%), with 1–5 rows.
4. Click the **Top 5 purchase campaign articles** tab.
   - **Expected:** A grid with Article name, GTIN, Campaign name, Camp. purch. price, Norm. purch. price, Diff and Diff (%), with 1–5 rows.

## Cleanup
None (read-only).

## Change log
- 2026-11-14: created by /explore
