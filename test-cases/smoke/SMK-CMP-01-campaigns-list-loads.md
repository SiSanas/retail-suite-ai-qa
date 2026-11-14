---
id: SMK-CMP-01
title: Campaigns list loads and finds the stable campaign
module: Articles
type: smoke
priority: P1
status: active
preconditions: Logged in, store LIVS. Stable campaign from config/app.md (2014233 Test_Import_Campaign) exists and is Active.
---

## Steps
1. Open **Articles > Campaigns** from the main menu, then move the mouse off the menu.
   - **Expected:** The breadcrumb shows "Articles / Campaigns". The tabs "All campaigns", "Active discount combinations campaigns", "Top 5 active campaign articles" and "Top 5 purchase campaign articles" are visible. The grid has the columns Campaign ID, Name, Description, Just for members, Start date, End date and Status, and at least one row.
2. Type `2014233` in the "Search by campaign ID, name, description..." box and press **Search**.
   - **Expected:** One row: `2014233`, `Test_Import_Campaign`, `Test promotion V3`, status `Active`.

## Cleanup
None (read-only). Do not press **New campaign**.

## Change log
- 2026-11-14: created by /explore
