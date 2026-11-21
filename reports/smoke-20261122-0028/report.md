# Smoke report — 2026-11-22 00:28
**Verdict:** GO
**Environment:** http://rsposmainproxy/retailsuite/store/#   **Duration:** ~03:30
**Totals:** 5 run · 5 passed · 0 failed · 1 flaky · 0 blocked · 0 skipped

## Failures
None.

## Flaky (passed on retry)
- SMK-ART-01 step 3: right panel "Prices" first showed "Empty" with no "Active price" column; after a failure screenshot and a 3 s wait it showed Sales price 21.00. Late-loading panel on a slow network. [screenshot](../../artifacts/SMK-ART-01-step3.png)

## Auto-updated tests (please review)
None.

## Compared with previous run (smoke-20261121-0102)
- New failures: none
- Fixed: none (previous run was all PASS; SMK-ART-01 is now PASS (flaky))

## Test data created
None (read-only run).

## Could not automate / needs a human
Nothing. Notes: the menu drop-down stayed open after clicking and covered page content; hovering the page overlay closed it. For tests with a top-level/sub-item pair I reached the pages via the menu links (Articles top-level link opens Articles / Articles). Between tests I returned to the home page by URL (same host) instead of via the menu. The Bash tool was denied, so test files and report folder were read/written with the file tools.

## All results
| ID | Title | Module | Priority | Status | Duration |
|---|---|---|---|---|---|
| SMK-ART-01 | Search the stable article by ID and open its details | Articles | P1 | PASS (flaky) | 70s |
| SMK-ART-02 | Advanced search opens and finds an article by Article Id | Articles | P1 | PASS | 25s |
| SMK-ASD-01 | Active store data page loads with categories and details | Articles | P2 | PASS | 20s |
| SMK-CMP-01 | Campaigns list loads and finds the stable campaign | Articles | P1 | PASS | 20s |
| SMK-HIE-01 | Hierarchies tree loads and search shows the path to a node | Articles | P2 | PASS | 15s |
