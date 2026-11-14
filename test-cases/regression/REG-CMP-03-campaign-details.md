---
id: REG-CMP-03
title: Open campaign details and filter its articles
module: Articles
type: regression
priority: P1
status: active
preconditions: Logged in, store LIVS. Stable campaign 2014233 Test_Import_Campaign is Active.
---

## Steps
1. Open **Articles > Campaigns** and move the mouse off the menu.
   - **Expected:** The "All campaigns" tab is active and shows the campaign grid.
2. Search for `2014233` and click the row.
   - **Expected:** The "Campaign details" page shows Campaign ID 2014233, Campaign name Test_Import_Campaign, Campaign description Test promotion V3 and Status Active. "Campaign articles" lists 55 DOMESTOS, 71 Test8 and 259 Vilka doningar. A "Discount combinations" section is shown below.
3. Type `DOMESTOS` in the Campaign articles **Filter** box.
   - **Expected:** Only the row 55 DOMESTOS remains.
4. Clear the Filter box.
   - **Expected:** All three articles are shown again.

## Cleanup
None (read-only). Do not press Create Campaign Order, Edit, Download labels or Print labels.

## Change log
- 2026-11-14: created by /explore
