# Smoke report — 2026-11-25 03:37
**Verdict:** GO
**Environment:** http://rsposmainproxy/retailsuite/store/#   **Duration:** ~04:00
**Totals:** 5 run · 5 passed · 0 failed · 0 flaky · 0 blocked · 0 skipped

## Failures
None.

## Flaky (passed on retry)
None.

## Auto-updated tests (please review)
None.

## Compared with previous run (smoke-20261124-0458)
- New failures: none
- Fixed: none (previous run was also 5/5 passed)

## Test data created
None (read-only).

## Could not automate / needs a human
Nothing. Notes:
- SMK-ART-01 step 3: the open main-menu drop-down overlay blocked the row click (known quirk); moving the mouse off the menu fixed it.
- A screenshot `artifacts/SMK-ART-01-step3.png` was taken while diagnosing that, but the step passed. Deleting it needed approval and was not done; please delete it.
- After the first test, menu navigation and form input were driven through Playwright code instead of snapshot refs.

## All results
| ID | Title | Module | Priority | Status | Duration |
|---|---|---|---|---|---|
| SMK-ART-01 | Search the stable article by ID and open its details | Articles | P1 | PASS | 95s |
| SMK-ART-02 | Advanced search opens and finds an article by Article Id | Articles | P1 | PASS | 25s |
| SMK-ASD-01 | Active store data page loads with categories and details | Articles | P2 | PASS | 15s |
| SMK-CMP-01 | Campaigns list loads and finds the stable campaign | Articles | P1 | PASS | 25s |
| SMK-HIE-01 | Hierarchies tree loads and search shows the path to a node | Articles | P2 | PASS | 20s |
