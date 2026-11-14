---
id: REG-ART-06
title: Advanced search filter by Article type = Deposit
module: Articles
type: regression
priority: P1
status: active
preconditions: Logged in, store LIVS. Deposit article 301 DepositArt1 exists.
---

## Steps
1. Open **Articles > Articles**, reload the page and open **Advanced search**. Do not press Reset (see Known quirks).
   - **Expected:** The "Advanced search" modal is open with an empty "Article type" drop-down.
2. Choose **Article type = Deposit** and press **Search**.
   - **Expected:** The list shows a small set of articles (10 on 2026-11-14), not the full assortment, and `301` / `DepositArt1` is among them.
3. Open `301 DepositArt1`, then one other row from the result.
   - **Expected:** Basic info shows Article type `Deposit` for both.

## Cleanup
None (read-only). Never press **Save as selection** or **Export to Excel**.

## Change log
- 2026-11-14: created by /explore
