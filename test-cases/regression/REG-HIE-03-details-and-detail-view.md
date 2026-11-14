---
id: REG-HIE-03
title: Open hierarchy details and switch to Detail view
module: Articles
type: regression
priority: P2
status: active
preconditions: Logged in, store LIVS. Hierarchy 3450 CITRUS (under 6 FRUKT,GRÖNT > 378 FRUKT) exists.
---

## Steps
1. Open **Articles > Hierarchies** and move the mouse off the menu.
   - **Expected:** The hierarchy tree is listed with an "Id, Name" search box.
2. Search for `CITRUS` and click the node "3450 - CITRUS".
   - **Expected:** "Article hierarchy information" shows Article hierarchy CITRUS, Article hierarchy ID 3450, Display ID 3450, level "Detail level" and Default Vat "Groceries SWE". "Dynamic fields bound to article hierarchy" lists groups (e.g. General, Store specific info).
3. Go back to **Articles > Hierarchies**, open the list-icon menu at the top right of the tree and choose **Detail view**.
   - **Expected:** A split view: the tree on the left, and on the right "Article hierarchy information" and "Dynamic fields bound to article hierarchy", both showing "Empty".
4. Search for `3450` and click "3450 - CITRUS".
   - **Expected:** The right panel fills with CITRUS / 3450 / Detail level / Groceries SWE.
5. Open the list-icon menu and choose **List View**.
   - **Expected:** The full-width tree is shown again.

## Cleanup
None (read-only). Leave the page in List View.

## Change log
- 2026-11-14: created by /explore
