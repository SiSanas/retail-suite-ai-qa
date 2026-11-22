# Smoke report — 2026-11-23 00:45
**Verdict:** GO
**Environment:** http://rsposmainproxy/retailsuite/store/#   **Duration:** ~06:00
**Totals:** 5 run · 5 passed · 0 failed · 0 flaky · 0 blocked · 0 skipped

## Failures
None.

## Flaky (passed on retry)
None.

## Auto-updated tests (please review)
None.

## Compared with previous run (smoke-20261122-0028)
- New failures: none
- Fixed: none (SMK-ART-01 was PASS (flaky) last time, now a clean PASS)

## Test data created
None (read-only suite).

## Could not automate / needs a human
Nothing. Notes:
- Login worked with RS_USERNAME/RS_PASSWORD; store LIVS selected via the filter box, header showed LIVS.
- Menu drop-downs stayed open after clicking a menu item and blocked clicks on page content (known quirk). I closed them by clicking the page overlay element. No product behaviour was affected.
- One attempted direct URL navigation (#/articles/article) sent the app back to the dashboard, so I used the menu instead.

## All results
| ID | Title | Module | Priority | Status | Duration |
|---|---|---|---|---|---|
| SMK-ART-01 | Search the stable article by ID and open its details | Articles | P1 | PASS | 85s |
| SMK-ART-02 | Advanced search opens and finds an article by Article Id | Articles | P1 | PASS | 40s |
| SMK-ASD-01 | Active store data page loads with categories and details | Articles | P2 | PASS | 25s |
| SMK-CMP-01 | Campaigns list loads and finds the stable campaign | Articles | P1 | PASS | 30s |
| SMK-HIE-01 | Hierarchies tree loads and search shows the path to a node | Articles | P2 | PASS | 25s |
