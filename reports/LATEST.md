# Retail Suite nightly QA - 2026-11-17 13:38

| Suite | Total | Passed | Failed | Blocked | Skipped | Result |
|---|---|---|---|---|---|---|
| smoke | 5 | 5 | 0 | 0 | 0 | PASS |
| regression | 17 | 15 | 2 | 0 | 0 | **FAIL** |

## Failures
- **REG-ART-07** Advanced search applies a filter entered after Reset: FAIL PRODUCT-BUG - Known defect: first search after Reset sent empty queryObject and paged 3187 unfiltered rows; a second search returned 8 Banan rows
- **REG-ART-08** Advanced search filter Is on campaign = Yes: FAIL ENVIRONMENT - 238 Banan is listed (33 rows); test data changed: 238 is now on new local campaign 2026475 test 66565 (11/17/26-11/30/26)

Run: https://github.com/SiSanas/retail-suite-ai-qa/actions/runs/44041847586

## History (last 30 runs)

| Date | Suite | Total | Passed | Failed | Blocked | Verdict | Report |
|---|---|---|---|---|---|---|---|
| 2026-11-17T13:38:12 | regression | 17 | 15 | 2 | 0 | FAIL | [report](regression-20261117-1325/report.md) |
| 2026-11-17T13:38:12 | smoke | 5 | 5 | 0 | 0 | PASS | [report](smoke-20261117-1321/report.md) |
| 2026-11-17T13:18:24 | smoke | 5 | 5 | 0 | 0 | PASS | [report](smoke-20261117-1313/report.md) |
| 2026-11-17T13:03:21 | regression | 0 | 0 | 0 | 0 | NO-REPORT | - |
| 2026-11-17T13:03:21 | smoke | 0 | 0 | 0 | 0 | NO-REPORT | - |
| 2026-11-17T13:00:03 | regression | 0 | 0 | 0 | 0 | NO-REPORT | - |
| 2026-11-17T13:00:03 | smoke | 0 | 0 | 0 | 0 | NO-REPORT | - |
| 2026-11-16T10:22:43 | regression | 0 | 0 | 0 | 0 | NO-REPORT | - |
| 2026-11-16T10:22:43 | smoke | 0 | 0 | 0 | 0 | NO-REPORT | - |
| 2026-11-14T17:27:32 | smoke | 5 | 5 | 0 | 0 | PASS | [report](smoke-20261114-1601/report.md) |
