# Regression report — 2026-11-23 00:55
**Environment:** http://rsposmainproxy/retailsuite/store/#   **Duration:** ~09:30
**Totals:** 17 run · 15 passed · 2 failed · 0 flaky · 0 blocked · 0 skipped

## Failures
| ID | Title | Classification | What happened | Evidence |
|---|---|---|---|---|
| REG-ART-07 | Advanced search applies a filter entered after Reset | PRODUCT-BUG | After Reset, waiting 5 s and searching Article Name=Banan should list only Banan articles (about 8), but the full assortment loaded (3,295 rows, first row 240 Oxfilé); the same happened on retry. | [screenshot](../../artifacts/REG-ART-07-step3.png) |
| REG-ART-08 | Advanced search filter Is on campaign = Yes | ENVIRONMENT | Expected 238 Banan to be absent, but it is listed (also on retry) because 238 is now on Active local campaign 2026475 "test 66565" (11/17/26–11/30/26); 55, 71 and 259 are present as expected. | [screenshot](../../artifacts/REG-ART-08-step2.png) |

## Flaky (passed on retry)
None.

## Auto-updated tests (please review)
None.

## Compared with previous run (regression-20261122-0032)
- New failures: none
- Fixed: none (REG-ART-07 PRODUCT-BUG and REG-ART-08 ENVIRONMENT failed the same way in the previous run)

## Test data created
None (all tests were read-only; no AUTOQA- records created).

## Could not automate / needs a human
- REG-ART-08: the test's expectation that 238 Banan is not on a campaign no longer holds in the test data (campaign 2026475 "test 66565"). A human should decide whether to remove 238 from that campaign or change the test to use a different article. I did not edit the test or its Expected result.

## Notes
- The Articles menu drop-down stayed open and covered page content a few times (known quirk); I moved the mouse onto the page overlay to close it.
- REG-ART-06 returned 11 rows (10 on 2026-11-14), still a small set containing 301; counted as pass.

## All results
| ID | Title | Module | Priority | Status | Duration |
|---|---|---|---|---|---|
| REG-ART-01 | Quick search by name returns partial name matches | Articles | P1 | PASS | 16s |
| REG-ART-02 | Quick search by GTIN returns the article | Articles | P1 | PASS | 10s |
| REG-ART-03 | Quick search with no match shows an empty-state message | Articles | P2 | PASS | 10s |
| REG-ART-04 | Sort the article list by name ascending and descending | Articles | P2 | PASS | 55s |
| REG-ART-05 | Article details modal shows read-only basic and store info | Articles | P2 | PASS | 25s |
| REG-ART-06 | Advanced search filter by Article type = Deposit | Articles | P1 | PASS | 35s |
| REG-ART-07 | Advanced search applies a filter entered after Reset | Articles | P1 | FAIL | 140s |
| REG-ART-08 | Advanced search filter Is on campaign = Yes | Articles | P2 | FAIL | 95s |
| REG-ASD-01 | Items with content switch shows or hides empty categories | Articles | P3 | PASS | 20s |
| REG-ASD-02 | Current, Future and Historical tabs show their content | Articles | P2 | PASS | 25s |
| REG-CMP-01 | Search campaigns by name, ID and with no match | Articles | P1 | PASS | 25s |
| REG-CMP-02 | Campaign status filter includes Expired campaigns | Articles | P2 | PASS | 35s |
| REG-CMP-03 | Open campaign details and filter its articles | Articles | P1 | PASS | 25s |
| REG-CMP-04 | Campaign overview tabs load | Articles | P2 | PASS | 20s |
| REG-HIE-01 | Search hierarchies by ID and with no match | Articles | P2 | PASS | 20s |
| REG-HIE-02 | Expand and collapse a hierarchy node | Articles | P3 | PASS | 15s |
| REG-HIE-03 | Open hierarchy details and switch to Detail view | Articles | P2 | PASS | 35s |
