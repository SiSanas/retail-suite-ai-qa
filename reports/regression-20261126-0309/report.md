# Regression report — 2026-11-26 03:09
**Environment:** http://rsposmainproxy/retailsuite/store/#   **Duration:** ~13:00
**Totals:** 17 run · 14 passed · 2 failed · 1 flaky · 0 blocked · 0 skipped
(The 14 passed does not include the flaky test; 15 tests are green in total.)

## Failures
| ID | Title | Classification | What happened | Evidence |
|---|---|---|---|---|
| REG-ART-07 | Advanced search applies a filter entered after Reset | PRODUCT-BUG | Expected only articles named "Banan*" after Reset + Article Name=Banan, but the full assortment was listed (first row 240 Oxfilé); same on retry. | [screenshot](../../artifacts/REG-ART-07-step3.png) |
| REG-ART-08 | Advanced search filter Is on campaign = Yes | ENVIRONMENT | Expected 238 Banan not in the list, but it is listed because it is on Active local campaign 2026475 "test 66565"; same on retry. | [screenshot](../../artifacts/REG-ART-08-step2.png) |

## Flaky (passed on retry)
| ID | Notes |
|---|---|
| REG-ART-06 | Two attempts showed "No articles found" for Article type = Deposit. Cause was my procedure: after F5 the quick-search box kept earlier text, which was applied together with the filter. On a clean page opened from the menu, 10 rows were returned including 301 and 70 (both Article type Deposit). Screenshot of the failed attempt: [screenshot](../../artifacts/REG-ART-06-step2.png). Worth considering: the app keeps the quick-search text across reload and combines it silently with Advanced search. |

## Auto-updated tests (please review)
None.

## Compared with previous run (reports/regression-20261125-0342)
- New failures: none
- Fixed: none (REG-ART-07 and REG-ART-08 still fail exactly as before)

## Test data created
None. All tests were read-only. Campaign filter was restored to Active only, and the Items-with-content switch was left ON.

## Could not automate / needs a human
- REG-ART-08: needs a human to decide whether the test data (campaign 2026475 includes article 238) should change or the expected result should be loosened. Not healed, because the Expected result must not be changed to pass.
- REG-CMP-02 step 3: I confirmed 2014233 is in the Active+Expired set by searching for it, not by scrolling the grid (no scroll tool available).
- Tests were reached by menu navigation; direct hash URLs redirect to the dashboard.

## All results
| ID | Title | Module | Priority | Status | Duration |
|---|---|---|---|---|---|
| REG-ART-01 | Quick search by name | Articles | P1 | PASS | 25s |
| REG-ART-02 | Quick search by GTIN | Articles | P1 | PASS | 15s |
| REG-ART-03 | Quick search no match | Articles | P2 | PASS | 10s |
| REG-ART-04 | Sort by name | Articles | P2 | PASS | 60s |
| REG-ART-05 | Article details modal | Articles | P2 | PASS | 40s |
| REG-ART-06 | Advanced search Article type = Deposit | Articles | P1 | PASS (flaky) | 150s |
| REG-ART-07 | Advanced search after Reset | Articles | P1 | FAIL (PRODUCT-BUG) | 120s |
| REG-ART-08 | Advanced search Is on campaign = Yes | Articles | P2 | FAIL (ENVIRONMENT) | 100s |
| REG-ASD-01 | Items with content switch | Articles | P3 | PASS | 25s |
| REG-ASD-02 | Current/Future/Historical tabs | Articles | P2 | PASS | 30s |
| REG-CMP-01 | Search campaigns | Articles | P1 | PASS | 45s |
| REG-CMP-02 | Campaign status filter | Articles | P2 | PASS | 75s |
| REG-CMP-03 | Campaign details | Articles | P1 | PASS | 30s |
| REG-CMP-04 | Campaign overview tabs | Articles | P2 | PASS | 35s |
| REG-HIE-01 | Search hierarchies | Articles | P2 | PASS | 30s |
| REG-HIE-02 | Expand/collapse node | Articles | P3 | PASS | 25s |
| REG-HIE-03 | Hierarchy details and Detail view | Articles | P2 | PASS | 60s |
