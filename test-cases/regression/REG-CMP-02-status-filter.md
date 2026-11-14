---
id: REG-CMP-02
title: Campaign status filter includes Expired campaigns
module: Articles
type: regression
priority: P2
status: active
preconditions: Logged in, store LIVS. Stable campaign 2014233 Test_Import_Campaign is Active.
---

## Steps
1. Open **Articles > Campaigns** and move the mouse off the menu.
   - **Expected:** The "All campaigns" tab is active and shows the campaign grid.
2. Press the filter (funnel) button next to the search box.
   - **Expected:** A dialog "Select campaign filters" opens. By status: only **Active** is ticked. By type: Discount combination and Promotion are ticked. By scope: Local and Central are ticked.
3. Tick **Expired** and press **Confirm**.
   - **Expected:** The grid contains rows with status "Expired" (e.g. 181 "KombFsg 6.7"). After scrolling (rows load 20 at a time), `2014233` (Active) is also in the list.
4. Open the filter again, untick **Expired** and press **Confirm**.
   - **Expected:** Only Active campaigns are listed again.

## Cleanup
Make sure the status filter is back to **Active only** (step 4).

## Change log
- 2026-11-14: created by /explore
