# Smoke report — 2026-11-17 13:13
**Verdict:** GO
**Environment:** http://rsposmainproxy/retailsuite/store/#   **Duration:** 04:21
**Totals:** 5 run · 5 passed · 0 failed · 0 flaky · 0 blocked · 0 skipped

Login OK. Store selected via the drop-down filter (`Livs` → LIVS; pre-filled store was again `0oyseb1456`), header shows LIVS. App stayed on host rsposmainproxy throughout.

## Failures
None.

## Flaky (passed on retry)
None.

## Auto-updated tests (please review)
None.

## Compared with previous run (smoke-20261114-1601)
- New failures: none
- Fixed: none (all 5 tests passed in both runs)

## Test data created
None. All smoke tests are read-only.

## Could not automate / needs a human
- Nothing blocking. Observations:
  - SMK-ART-01: the "Prices" section showed "Empty" at first and only filled the Active/Next/Chain price table after about 10 s. That is within the known slow-network allowance, so it is not counted as a failure.
  - SMK-ART-02: after the page reload, the Articles menu drop-down stayed open, which blocked clicks on "Advanced search", until the mouse was moved to the header. This is the known menu-hover quirk, and the test passed.
  - Housekeeping: the Playwright MCP wrote this run's auto-snapshot files (`page-2026-11-17T*.yml`, `console-2026-11-17T*.log`, `tmp-*.yml/png`) into `artifacts/`. Deleting them was not permitted in this unattended session, so they are still there and can be deleted safely.

## All results
| ID | Title | Module | Priority | Status | Duration |
|---|---|---|---|---|---|
| SMK-ART-01 | Search the stable article by ID and open its details | Articles | P1 | PASS | 42 s |
| SMK-ART-02 | Advanced search opens and finds an article by Article Id | Articles | P1 | PASS | 68 s |
| SMK-CMP-01 | Campaigns list loads and finds the stable campaign | Articles | P1 | PASS | 22 s |
| SMK-HIE-01 | Hierarchies tree loads and search shows the path to a node | Articles | P2 | PASS | 19 s |
| SMK-ASD-01 | Active store data page loads with categories and details | Articles | P2 | PASS | 37 s |
