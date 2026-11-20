# Smoke report — 2026-11-20 12:50
**Verdict:** GO
**Environment:** http://rsposmainproxy/retailsuite/store/#   **Duration:** 02:51
**Totals:** 5 run · 5 passed · 0 failed · 0 flaky · 0 blocked · 0 skipped

Login OK. The pre-filled store was again `0oyseb1456`, so LIVS was picked from the drop-down filter (`Livs` → LIVS → Confirm), and the header showed LIVS. The browser stayed on host rsposmainproxy for the whole run.

## Failures
None.

## Flaky (passed on retry)
None.

## Auto-updated tests (please review)
None.

## Compared with previous run (smoke-20261118-1137)
- New failures: none
- Fixed: none (all 5 tests passed in both runs)

## Test data created
None. All smoke tests are read-only.

## Could not automate / needs a human
- Nothing blocking. Observations:
  - SMK-ART-01 step 3: as in the previous run, Playwright reported the "Basic info" heading as hidden right after the row click (it waited 20 s for it to become visible). A screenshot showed the panel fully rendered: Article ID 238, Name Banan, type Normal, hierarchy FRUKT,GRÖNT > FRUKT > CITRUS, and Prices > Active price Sales price filled in. This is a visibility artefact in the page (it has now happened in two runs in a row), not a product failure, so it was not retried. The check screenshot is `artifacts/tmp-SMK-ART-01-check.png`; it is not failure evidence. If it keeps happening, consider making the test wait for "Article ID" text in the panel instead.
  - SMK-ART-02: the page was reloaded with `location.reload()` before Advanced search was opened. Reset was not pressed. The modal closed itself after Search, which matches the known quirk.
  - SMK-CMP-01: before the search, the default (Active) list showed 2 rows (2014233 and the local campaign 2026475 "test 66565"), same as last run.
  - SMK-ASD-01: the Historical tab showed the empty state "No historic batches are available", which the test allows. Print, the Print drop-down, Actions and the trash icons were not touched.
  - Housekeeping: the run could not create folders or delete files from the shell (permission denied). The Playwright MCP auto-snapshots and console logs (`artifacts/page-2026-11-20T*.yml`, `artifacts/console-2026-11-20T*.log`) and the helper snapshots `artifacts/tmp-snap*.yml` and `artifacts/tmp-SMK-ART-01-check.png` can be deleted safely.

## All results
| ID | Title | Module | Priority | Status | Duration |
|---|---|---|---|---|---|
| SMK-ART-01 | Search the stable article by ID and open its details | Articles | P1 | PASS | 53 s |
| SMK-ART-02 | Advanced search opens and finds an article by Article Id | Articles | P1 | PASS | 27 s |
| SMK-CMP-01 | Campaigns list loads and finds the stable campaign | Articles | P1 | PASS | 12 s |
| SMK-HIE-01 | Hierarchies tree loads and search shows the path to a node | Articles | P2 | PASS | 13 s |
| SMK-ASD-01 | Active store data page loads with categories and details | Articles | P2 | PASS | 19 s |
