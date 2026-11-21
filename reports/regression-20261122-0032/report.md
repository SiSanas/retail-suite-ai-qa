# Regression report — 2026-11-22 00:32
**Environment:** http://rsposmainproxy/retailsuite/store/#   **Duration:** ~11:00
**Totals:** 17 run · 15 passed · 2 failed · 0 flaky · 0 blocked · 0 skipped

Store LIVS confirmed in the header after login. Filter: none (all tests in `test-cases/regression/`).

## Failures
| ID | Title | Classification | What happened | Evidence |
|---|---|---|---|---|
| REG-ART-07 | Advanced search applies a filter entered after Reset | PRODUCT-BUG | Expected only "Banan" articles after Reset + Article Name=Banan, but the list showed the full unfiltered assortment (first row 240 Oxfilé). | [screenshot](../../artifacts/REG-ART-07-step3.png) |
| REG-ART-08 | Advanced search filter Is on campaign = Yes | ENVIRONMENT | Expected 238 Banan not to be listed, but it appears (27 rows) because the article is currently on campaign "test 66565"; same on retry. | [screenshot](../../artifacts/REG-ART-08-step2.png) |

Notes:
- REG-ART-07: the retry was a second Advanced search with Article Name=Banan, which returned the correct rows (8 name matches). That is the documented behaviour (first search after Reset ignores the filter, second applies it), so it is recorded as FAIL / PRODUCT-BUG, not `PASS (flaky)`. This decision was made unattended.
- REG-ART-08: Banan is shown on campaign "test 66565" in the Top 5 active and purchase campaign tabs (REG-CMP-04) in this run. The test assumption (238 is not on a campaign) is broken by test data, not by the product. The test's expected result was not changed. Someone should either end that campaign or update the test data/expectation.
- Early in REG-ART-07 a first attempt returned "No articles found" because the Advanced search modal kept the Article type = Deposit filter from REG-ART-06. This came from run order, not the product. I reloaded the page and restarted the test from step 1; the failure above is from that clean attempt.

## Flaky (passed on retry)
None.

## Auto-updated tests (please review)
None.

## Compared with previous run (regression-20261121-0106)
- New failures: none
- Fixed: none
- Unchanged: REG-ART-07 (PRODUCT-BUG) and REG-ART-08 (ENVIRONMENT) still fail with the same symptoms; the other 15 still pass.

## Test data created
None. All tests were read-only. The campaign status filter was restored to Active only, and the Items with content switch was left ON.

## Could not automate / needs a human
- Nothing blocked. Please review the test data for REG-ART-08 (article 238 on campaign "test 66565").

## All results
| ID | Title | Module | Priority | Status | Duration |
|---|---|---|---|---|---|
| REG-ART-01 | Quick search by name returns partial name matches | Articles | P1 | PASS | 25s |
| REG-ART-02 | Quick search by GTIN returns the article | Articles | P1 | PASS | 12s |
| REG-ART-03 | Quick search with no match shows an empty-state message | Articles | P2 | PASS | 8s |
| REG-ART-04 | Sort the article list by name ascending and descending | Articles | P2 | PASS | 50s |
| REG-ART-05 | Article details modal shows read-only basic and store info | Articles | P2 | PASS | 45s |
| REG-ART-06 | Advanced search filter by Article type = Deposit | Articles | P1 | PASS | 40s |
| REG-ART-07 | Advanced search applies a filter entered after Reset | Articles | P1 | FAIL (PRODUCT-BUG) | 100s |
| REG-ART-08 | Advanced search filter Is on campaign = Yes | Articles | P2 | FAIL (ENVIRONMENT) | 60s |
| REG-ASD-01 | Items with content switch shows or hides empty categories | Articles | P3 | PASS | 25s |
| REG-ASD-02 | Current, Future and Historical tabs show their content | Articles | P2 | PASS | 20s |
| REG-CMP-01 | Search campaigns by name, ID and with no match | Articles | P1 | PASS | 30s |
| REG-CMP-02 | Campaign status filter includes Expired campaigns | Articles | P2 | PASS | 50s |
| REG-CMP-03 | Open campaign details and filter its articles | Articles | P1 | PASS | 25s |
| REG-CMP-04 | Campaign overview tabs load | Articles | P2 | PASS | 25s |
| REG-HIE-01 | Search hierarchies by ID and with no match | Articles | P2 | PASS | 25s |
| REG-HIE-02 | Expand and collapse a hierarchy node | Articles | P3 | PASS | 20s |
| REG-HIE-03 | Open hierarchy details and switch to Detail view | Articles | P2 | PASS | 40s |
