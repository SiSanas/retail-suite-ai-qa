# Regression report — 2026-11-17 13:25
**Filter:** none. The filter came through as `****`, which isn't a priority, module or test ID, so it was treated as empty and all 17 tests in `test-cases/regression/` were run.
**Environment:** http://rsposmainproxy/retailsuite/store/#  (store LIVS, Articles module)   **Duration:** 11:24
**Totals:** 17 run · 15 passed · 2 failed · 0 flaky · 0 blocked · 0 skipped

Login OK. The pre-filled store was again `0oyseb1456`, so LIVS was picked from the drop-down (`Livs` → LIVS → Confirm) and the header showed LIVS. The browser stayed on host rsposmainproxy for the whole run.

## Failures
| ID | Title | Classification | What happened | Evidence |
|---|---|---|---|---|
| REG-ART-07 | Advanced search applies a filter entered after Reset | PRODUCT-BUG | Expected only the ~8 "Banan" articles after Reset + Article Name = Banan; instead the first search sent `storeArticle/extendedsearch` with an empty `queryObject` and 3,187 unfiltered rows paged in. | [screenshot](../../artifacts/REG-ART-07-step3.png) |
| REG-ART-08 | Advanced search filter Is on campaign = Yes | ENVIRONMENT | Expected the list to exclude `238` Banan; it is included (33 rows) because 238 is now really on the new local campaign **2026475 "test 66565"** (11/17/26 – 11/30/26), so the app is right and the stable test data changed. | [screenshot](../../artifacts/REG-ART-08-step2.png) |

**REG-ART-07 (decision note):** Steps 1 and 2 passed. On the retry of step 3 (wait 3 s, reopen Advanced search, type Banan, Search) the list showed the expected 8 Banan rows. That retry was the *second* search after Reset. The defect is that the *first* search after Reset drops the filter, which matches /explore 2026-11-14 15:27 and regression 2026-11-14 16:06. Marking it `PASS (flaky)` would hide a known reproducible bug, so it is reported as FAIL / PRODUCT-BUG. The retry adds one detail: the filter is only lost on the first search after Reset.

**REG-ART-08:** Same result on retry (reload + new search). Article 238's price panel shows "On promotion campaign", Promotion campaign ID 2026475, name "test 66565". The campaign also appears in Campaigns > All campaigns (Active, Local) and in both Top 5 tabs. The other Expected items held: 55 DOMESTOS, 71 Test8 and 259 Vilka doningar are listed, and the list is limited (33 rows vs 30 on 2026-11-14). **Action for a human:** after 2026-11-30 the test should pass again. Otherwise, choose a different "not on campaign" article for this test or remove 238 from that campaign. The Expected line was **not** changed by this run.

## Flaky (passed on retry)
None.

## Auto-updated tests (please review)
None. No test case files were changed.

## Compared with previous run (regression-20261114-1606)
- New failures: **REG-ART-08** (ENVIRONMENT: test data changed, see above).
- Fixed: none.
- Still failing: REG-ART-07 (same PRODUCT-BUG as before).

## Test data created
None. All 17 tests are read-only; no `AUTOQA-` records were created.

## Could not automate / needs a human
- REG-ART-07: needs a developer to look at the Advanced search Reset bug (the first search after Reset drops all filters).
- REG-ART-08: needs someone to decide on the test data (campaign 2026475 "test 66565" now includes 238 Banan, the stable article).

## Observations (not failures)
- Active campaigns are now 3 (2014233, 2026474 "Test campaign RSCLient 2 nov16" ending 11/17/26, and 2026475 "test 66565"), not 1 as on 2026-11-14.
- Articles > Hierarchies keeps the last search term when you reopen it from the menu (like Campaigns). REG-HIE-02 opened on an empty tree because of HIE-01's `ZZQXNOSUCH999` search, so the box was cleared first. This should be added to Known quirks in `config/app.md`.
- Top 5 active campaign articles: the Plastpåse row has no Diff (%) value (Camp. price 1.80, Norm. price 0.00). Not covered by any test; probably caused by a 0.00 normal price.
- REG-ART-02: a GTIN search with one match opens the article details on its own (`&id=238`), as before.
- Active store data counters: "Articles with changes 1", "Labels to print 36"; Historical shows "No historic batches are available".
- Console: some console errors were logged during article searches; not reviewed in detail. They did not affect any step.
- Housekeeping: the Playwright MCP's auto-snapshot/console files (`page-2026-11-17T*.yml`, `console-*.log`) were written into `artifacts/` and can be deleted safely.
- State left as required: Items with content switch ON, campaign status filter Active only, Hierarchies in List View. No Print, Export, Save as selection, Edit or trash-can controls were used.

## All results
| ID | Title | Module | Priority | Status | Duration |
|---|---|---|---|---|---|
| REG-ART-01 | Quick search by name returns partial name matches | Articles | P1 | PASS | 45s |
| REG-ART-02 | Quick search by GTIN returns the article | Articles | P1 | PASS | 17s |
| REG-ART-03 | Quick search with no match shows an empty-state message | Articles | P2 | PASS | 12s |
| REG-ART-04 | Sort the article list by name ascending and descending | Articles | P2 | PASS | 31s |
| REG-ART-05 | Article details modal shows read-only basic and store info | Articles | P2 | PASS | 30s |
| REG-ART-06 | Advanced search filter by Article type = Deposit | Articles | P1 | PASS | 46s |
| REG-ART-07 | Advanced search applies a filter entered after Reset | Articles | P1 | FAIL | 105s |
| REG-ART-08 | Advanced search filter Is on campaign = Yes | Articles | P2 | FAIL | 94s |
| REG-ASD-01 | Items with content switch shows or hides empty categories | Articles | P3 | PASS | 18s |
| REG-ASD-02 | Current, Future and Historical tabs show their content | Articles | P2 | PASS | 24s |
| REG-CMP-01 | Search campaigns by name, ID and with no match | Articles | P1 | PASS | 27s |
| REG-CMP-02 | Campaign status filter includes Expired campaigns | Articles | P2 | PASS | 57s |
| REG-CMP-03 | Open campaign details and filter its articles | Articles | P1 | PASS | 21s |
| REG-CMP-04 | Campaign overview tabs load | Articles | P2 | PASS | 30s |
| REG-HIE-01 | Search hierarchies by ID and with no match | Articles | P2 | PASS | 15s |
| REG-HIE-02 | Expand and collapse a hierarchy node | Articles | P3 | PASS | 21s |
| REG-HIE-03 | Open hierarchy details and switch to Detail view | Articles | P2 | PASS | 48s |
