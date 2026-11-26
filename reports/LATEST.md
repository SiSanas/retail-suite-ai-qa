# Retail Suite nightly QA - 2026-11-26 03:09

| Suite | Total | Passed | Failed | Blocked | Skipped | Result |
|---|---|---|---|---|---|---|
| smoke | 5 | 5 | 0 | 0 | 0 | PASS |
| regression | 17 | 15 | 2 | 0 | 0 | **FAIL** |

## Failures
- **REG-ART-07** Advanced search applies a filter entered after Reset: FAIL PRODUCT-BUG - Search after Reset ignored Article Name=Banan (full assortment; first row 240 Oxfile); reproduced on retry
- **REG-ART-08** Advanced search filter Is on campaign = Yes: FAIL ENVIRONMENT - 238 Banan listed because it is on local campaign 2026475 "test 66565" (Active 11/17/26-11/30/26; also seen in Top 5 grids); same on retry; 55/71/259 present

Run: https://github.com/SiSanas/retail-suite-ai-qa/actions/runs/45738651967

## History (last 30 runs)

| Date | Suite | Total | Passed | Failed | Blocked | Verdict | Report |
|---|---|---|---|---|---|---|---|
| 2026-11-26T03:09:27 | regression | 17 | 15 | 2 | 0 | FAIL | [report](regression-20261126-0309/report.md) |
| 2026-11-26T03:09:27 | smoke | 5 | 5 | 0 | 0 | PASS | [report](smoke-20261126-0251/report.md) |
| 2026-11-25T03:51:13 | regression | 17 | 15 | 2 | 0 | FAIL | [report](regression-20261125-0342/report.md) |
| 2026-11-25T03:51:13 | smoke | 5 | 5 | 0 | 0 | PASS | [report](smoke-20261125-0337/report.md) |
| 2026-11-24T05:11:00 | regression | 17 | 15 | 2 | 0 | FAIL | [report](regression-20261124-0502/report.md) |
| 2026-11-24T05:11:00 | smoke | 5 | 5 | 0 | 0 | PASS | [report](smoke-20261124-0458/report.md) |
| 2026-11-23T00:55:41 | regression | 17 | 15 | 2 | 0 | FAIL | [report](regression-20261123-0055/report.md) |
| 2026-11-23T00:55:41 | smoke | 5 | 5 | 0 | 0 | PASS | [report](smoke-20261123-0045/report.md) |
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
