---
id: REG-CMP-01
title: Search campaigns by name, ID and with no match
module: Articles
type: regression
priority: P1
status: active
preconditions: Logged in, store LIVS. Stable campaign 2014233 Test_Import_Campaign is Active.
---

## Steps
1. Open **Articles > Campaigns** and move the mouse off the menu.
   - **Expected:** The "All campaigns" tab is active and shows the campaign grid.
2. Search for `Test_Import`.
   - **Expected:** One row: `2014233` Test_Import_Campaign, Active.
3. Search for `2014233`.
   - **Expected:** The same single row.
4. Search for `ZZQXNOSUCH999`.
   - **Expected:** No rows, and the message "No campaigns found".

## Cleanup
None (read-only).

## Change log
- 2026-11-14: created by /explore
