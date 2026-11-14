---
id: REG-HIE-02
title: Expand and collapse a hierarchy node
module: Articles
type: regression
priority: P3
status: active
preconditions: Logged in, store LIVS. Hierarchy 10 ADMINISTRATION has children.
---

## Steps
1. Open **Articles > Hierarchies** and move the mouse off the menu.
   - **Expected:** The hierarchy tree is listed with an "Id, Name" search box.
2. Click the expand arrow (›) to the left of "10 - ADMINISTRATION" (not the node name, which opens its details).
   - **Expected:** Child nodes appear indented under it (e.g. "10022 - 10", "1026 - 1026").
3. Click the arrow again.
   - **Expected:** The child nodes are hidden.

## Cleanup
None (read-only).

## Change log
- 2026-11-14: created by /explore
