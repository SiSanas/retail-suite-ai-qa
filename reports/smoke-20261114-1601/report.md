# Smoke report — 2026-11-14 16:01
**Verdict:** GO
**Environment:** http://rsposmainproxy/retailsuite/store/#   **Duration:** 01:10   **Store:** LIVS
**Totals:** 5 run · 5 passed · 0 failed · 0 flaky · 0 blocked · 0 skipped

## Failures
None.

## Flaky (passed on retry)
None.

## Auto-updated tests (please review)
None.

## Compared with previous run
There is no earlier smoke report: this is the first smoke run. The smoke tests were dry-run once during
`explore-20261114-1527`, with the same result (5/5 PASS).
- New failures: none
- Fixed: none

## Test data created
None. All smoke tests are read-only.

## Could not automate / needs a human
Nothing new. See `reports/explore-20261114-1527/report.md` for downloads, printing and create/edit actions that were left out on purpose.

## Notes
- **Login:** the browser session from the explore run was still valid. The Home dashboard opened directly, the header showed **LIVS**,
  and the host was rsposmainproxy. No new login was needed.
- **SMK-ART-01:** the first attempt stopped in step 3 because of a mistake in my own automation script (an ambiguous locator for
  "Basic info"), not an app failure. I fixed the script and ran the whole test again from Home; every step passed. It isn't counted as flaky.
- **SMK-ART-02:** the Advanced search modal again **closed itself** after Search. The test handles both cases (see Known quirks).
- **Console:** no errors during the run.

## All results
| ID | Title | Module | Priority | Status | Duration |
|---|---|---|---|---|---|
| SMK-ART-01 | Search the stable article by ID and open its details | Articles | P1 | PASS | 11 s |
| SMK-ART-02 | Advanced search opens and finds an article by Article Id | Articles | P1 | PASS | 14 s |
| SMK-CMP-01 | Campaigns list loads and finds the stable campaign | Articles | P1 | PASS | 8 s |
| SMK-HIE-01 | Hierarchies tree loads and search shows the path to a node | Articles | P2 | PASS | 9 s |
| SMK-ASD-01 | Active store data page loads with categories and details | Articles | P2 | PASS | 12 s |
