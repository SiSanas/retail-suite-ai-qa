# Regression report — 2026-11-27 02:53
**Environment:** http://rsposmainproxy/retailsuite/store/#   **Duration:** ~08:00
**Totals:** 17 run · 15 passed · 1 failed · 1 flaky · 0 blocked · 0 skipped
(15 clean passes + 1 PASS (flaky) + 1 failed = 17.)

## Failures
| ID | Title | Classification | What happened | Evidence |
|---|---|---|---|---|
| REG-ART-08 | Advanced search Is on campaign = Yes | ENVIRONMENT | Expected 238 Banan to be absent, but it is listed (also on retry) because it is on active local campaign 2026475 "test 66565" (11/17/26–11/30/26). | [screenshot](../../artifacts/REG-ART-08-step2.png) |

## Flaky (passed on retry)
- REG-ART-07: the first attempt of step 3 (Article Name = Banan after Reset) ignored the filter and paged in 3,310+ unfiltered rows (first row 240 Oxfilé). The retry returned the Banan-filtered list. This is the same behaviour logged as a probable PRODUCT-BUG on 2026-11-14 and it is still intermittent, so a human should look at it. Evidence: [screenshot](../../artifacts/REG-ART-07-step3.png)

## Auto-updated tests (please review)
| ID | What changed | Why it is not a behaviour change |
|---|---|---|
None.

## Compared with previous run (regression-20261126-0309)
- New failures: none.
- Fixed: REG-ART-07 went from FAIL (PRODUCT-BUG) to PASS (flaky). It is not really fixed, because the first attempt still reproduced the bug. REG-ART-06 went from PASS (flaky) to PASS.
- Unchanged: REG-ART-08 still fails as ENVIRONMENT.

## Test data created
None (all tests were read-only).

## Could not automate / needs a human
- REG-ART-08: decide whether 238 Banan should stay on campaign 2026475 (it ends 11/30/26), or make the test stop asserting that 238 is absent.
- REG-ART-07: confirm whether the filter-after-Reset behaviour is a product bug.

## All results
| ID | Title | Module | Priority | Status | Duration |
|---|---|---|---|---|---|
| REG-ART-01 | Quick search by name returns partial name matches | Articles | P1 | PASS | 20s |
| REG-ART-02 | Quick search by GTIN returns the article | Articles | P1 | PASS | 15s |
| REG-ART-03 | Quick search with no match shows an empty-state message | Articles | P2 | PASS | 10s |
| REG-ART-04 | Sort the article list by name ascending and descending | Articles | P2 | PASS | 45s |
| REG-ART-05 | Article details modal shows read-only basic and store info | Articles | P2 | PASS | 25s |
| REG-ART-06 | Advanced search filter by Article type = Deposit | Articles | P1 | PASS | 20s |
| REG-ART-07 | Advanced search applies a filter entered after Reset | Articles | P1 | PASS (flaky) | 100s |
| REG-ART-08 | Advanced search filter Is on campaign = Yes | Articles | P2 | FAIL (ENVIRONMENT) | 60s |
| REG-ASD-01 | Items with content switch shows or hides empty categories | Articles | P3 | PASS | 25s |
| REG-ASD-02 | Current, Future and Historical tabs show their content | Articles | P2 | PASS | 30s |
| REG-CMP-01 | Search campaigns by name, ID and with no match | Articles | P1 | PASS | 35s |
| REG-CMP-02 | Campaign status filter includes Expired campaigns | Articles | P2 | PASS | 40s |
| REG-CMP-03 | Open campaign details and filter its articles | Articles | P1 | PASS | 25s |
| REG-CMP-04 | Campaign overview tabs load | Articles | P2 | PASS | 30s |
| REG-HIE-01 | Search hierarchies by ID and with no match | Articles | P2 | PASS | 25s |
| REG-HIE-02 | Expand and collapse a hierarchy node | Articles | P3 | PASS | 25s |
| REG-HIE-03 | Open hierarchy details and switch to Detail view | Articles | P2 | PASS | 40s |
