# Smoke report — 2026-11-18 11:37
**Verdict:** GO
**Environment:** http://rsposmainproxy/retailsuite/store/#   **Duration:** 03:30
**Totals:** 5 run · 5 passed · 0 failed · 0 flaky · 0 blocked · 0 skipped

Login OK. The pre-filled store was again `0oyseb1456`, so LIVS was picked from the drop-down filter (`Livs` → LIVS → Confirm), and the header showed LIVS. The browser stayed on host rsposmainproxy for the whole run. The environment was reachable this time; the 11:09 nightly run on 2026-11-18 had reported it UNREACHABLE (VPN / network).

## Failures
None.

## Flaky (passed on retry)
None.

## Auto-updated tests (please review)
None.

## Compared with previous run (smoke-20261117-1321)
- New failures: none
- Fixed: none (all 5 tests passed in both runs)

## Test data created
None. All smoke tests are read-only.

## Could not automate / needs a human
- Nothing blocking. Observations:
  - SMK-ART-01 step 3: right after the row was clicked, the accessibility snapshot showed only the "Complete article details" heading, and "Basic info" was reported as hidden. A screenshot showed the panel fully rendered: Article ID 238, Name Banan, and Prices > Active price Sales price filled in. So this was a snapshot timing artefact, not a failure, and was not retried. The screenshot is `artifacts/SMK-ART-01-step3.png`. It is not failure evidence and can be deleted (the run had no permission to delete files).
  - SMK-ART-02: the page was reloaded with `location.reload()` before Advanced search was opened. The modal closed itself after Search, which matches the known quirk.
  - SMK-ART-01: the active sales price for 238 was shown (not empty). The value is not asserted because other people edit this article.
  - SMK-CMP-01: before the search, the default (Active) list showed only 2 rows (2014233 and the local campaign 2026475 "test 66565").
  - SMK-ASD-01: the Historical tab showed the empty state "No historic batches are available", which the test allows. Print (disabled), the Print drop-down, Actions and the trash icons were not touched.
  - Housekeeping: the Playwright MCP's auto-snapshot and console files (`page-2026-11-18T*.yml`, `console-*.log`) were written into `artifacts/` and can be deleted safely.

## All results
| ID | Title | Module | Priority | Status | Duration |
|---|---|---|---|---|---|
| SMK-ART-01 | Search the stable article by ID and open its details | Articles | P1 | PASS | 55 s |
| SMK-ART-02 | Advanced search opens and finds an article by Article Id | Articles | P1 | PASS | 35 s |
| SMK-CMP-01 | Campaigns list loads and finds the stable campaign | Articles | P1 | PASS | 14 s |
| SMK-HIE-01 | Hierarchies tree loads and search shows the path to a node | Articles | P2 | PASS | 10 s |
| SMK-ASD-01 | Active store data page loads with categories and details | Articles | P2 | PASS | 20 s |
