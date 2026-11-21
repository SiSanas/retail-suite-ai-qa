# Smoke report — 2026-11-21 01:02
**Verdict:** GO
**Environment:** http://rsposmainproxy/retailsuite/store/#   **Duration:** ~04:00
**Totals:** 5 run · 5 passed · 0 failed · 0 flaky · 0 blocked · 0 skipped

## Failures
None.

## Flaky (passed on retry)
None.

## Auto-updated tests (please review)
None.

## Compared with previous run (smoke-20261120-1554)
- New failures: none
- Fixed: none (all 5 passed in both runs)

## Test data created
None (read-only run).

## Could not automate / needs a human
Nothing. Notes on how the run went:
- Login worked with RS_USERNAME / RS_PASSWORD. Store LIVS was picked from the drop-down and the header showed "LIVS".
- Opening an Articles URL directly (`#/articles/article`) sent the browser back to Home, so all tests went through the menu.
- SMK-CMP-01 step 2: the search was submitted with Enter, not the Search button. The one-row result matched.

## All results
| ID | Title | Module | Priority | Status | Duration |
|---|---|---|---|---|---|
| SMK-ART-01 | Search the stable article by ID and open its details | Articles | P1 | PASS | 65s |
| SMK-ART-02 | Advanced search opens and finds an article by Article Id | Articles | P1 | PASS | 20s |
| SMK-ASD-01 | Active store data page loads with categories and details | Articles | P2 | PASS | 20s |
| SMK-CMP-01 | Campaigns list loads and finds the stable campaign | Articles | P1 | PASS | 15s |
| SMK-HIE-01 | Hierarchies tree loads and search shows the path to a node | Articles | P2 | PASS | 10s |
