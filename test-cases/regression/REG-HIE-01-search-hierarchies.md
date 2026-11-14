---
id: REG-HIE-01
title: Search hierarchies by ID and with no match
module: Articles
type: regression
priority: P2
status: active
preconditions: Logged in, store LIVS. Hierarchy 3450 CITRUS (under 6 FRUKT,GRÖNT > 378 FRUKT) exists.
---

## Steps
1. Open **Articles > Hierarchies** and move the mouse off the menu.
   - **Expected:** The hierarchy tree is listed with an "Id, Name" search box.
2. Search for `3450`.
   - **Expected:** The tree shows "6 - FRUKT,GRÖNT", "378 - FRUKT", "3450 - CITRUS".
3. Search for `ZZQXNOSUCH999`.
   - **Expected:** The tree is empty (no nodes). (As of 2026-11-14 no "no results" message is shown.)

## Cleanup
None (read-only).

## Change log
- 2026-11-14: created by /explore
