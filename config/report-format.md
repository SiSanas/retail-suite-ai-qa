# Report format (report.md)

```
# <Run type> report — <YYYY-MM-DD HH:MM>
**Verdict:** GO / NO-GO / REVIEW        (smoke only)
**Environment:** <Base URL>   **Duration:** <mm:ss>
**Totals:** <n> run · <n> passed · <n> failed · <n> flaky · <n> blocked · <n> skipped

## Failures
| ID | Title | Classification | What happened | Evidence |
|---|---|---|---|---|
| REG-ITM-03 | Create item | PRODUCT-BUG | Save showed "Error 500" instead of "Item saved" | [screenshot](../../artifacts/REG-ITM-03-step4.png) |

## Flaky (passed on retry)
## Auto-updated tests (please review)
| ID | What changed | Why it is not a behaviour change |
## Compared with previous run (<folder>)
- New failures:
- Fixed:
## Test data created
## Could not automate / needs a human
## All results
| ID | Title | Module | Priority | Status | Duration |
```

Keep "What happened" to one factual sentence: what was expected and what was seen.
