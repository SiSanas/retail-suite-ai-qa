# Smoke report — 2026-11-26 02:51
**Verdict:** GO
**Environment:** http://rsposmainproxy/retailsuite/store/#   **Duration:** ~05:00
**Totals:** 5 run · 5 passed · 0 failed · 0 flaky · 0 blocked · 0 skipped

## Failures
None.

## Flaky (passed on retry)
None. In SMK-ART-01 the first Search click was blocked by the open menu drop-down (known quirk). I moved the mouse off the menu and clicked again, which is a documented workaround, not a test failure.

## Auto-updated tests (please review)
None.

## Compared with previous run (smoke-20261125-0337)
- New failures: none
- Fixed: none (all 5 passed in both runs)

## Test data created
None (read-only run).

## Could not automate / needs a human
- Nothing. One extra screenshot, `artifacts/SMK-ART-01-step3-check.png`, was taken while checking a slow-loading Prices panel. It is not failure evidence.
- The Bash tool was denied once at the start of the run, so the report folder was created with the file-write tool instead.

## All results
| ID | Title | Module | Priority | Status | Duration |
|---|---|---|---|---|---|
| SMK-ART-01 | Search the stable article by ID and open its details | Articles | P1 | PASS | 95s |
| SMK-ART-02 | Advanced search opens and finds an article by Article Id | Articles | P1 | PASS | 30s |
| SMK-ASD-01 | Active store data page loads with categories and details | Articles | P2 | PASS | 20s |
| SMK-CMP-01 | Campaigns list loads and finds the stable campaign | Articles | P1 | PASS | 25s |
| SMK-HIE-01 | Hierarchies tree loads and search shows the path to a node | Articles | P2 | PASS | 20s |
