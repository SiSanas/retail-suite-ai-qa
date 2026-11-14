---
description: Run the regression suite (optionally filtered by module or priority)
argument-hint: "[module name | P1 | P2 | test ID]  (optional)"
---

Run the regression suite. Filter: **$ARGUMENTS**
- empty: every test in `test-cases/regression/`
- `P1` / `P2` / `P3`: only that priority
- a module name: only tests whose `module` matches
- a test ID such as `REG-ITM-03`: just that test

1. Read `CLAUDE.md`, `config/app.md` and `config/report-format.md`.
2. Create `reports/regression-<timestamp>/`.
3. Log in once. Run the matching tests in ID order, following CLAUDE.md "How to run a test case".
   If a session expires, log in again and continue.
4. At the end, list every `AUTOQA-` record created in this run under "Test data created" in the report.
5. Write `report.md` and `results.csv`, and include the comparison with the previous regression run.
6. Print the pass/fail totals and the failures (one line each) in chat.
