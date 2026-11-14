---
id: REG-ITM-01            # SMK-<MOD>-NN or REG-<MOD>-NN
title: Search an existing item by code
module: Item master
type: regression          # smoke | regression
priority: P1              # P1 | P2 | P3
status: active            # active | quarantined
preconditions: Logged in. Item from config/app.md "Existing item" exists.
---

## Steps
1. Open **Item master** from the main menu.
   - **Expected:** The Item master list is shown with a search box.
2. Search for the existing item code from `config/app.md`.
   - **Expected:** Exactly one row is shown, with that code and name.
3. Open the row.
   - **Expected:** The item detail page shows the same code and name, and the price field is not empty.

## Cleanup
None.

## Change log
- 2026-11-14: created by /explore
<!-- Write steps by intent ("open", "search", "save"), not by selector. Expected results must be things you can see on screen. -->
