# Retail Suite nightly QA - 2026-11-22 00:43

| Suite | Total | Passed | Failed | Blocked | Skipped | Result |
|---|---|---|---|---|---|---|
| smoke | 5 | 5 | 0 | 0 | 0 | PASS |
| regression | 17 | 15 | 2 | 0 | 0 | **FAIL** |

## Failures
- **REG-ART-07** Advanced search applies a filter entered after Reset: FAIL PRODUCT-BUG - First search after Reset ignored Article Name=Banan (full assortment; first row 240 Oxfile); second search returned 8 rows
- **REG-ART-08** Advanced search filter Is on campaign = Yes: FAIL ENVIRONMENT - 238 Banan listed (27 rows) because it is on campaign "test 66565" (seen on Top 5 campaign tabs); same on retry

Run: https://github.com/SiSanas/retail-suite-ai-qa/actions/runs/44962034770

## History (last 30 runs)

| Date | Suite | Total | Passed | Failed | Blocked | Verdict | Report |
|---|---|---|---|---|---|---|---|
| 2026-11-22T00:43:09 | regression | 17 | 15 | 2 | 0 | FAIL | [report](regression-20261122-0032/report.md) |
| 2026-11-22T00:43:09 | smoke | 5 | 5 | 0 | 0 | PASS | [report](smoke-20261122-0028/report.md) |
| 2026-11-21T01:17:06 | regression | 17 | 15 | 2 | 0 | FAIL | [report](regression-20261121-0106/report.md) |
| 2026-11-21T01:17:06 | smoke | 5 | 5 | 0 | 0 | PASS | [report](smoke-20261121-0102/report.md) |
| 2026-11-20T15:58:32 | smoke | 5 | 5 | 0 | 0 | PASS | [report](smoke-20261120-1554/report.md) |
| 2026-11-20T13:05:18 | regression | 17 | 15 | 2 | 0 | FAIL | [report](regression-20261120-1254/report.md) |
| 2026-11-20T13:05:18 | smoke | 5 | 5 | 0 | 0 | PASS | [report](smoke-20261120-1250/report.md) |
| 2026-11-18T11:41:38 | smoke | 5 | 5 | 0 | 0 | PASS | [report](smoke-20261118-1137/report.md) |
| 2026-11-18T11:09:41 | smoke+regression | 0 | 0 | 0 | 0 | UNREACHABLE | - |
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
