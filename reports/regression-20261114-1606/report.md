# Regression report — 2026-11-14 16:06
**Filter:** module = Articles (all 17 tests in `test-cases/regression/`)
**Environment:** http://rsposmainproxy/retailsuite/store/#  (store LIVS, app 26.2.0.4205)   **Duration:** 15:00
**Totals:** 17 run · 16 passed · 1 failed · 0 flaky · 0 blocked · 0 skipped

## Failures
| ID | Title | Classification | What happened | Evidence |
|---|---|---|---|---|
| REG-ART-07 | Advanced search applies a filter entered after Reset | PRODUCT-BUG | Expected only the ~8 "Banan" articles after Reset + Article Name = Banan; instead the field showed "Banan" but the `storeArticle/extendedsearch` request had an empty `queryObject` and 1,600–2,000+ unfiltered rows paged in (reproduced on retry). | [screenshot](../../artifacts/REG-ART-07-step3.png) |

Steps 1 (Article Id 238 → only 238 Banan) and 2 (Reset clears Article Id, Status back to "Created, Active") of REG-ART-07 passed; only step 3 fails.
This is the same defect found by /explore on 2026-11-14 15:27, and it is still present.

## Flaky (passed on retry)
None.

## Auto-updated tests (please review)
None. No test case files were changed.

## Compared with previous run
No earlier regression report exists (only `explore-*` and `smoke-20261114-1601`), so this is the baseline.
- New failures: none to compare (REG-ART-07 is the known defect recorded by /explore 15:27).
- Fixed: none to compare.

## Test data created
None. All 17 tests are read-only; no `AUTOQA-` records were created.

## Could not automate / needs a human
- REG-ART-07: needs a developer to look at the Advanced search Reset bug (the request drops all filters after Reset).

## Observations (not failures)
- REG-ART-02: a GTIN search with exactly one match opens the article details automatically (`&id=238` in the URL).
- REG-ART-06: Deposit filter returned 10 rows, as recorded (`219 DEPOSIT 1KR` has a leading icon).
- REG-CMP-01/02: only one campaign (2014233) is Active; with Expired added there are 31 rows.
- REG-CMP-04: both Top 5 tabs show 3 rows (the 3 articles of campaign 2014233).
- Campaigns page keeps the last search term when you reopen it from the menu; tests clear it first.
- Console: the only errors are the known `ERR_NAME_NOT_RESOLVED` for the external test-data image (11×).
- State left as required: Items with content switch ON, campaign status filter Active only, Hierarchies in List View.

## All results
| ID | Title | Module | Priority | Status | Duration |
|---|---|---|---|---|---|
| REG-ART-01 | Quick search by name returns partial name matches | Articles | P1 | PASS | 40s |
| REG-ART-02 | Quick search by GTIN returns the article | Articles | P1 | PASS | 35s |
| REG-ART-03 | Quick search with no match shows an empty-state message | Articles | P2 | PASS | 20s |
| REG-ART-04 | Sort the article list by name ascending and descending | Articles | P2 | PASS | 25s |
| REG-ART-05 | Article details modal shows read-only basic and store info | Articles | P2 | PASS | 45s |
| REG-ART-06 | Advanced search filter by Article type = Deposit | Articles | P1 | PASS | 120s |
| REG-ART-07 | Advanced search applies a filter entered after Reset | Articles | P1 | FAIL | 150s |
| REG-ART-08 | Advanced search filter Is on campaign = Yes | Articles | P2 | PASS | 30s |
| REG-ASD-01 | Items with content switch shows or hides empty categories | Articles | P3 | PASS | 50s |
| REG-ASD-02 | Current, Future and Historical tabs show their content | Articles | P2 | PASS | 30s |
| REG-CMP-01 | Search campaigns by name, ID and with no match | Articles | P1 | PASS | 45s |
| REG-CMP-02 | Campaign status filter includes Expired campaigns | Articles | P2 | PASS | 75s |
| REG-CMP-03 | Open campaign details and filter its articles | Articles | P1 | PASS | 45s |
| REG-CMP-04 | Campaign overview tabs load | Articles | P2 | PASS | 35s |
| REG-HIE-01 | Search hierarchies by ID and with no match | Articles | P2 | PASS | 40s |
| REG-HIE-02 | Expand and collapse a hierarchy node | Articles | P3 | PASS | 70s |
| REG-HIE-03 | Open hierarchy details and switch to Detail view | Articles | P2 | PASS | 90s |
