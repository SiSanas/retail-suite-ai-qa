# Smoke report — 2026-11-17 13:21
**Verdict:** GO
**Environment:** http://rsposmainproxy/retailsuite/store/#   **Duration:** 03:15
**Totals:** 5 run · 5 passed · 0 failed · 0 flaky · 0 blocked · 0 skipped

Login OK. The pre-filled store was again `0oyseb1456`, so LIVS was picked from the drop-down filter (`Livs` → LIVS → Confirm), and the header showed LIVS. The browser stayed on host rsposmainproxy for the whole run.

## Failures
None.

## Flaky (passed on retry)
None.

## Auto-updated tests (please review)
None.

## Compared with previous run (smoke-20261117-1313)
- New failures: none
- Fixed: none (all 5 tests passed in both runs)

## Test data created
None. All smoke tests are read-only.

## Could not automate / needs a human
- Nothing blocking. Observations:
  - SMK-ART-02: going to the Articles page with a hash URL and pressing F5 did not reload the SPA (the element refs stayed the same), so the page was reloaded with `location.reload()` before opening Advanced search. The modal closed itself after Search, which matches the known quirk.
  - SMK-ART-01: Active sales price for 238 was shown (not empty). The value is not asserted because other people edit this article.
  - SMK-ASD-01: Historical tab showed the empty state "No historic batches are available" (allowed by the test). Print, the Print drop-down and the trash icons were not touched.
  - Housekeeping: the Playwright MCP's auto-snapshot/console files (`page-2026-11-17T*.yml`, `console-*.log`) were written into `artifacts/` and can be deleted safely.

## All results
| ID | Title | Module | Priority | Status | Duration |
|---|---|---|---|---|---|
| SMK-ART-01 | Search the stable article by ID and open its details | Articles | P1 | PASS | 31 s |
| SMK-ART-02 | Advanced search opens and finds an article by Article Id | Articles | P1 | PASS | 41 s |
| SMK-CMP-01 | Campaigns list loads and finds the stable campaign | Articles | P1 | PASS | 20 s |
| SMK-HIE-01 | Hierarchies tree loads and search shows the path to a node | Articles | P2 | PASS | 14 s |
| SMK-ASD-01 | Active store data page loads with categories and details | Articles | P2 | PASS | 20 s |
