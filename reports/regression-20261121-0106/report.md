# Regression report — 2026-11-21 01:06
**Filter:** none. The filter came through as `****`, which isn't a priority, module or test ID, so it was treated as empty (same choice as the 11/17 and 11/20 runs) and all 17 tests in `test-cases/regression/` were run.
**Environment:** http://rsposmainproxy/retailsuite/store/#  (store LIVS, Articles module)   **Duration:** ~10:30
**Totals:** 17 run · 15 passed · 2 failed · 0 flaky · 0 blocked · 0 skipped

Login OK. The pre-filled store was again `0oyseb1456`, so LIVS was picked from the drop-down and the header showed LIVS. The browser stayed on host rsposmainproxy for the whole run. The session did not expire.

## Failures
| ID | Title | Classification | What happened | Evidence |
|---|---|---|---|---|
| REG-ART-07 | Advanced search applies a filter entered after Reset | PRODUCT-BUG | Expected only the ~8 "Banan" articles after Reset + Article Name = Banan; the first search after Reset ignored the filter and loaded 2,400+ unfiltered rows (first row "240 Oxfilé"). | [screenshot](../../artifacts/REG-ART-07-step3.png) |
| REG-ART-08 | Advanced search filter Is on campaign = Yes | ENVIRONMENT | Expected the list to exclude `238` Banan; it is included (31 rows) because 238 is still on local campaign **2026475 "test 66565"** (11/17/26 – 11/30/26), so the app is right and the stable test data changed. | [screenshot](../../artifacts/REG-ART-08-step2.png) |

**REG-ART-07:** Steps 1 and 2 passed. In step 3, after waiting 5 s, `Banan` in Article Name + Search listed the full assortment; on reopening, Article Name was empty again. The retry (the second search after Reset) returned the expected 8 Banan rows. It reproduces every time (4th run in a row), so it stays FAIL / PRODUCT-BUG rather than `PASS (flaky)`.

**REG-ART-08:** Same result on retry (wait 3 s, fresh page, new search). The detail panel of 238 shows "On promotion campaign" and Prices list campaign 2026475. 55 DOMESTOS, 71 Test8 and 259 Vilka doningar are listed. The Expected line was not changed. Should pass again after 2026-11-30.

## Flaky (passed on retry)
None.

## Auto-updated tests (please review)
None. No test case files were changed.

## Compared with previous run (regression-20261120-1254)
- New failures: none.
- Fixed: none.
- Still failing: REG-ART-07 (PRODUCT-BUG) and REG-ART-08 (ENVIRONMENT, campaign 2026475 still active).

## Test data created
None. All 17 tests are read-only, so no `AUTOQA-` records were created.

## Could not automate / needs a human
- REG-ART-07: a developer needs to look at the Advanced search Reset bug (first search after Reset drops all filters).
- REG-ART-08: decide on the test data (wait until 2026-11-30, pick another "not on campaign" article, or remove 238 from campaign 2026475).

## Observations (not failures)
- During REG-CMP-02 I clicked a column-header sort icon by mistake (it sorted Campaign ID descending, with a "NaN" row on top). Nothing was changed; the page was reloaded and the test redone cleanly.
- Hierarchies and Campaigns keep the last search term when reopened (the campaign box was cleared before CMP-02; HIE-02 needed an empty search). Not yet in Known quirks.
- Top 5 active campaign articles show 4 rows (Banan, Vilka doningar, Test8, DOMESTOS), all with Diff 0.00.
- Active store data: "Articles with changes 0", "Labels to print 36". Future tab: 1 label (55 DOMESTOS). Historical: "No historic batches are available".
- Housekeeping: Playwright MCP auto-snapshot/console files in `artifacts/` (`page-2026-11-21T00-*.yml`, `console-2026-11-21T00-*.log`) and my helper files `artifacts/tmp-*.yml` / `tmp-cmp02-state.png` can be deleted.
- State left as required: Items with content ON, campaign status filter Active only, Hierarchies in List View. No Print, Export, Save as selection, Edit or trash-can controls were used.

## All results
| ID | Title | Module | Priority | Status | Duration |
|---|---|---|---|---|---|
| REG-ART-01 | Quick search by name returns partial name matches | Articles | P1 | PASS | ~15s |
| REG-ART-02 | Quick search by GTIN returns the article | Articles | P1 | PASS | ~10s |
| REG-ART-03 | Quick search with no match shows an empty-state message | Articles | P2 | PASS | ~6s |
| REG-ART-04 | Sort the article list by name ascending and descending | Articles | P2 | PASS | ~45s |
| REG-ART-05 | Article details modal shows read-only basic and store info | Articles | P2 | PASS | ~25s |
| REG-ART-06 | Advanced search filter by Article type = Deposit | Articles | P1 | PASS | ~55s |
| REG-ART-07 | Advanced search applies a filter entered after Reset | Articles | P1 | FAIL | ~75s |
| REG-ART-08 | Advanced search filter Is on campaign = Yes | Articles | P2 | FAIL | ~70s |
| REG-ASD-01 | Items with content switch shows or hides empty categories | Articles | P3 | PASS | ~40s |
| REG-ASD-02 | Current, Future and Historical tabs show their content | Articles | P2 | PASS | ~25s |
| REG-CMP-01 | Search campaigns by name, ID and with no match | Articles | P1 | PASS | ~35s |
| REG-CMP-02 | Campaign status filter includes Expired campaigns | Articles | P2 | PASS | ~150s |
| REG-CMP-03 | Open campaign details and filter its articles | Articles | P1 | PASS | ~35s |
| REG-CMP-04 | Campaign overview tabs load | Articles | P2 | PASS | ~30s |
| REG-HIE-01 | Search hierarchies by ID and with no match | Articles | P2 | PASS | ~25s |
| REG-HIE-02 | Expand and collapse a hierarchy node | Articles | P3 | PASS | ~25s |
| REG-HIE-03 | Open hierarchy details and switch to Detail view | Articles | P2 | PASS | ~70s |
