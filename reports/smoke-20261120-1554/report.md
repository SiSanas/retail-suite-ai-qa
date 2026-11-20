# Smoke report — 2026-11-20 15:54
**Verdict:** GO
**Environment:** http://rsposmainproxy/retailsuite/store/#   **Duration:** ~04:00
**Totals:** 5 run · 5 passed · 0 failed · 0 flaky · 0 blocked · 0 skipped

## Failures
None.

## Flaky (passed on retry)
None.

## Auto-updated tests (please review)
None.

## Compared with previous run (smoke-20261120-1250)
- New failures: none
- Fixed: none

## Test data created
None (read-only run).

## Could not automate / needs a human
Nothing. Notes on how the run went:
- Login worked with the RS_USERNAME / RS_PASSWORD placeholders; store LIVS was picked via the filter box and the header showed LIVS.
- For the menu steps, sub-pages were opened by clicking the menu link (via script for sub-items) rather than hovering. The open menu drop-down covered the article row once in SMK-ART-01; it was closed by hovering the page overlay, then the row click worked.
- SMK-ART-02 step 3: the Advanced search modal had already closed itself after Search, which the test allows.
- No screenshots were taken because nothing failed.

## All results
| ID | Title | Module | Priority | Status | Duration |
|---|---|---|---|---|---|
| SMK-ART-01 | Search the stable article by ID and open its details | Articles | P1 | PASS | 60s |
| SMK-ART-02 | Advanced search opens and finds an article by Article Id | Articles | P1 | PASS | 30s |
| SMK-ASD-01 | Active store data page loads with categories and details | Articles | P2 | PASS | 20s |
| SMK-CMP-01 | Campaigns list loads and finds the stable campaign | Articles | P1 | PASS | 15s |
| SMK-HIE-01 | Hierarchies tree loads and search shows the path to a node | Articles | P2 | PASS | 10s |
