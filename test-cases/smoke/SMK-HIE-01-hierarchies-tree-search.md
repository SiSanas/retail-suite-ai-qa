---
id: SMK-HIE-01
title: Hierarchies tree loads and search shows the path to a node
module: Articles
type: smoke
priority: P2
status: active
preconditions: Logged in, store LIVS. Hierarchy 3450 CITRUS exists (the stable article's hierarchy).
---

## Steps
1. Open **Articles > Hierarchies** from the main menu, then move the mouse off the menu.
   - **Expected:** The breadcrumb shows "Articles / Hierarchies". An "Id, Name" search box and a **Search** button are visible, with a tree of nodes shown as "<ID> - <Name>" (for example "10 - ADMINISTRATION").
2. Type `CITRUS` in the search box and press **Search**.
   - **Expected:** The tree shows the path "6 - FRUKT,GRÖNT", "378 - FRUKT", "3450 - CITRUS".

## Cleanup
None (read-only).

## Change log
- 2026-11-14: created by /explore
