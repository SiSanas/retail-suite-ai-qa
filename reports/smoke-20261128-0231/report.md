# Smoke report — 2026-11-28 02:31
**Verdict:** GO
**Environment:** http://rsposmainproxy/retailsuite/store/#   **Duration:** ~05:00
**Totals:** 5 run · 5 passed · 0 failed · 0 flaky · 0 blocked · 0 skipped

## Failures
None.

## Flaky (passed on retry)
None. In SMK-ART-01 the Search click was intercepted by the still-open menu drop-down (documented quirk in config/app.md); it succeeded after moving the mouse off the menu. This was not an application failure.

## Auto-updated tests (please review)
None.

## Compared with previous run (smoke-20261127-0249)
- New failures: none
- Fixed: none (all 5 tests passed in both runs)

## Test data created
None (read-only run).

## Could not automate / needs a human
Nothing.

## All results
| ID | Title | Module | Priority | Status | Duration |
|---|---|---|---|---|---|
| SMK-ART-01 | Search the stable article by ID and open its details | Articles | P1 | PASS | 95s |
| SMK-ART-02 | Advanced search opens and finds an article by Article Id | Articles | P1 | PASS | 45s |
| SMK-ASD-01 | Active store data page loads with categories and details | Articles | P2 | PASS | 30s |
| SMK-CMP-01 | Campaigns list loads and finds the stable campaign | Articles | P1 | PASS | 30s |
| SMK-HIE-01 | Hierarchies tree loads and search shows the path to a node | Articles | P2 | PASS | 30s |
