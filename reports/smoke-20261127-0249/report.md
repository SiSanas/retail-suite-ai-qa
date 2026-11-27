# Smoke report — 2026-11-27 02:49
**Verdict:** GO
**Environment:** http://rsposmainproxy/retailsuite/store/#   **Duration:** ~04:00
**Totals:** 5 run · 5 passed · 0 failed · 0 flaky · 0 blocked · 0 skipped

## Failures
None.

## Flaky (passed on retry)
None. (SMK-ART-01: the first click on the result row was blocked by the open main-menu drop-down, a known quirk in `config/app.md`. After moving the mouse off the menu the click worked. This is not a product failure.)

## Auto-updated tests (please review)
None.

## Compared with previous run (smoke-20261126-0251)
- New failures: none
- Fixed: none (all 5 passed in both runs)

## Test data created
None (read-only run).

## Could not automate / needs a human
Nothing. Console errors were logged by the app during the run (2 entries, not investigated; no visible effect on any test).

## Decisions made (unattended)
- A direct URL navigation to `#/articles/article` in SMK-ART-02 redirected to Home while the session stayed active. I opened Articles through the menu instead, which gave a freshly loaded page with an empty Advanced search form. Reset was not pressed.

## All results
| ID | Title | Module | Priority | Status | Duration |
|---|---|---|---|---|---|
| SMK-ART-01 | Search the stable article by ID and open its details | Articles | P1 | PASS | 110s |
| SMK-ART-02 | Advanced search opens and finds an article by Article Id | Articles | P1 | PASS | 30s |
| SMK-ASD-01 | Active store data page loads with categories and details | Articles | P2 | PASS | 15s |
| SMK-CMP-01 | Campaigns list loads and finds the stable campaign | Articles | P1 | PASS | 15s |
| SMK-HIE-01 | Hierarchies tree loads and search shows the path to a node | Articles | P2 | PASS | 15s |
