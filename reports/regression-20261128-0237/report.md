# Regression report — 2026-11-28 02:37
**Environment:** http://rsposmainproxy/retailsuite/store/#   **Duration:** ~10:00 (durations per test are approximate)
**Totals:** 17 run · 14 passed · 1 failed · 1 flaky · 0 blocked · 0 skipped

Filter: none (all of `test-cases/regression/`). Logged in once, store LIVS confirmed in the header. No session expiry.

## Failures
| ID | Title | Classification | What happened | Evidence |
|---|---|---|---|---|
| REG-ART-08 | Advanced search filter Is on campaign = Yes | ENVIRONMENT | Expected `238 Banan` to be absent from the "Is on campaign = Yes" list, but it is listed (also on retry), because 238 is on active local campaign 2026475 "test 66565" (11/17/26–11/30/26); 55, 71 and 259 are present as expected. | [screenshot](../../artifacts/REG-ART-08-step2.png) |

The filter itself works. The test data changed (someone put the stable article 238 on a campaign), so the "does not include 238" assertion no longer holds. I did not change the Expected result. A human should decide whether to remove 238 from campaign 2026475 or update the test; the campaign ends 11/30/26, so this will likely clear itself after that date.

## Flaky (passed on retry)
- **REG-ART-07** — step 3: after Reset, the first Search with Article Name `Banan` ignored the filter (unfiltered list, first row 240 Oxfilé; [screenshot](../../artifacts/REG-ART-07-step3.png)). On the one retry (reopened Advanced search, entered `Banan` again, Search) the list was correct: 8 Banan rows with 238 first. This is the known 2026-11-14 behaviour (see `config/app.md` Known quirks). It is still intermittent and looks like a real product bug.

## Auto-updated tests (please review)
| ID | What changed | Why it is not a behaviour change |
|---|---|---|
| none | | |

## Compared with previous run (regression-20261127-0253)
- New failures: none
- Fixed: none
- Unchanged: REG-ART-08 still FAIL (ENVIRONMENT, same cause); REG-ART-07 still PASS (flaky). Other 15 tests PASS in both runs.
- Minor: REG-ART-06 returned 9 rows (previous run 10). The test only requires a small set including 301, so it still passes.

## Test data created
None. All tests were read-only. The "Items with content" switch was toggled and restored to ON, and the Campaigns status filter was restored to Active only.

## Could not automate / needs a human
- REG-ART-08: decide on the 238 / campaign 2026475 data conflict (see above).
- REG-ART-07: the intermittent Reset filter bug needs a developer look.

## All results
| ID | Title | Module | Priority | Status | Duration |
|---|---|---|---|---|---|
| REG-ART-01 | Quick search by name returns partial name matches | Articles | P1 | PASS | ~20s |
| REG-ART-02 | Quick search by GTIN returns the article | Articles | P1 | PASS | ~15s |
| REG-ART-03 | Quick search with no match shows an empty-state message | Articles | P2 | PASS | ~10s |
| REG-ART-04 | Sort the article list by name ascending and descending | Articles | P2 | PASS | ~50s |
| REG-ART-05 | Article details modal shows read-only basic and store info | Articles | P2 | PASS | ~40s |
| REG-ART-06 | Advanced search filter by Article type = Deposit | Articles | P1 | PASS | ~45s |
| REG-ART-07 | Advanced search applies a filter entered after Reset | Articles | P1 | PASS (flaky) | ~100s |
| REG-ART-08 | Advanced search filter Is on campaign = Yes | Articles | P2 | FAIL (ENVIRONMENT) | ~100s |
| REG-ASD-01 | Items with content switch shows or hides empty categories | Articles | P3 | PASS | ~25s |
| REG-ASD-02 | Current, Future and Historical tabs show their content | Articles | P2 | PASS | ~30s |
| REG-CMP-01 | Search campaigns by name, ID and with no match | Articles | P1 | PASS | ~30s |
| REG-CMP-02 | Campaign status filter includes Expired campaigns | Articles | P2 | PASS | ~45s |
| REG-CMP-03 | Open campaign details and filter its articles | Articles | P1 | PASS | ~40s |
| REG-CMP-04 | Campaign overview tabs load | Articles | P2 | PASS | ~35s |
| REG-HIE-01 | Search hierarchies by ID and with no match | Articles | P2 | PASS | ~30s |
| REG-HIE-02 | Expand and collapse a hierarchy node | Articles | P3 | PASS | ~20s |
| REG-HIE-03 | Open hierarchy details and switch to Detail view | Articles | P2 | PASS | ~50s |
