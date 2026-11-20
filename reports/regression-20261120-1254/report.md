# Regression report — 2026-11-20 12:54
**Filter:** none. The filter came through as `****`, which isn't a priority, module or test ID, so it was treated as empty (same choice as the 2026-11-17 run) and all 17 tests in `test-cases/regression/` were run.
**Environment:** http://rsposmainproxy/retailsuite/store/#  (store LIVS, Articles module)   **Duration:** 09:40
**Totals:** 17 run · 15 passed · 2 failed · 0 flaky · 0 blocked · 0 skipped

Login OK. The pre-filled store was again `0oyseb1456`, so LIVS was picked from the drop-down (`Livs` → LIVS → Confirm), and the header showed LIVS. The browser stayed on host rsposmainproxy for the whole run. The session did not expire.

## Failures
| ID | Title | Classification | What happened | Evidence |
|---|---|---|---|---|
| REG-ART-07 | Advanced search applies a filter entered after Reset | PRODUCT-BUG | Expected only the ~8 "Banan" articles after Reset + Article Name = Banan; the first search after Reset ignored the filter and listed ~2,800 unfiltered rows (first row "240 Oxfilé"). | [screenshot](../../artifacts/REG-ART-07-step3.png) |
| REG-ART-08 | Advanced search filter Is on campaign = Yes | ENVIRONMENT | Expected the list to exclude `238` Banan; it is included (30 rows) because 238 is still on local campaign **2026475 "test 66565"** (11/17/26 – 11/30/26), so the app is right and the stable test data changed. | [screenshot](../../artifacts/REG-ART-08-step2.png) |

**REG-ART-07 (decision note):** Steps 1 (Article Id 238 → only 238 Banan) and 2 (Reset → Article Id empty, Status "Created, Active") passed. In step 3, after waiting 5 s, typing `Banan` in Article Name and pressing Search, the list showed the full assortment. When Advanced search was reopened for the retry, the Article Name field was empty again. On the retry (the *second* search after Reset) the expected 8 Banan rows appeared. This matches /explore 2026-11-14 and regressions 2026-11-14 and 2026-11-17. Marking it `PASS (flaky)` would hide a bug that reproduces every time, so it stays FAIL / PRODUCT-BUG, the same decision as on 11/17.

**REG-ART-08:** The result was the same on retry (wait 3 s, reload, new search). Article 238's detail panel shows "On promotion campaign", and the Top 5 tabs list Banan under campaign "test 66565". The other Expected items held: 55 DOMESTOS, 71 Test8 and 259 Vilka doningar are listed, and the list is limited (30 rows, like on 2026-11-14). The Expected line was **not** changed. The test should pass again after 2026-11-30, when campaign 2026475 ends.

## Flaky (passed on retry)
None.

## Auto-updated tests (please review)
None. No test case files were changed.

## Compared with previous run (regression-20261117-1325)
- New failures: none.
- Fixed: none.
- Still failing: REG-ART-07 (same PRODUCT-BUG) and REG-ART-08 (same ENVIRONMENT cause: campaign 2026475 still active).

## Test data created
None. All 17 tests are read-only, so no `AUTOQA-` records were created.

## Could not automate / needs a human
- REG-ART-07: a developer needs to look at the Advanced search Reset bug (the first search after Reset drops all filters). It has now failed in three runs in a row.
- REG-ART-08: someone needs to decide on the test data. Either wait until campaign 2026475 "test 66565" ends on 2026-11-30, choose another "not on campaign" article, or remove 238 from that campaign.

## Observations (not failures)
- Active campaigns (default filter): 2 rows, 2014233 and 2026475 "test 66565". Campaign 2026474 has ended since 11/17.
- Articles > Hierarchies and Campaigns keep the last search term when reopened from the menu. For REG-HIE-02 the box still held `ZZQXNOSUCH999` from HIE-01, so it was cleared first. This is the same as on 11/17 and is still not listed in Known quirks in `config/app.md`.
- REG-ART-06: after a row click, the "Basic info" heading was reported as hidden for 25 s even though the panel values (Article ID 301, Article type Deposit) were in the page. This is the same visibility artefact the 11/18 and 11/20 smoke runs noted; it was not counted as a failure.
- Top 5 active campaign articles: every row shows Camp. price = Norm. price (Diff 0.00), e.g. Banan 21.00/21.00. On 11/17 a Plastpåse row was listed; it isn't there now. No test covers this.
- Active store data: counters "Articles with changes 1" and "Labels to print 36". The category reads "Labels to print - exported to POS (29)". Historical shows "No historic batches are available".
- REG-ART-02: a GTIN search with one match opens the article details on its own (`&id=238`), as before.
- Console: a few console errors were logged during article searches. They were not reviewed in detail and did not affect any step.
- Housekeeping: the Playwright MCP auto-snapshot and console files (`artifacts/page-2026-11-20T07-*.yml`, `artifacts/console-2026-11-20T07-24-35-263Z.log`) can be deleted safely. This folder also holds two helper files used to read long lists, `tmp-art08-rows.txt` and `tmp-cmp02-rows.txt`. They contain only page text and can be deleted.
- State left as required: Items with content switch ON, campaign status filter Active only, Hierarchies in List View. No Print, Export, Save as selection, Edit or trash-can controls were used.

## All results
| ID | Title | Module | Priority | Status | Duration |
|---|---|---|---|---|---|
| REG-ART-01 | Quick search by name returns partial name matches | Articles | P1 | PASS | 22s |
| REG-ART-02 | Quick search by GTIN returns the article | Articles | P1 | PASS | 15s |
| REG-ART-03 | Quick search with no match shows an empty-state message | Articles | P2 | PASS | 6s |
| REG-ART-04 | Sort the article list by name ascending and descending | Articles | P2 | PASS | 18s |
| REG-ART-05 | Article details modal shows read-only basic and store info | Articles | P2 | PASS | 28s |
| REG-ART-06 | Advanced search filter by Article type = Deposit | Articles | P1 | PASS | 61s |
| REG-ART-07 | Advanced search applies a filter entered after Reset | Articles | P1 | FAIL | 66s |
| REG-ART-08 | Advanced search filter Is on campaign = Yes | Articles | P2 | FAIL | 66s |
| REG-ASD-01 | Items with content switch shows or hides empty categories | Articles | P3 | PASS | 39s |
| REG-ASD-02 | Current, Future and Historical tabs show their content | Articles | P2 | PASS | 20s |
| REG-CMP-01 | Search campaigns by name, ID and with no match | Articles | P1 | PASS | 20s |
| REG-CMP-02 | Campaign status filter includes Expired campaigns | Articles | P2 | PASS | 19s |
| REG-CMP-03 | Open campaign details and filter its articles | Articles | P1 | PASS | 24s |
| REG-CMP-04 | Campaign overview tabs load | Articles | P2 | PASS | 23s |
| REG-HIE-01 | Search hierarchies by ID and with no match | Articles | P2 | PASS | 8s |
| REG-HIE-02 | Expand and collapse a hierarchy node | Articles | P3 | PASS | 16s |
| REG-HIE-03 | Open hierarchy details and switch to Detail view | Articles | P2 | PASS | 31s |
