# Regression report — 2026-11-24 05:02
**Environment:** http://rsposmainproxy/retailsuite/store/#   **Duration:** ~08:30
**Totals:** 17 run · 15 passed · 2 failed · 0 flaky · 0 blocked · 0 skipped

## Failures
| ID | Title | Classification | What happened | Evidence |
|---|---|---|---|---|
| REG-ART-07 | Advanced search applies a filter entered after Reset | PRODUCT-BUG | Expected only Banan articles (about 8 rows) after Reset + Article Name=Banan, but the list showed 3364 unfiltered rows starting with 240 Oxfilé (same on retry). | [screenshot](../../artifacts/REG-ART-07-step3.png) |
| REG-ART-08 | Advanced search filter Is on campaign = Yes | ENVIRONMENT | Expected 238 Banan not to be listed, but it is, because article 238 is on local campaign 2026475 "test 66565" (Active until 11/30/26); 55, 71 and 259 are listed as expected. | [screenshot](../../artifacts/REG-ART-08-step2.png) |

## Flaky (passed on retry)
None.

## Auto-updated tests (please review)
None.

## Compared with previous run (regression-20261123-0055)
- New failures: none
- Fixed: none (REG-ART-07 and REG-ART-08 fail the same way as before)

## Test data created
None. All tests were read-only. Filters and switches changed during tests (Items with content, campaign status filter) were restored.

## Could not automate / needs a human
- REG-ART-08: test data on article 238 (local campaign 2026475) needs to be removed or the test updated by its owner. The campaign was not created by this run, so it was not touched.

## All results
| ID | Title | Module | Priority | Status | Duration |
|---|---|---|---|---|---|
| REG-ART-01 | Quick search by name returns partial name matches | Articles | P1 | PASS | 20s |
| REG-ART-02 | Quick search by GTIN returns the article | Articles | P1 | PASS | 10s |
| REG-ART-03 | Quick search with no match shows an empty-state message | Articles | P2 | PASS | 8s |
| REG-ART-04 | Sort the article list by name ascending and descending | Articles | P2 | PASS | 60s |
| REG-ART-05 | Article details modal shows read-only basic and store info | Articles | P2 | PASS | 25s |
| REG-ART-06 | Advanced search filter by Article type = Deposit | Articles | P1 | PASS | 40s |
| REG-ART-07 | Advanced search applies a filter entered after Reset | Articles | P1 | FAIL | 75s |
| REG-ART-08 | Advanced search filter Is on campaign = Yes | Articles | P2 | FAIL | 45s |
| REG-ASD-01 | Items with content switch shows or hides empty categories | Articles | P3 | PASS | 15s |
| REG-ASD-02 | Current, Future and Historical tabs show their content | Articles | P2 | PASS | 20s |
| REG-CMP-01 | Search campaigns by name, ID and with no match | Articles | P1 | PASS | 25s |
| REG-CMP-02 | Campaign status filter includes Expired campaigns | Articles | P2 | PASS | 35s |
| REG-CMP-03 | Open campaign details and filter its articles | Articles | P1 | PASS | 25s |
| REG-CMP-04 | Campaign overview tabs load | Articles | P2 | PASS | 15s |
| REG-HIE-01 | Search hierarchies by ID and with no match | Articles | P2 | PASS | 25s |
| REG-HIE-02 | Expand and collapse a hierarchy node | Articles | P3 | PASS | 15s |
| REG-HIE-03 | Open hierarchy details and switch to Detail view | Articles | P2 | PASS | 40s |
