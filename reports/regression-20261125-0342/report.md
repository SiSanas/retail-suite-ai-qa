# Regression report — 2026-11-25 03:42
**Environment:** http://rsposmainproxy/retailsuite/store/# (store LIVS)   **Duration:** ~08:00
**Totals:** 17 run · 15 passed · 2 failed · 0 flaky · 0 blocked · 0 skipped

## Failures
| ID | Title | Classification | What happened | Evidence |
|---|---|---|---|---|
| REG-ART-07 | Advanced search applies a filter entered after Reset | PRODUCT-BUG | After Reset, searching Article Name=Banan returned the full unfiltered assortment (3,331 rows, first row 240 Oxfilé) instead of ~8 Banan rows; reproduced on retry. | [screenshot](../../artifacts/REG-ART-07-step3.png) |
| REG-ART-08 | Advanced search filter Is on campaign = Yes | ENVIRONMENT | Expected 238 Banan not to be listed, but it is (30 rows; 55, 71, 259 present) because Banan is on active local campaign 2026475 "test 66565" (shown on "Top 5 active campaign articles"); same on retry. | [screenshot](../../artifacts/REG-ART-08-step2.png) |

## Flaky (passed on retry)
None.

## Auto-updated tests (please review)
None.

## Compared with previous run (regression-20261124-0502)
- New failures: none
- Fixed: none
- Still failing: REG-ART-07 (PRODUCT-BUG), REG-ART-08 (ENVIRONMENT). Same results as before.

## Test data created
None (read-only run; no AUTOQA- records created).

## Could not automate / needs a human
- REG-ART-08: the test data needs a decision. Either remove 238 Banan from local campaign 2026475 "test 66565" (ends 11/30/26), or change the test's expectation. I did not edit the Expected result.
- Notes: F5 did not reliably reload the SPA, so pages were re-opened by URL where a fresh load was needed. The first click on a column header was blocked by the open menu overlay and needed the mouse moved off the menu.

## All results
| ID | Title | Module | Priority | Status | Duration |
|---|---|---|---|---|---|
| REG-ART-01 | Quick search by name returns partial name matches | Articles | P1 | PASS | 25s |
| REG-ART-02 | Quick search by GTIN returns the article | Articles | P1 | PASS | 10s |
| REG-ART-03 | Quick search with no match shows an empty-state message | Articles | P2 | PASS | 8s |
| REG-ART-04 | Sort the article list by name ascending and descending | Articles | P2 | PASS | 40s |
| REG-ART-05 | Article details modal shows read-only basic and store info | Articles | P2 | PASS | 25s |
| REG-ART-06 | Advanced search filter by Article type = Deposit | Articles | P1 | PASS | 40s |
| REG-ART-07 | Advanced search applies a filter entered after Reset | Articles | P1 | FAIL | 100s |
| REG-ART-08 | Advanced search filter Is on campaign = Yes | Articles | P2 | FAIL | 60s |
| REG-ASD-01 | Items with content switch shows or hides empty categories | Articles | P3 | PASS | 15s |
| REG-ASD-02 | Current, Future and Historical tabs show their content | Articles | P2 | PASS | 20s |
| REG-CMP-01 | Search campaigns by name, ID and with no match | Articles | P1 | PASS | 25s |
| REG-CMP-02 | Campaign status filter includes Expired campaigns | Articles | P2 | PASS | 35s |
| REG-CMP-03 | Open campaign details and filter its articles | Articles | P1 | PASS | 25s |
| REG-CMP-04 | Campaign overview tabs load | Articles | P2 | PASS | 15s |
| REG-HIE-01 | Search hierarchies by ID and with no match | Articles | P2 | PASS | 20s |
| REG-HIE-02 | Expand and collapse a hierarchy node | Articles | P3 | PASS | 15s |
| REG-HIE-03 | Open hierarchy details and switch to Detail view | Articles | P2 | PASS | 35s |
