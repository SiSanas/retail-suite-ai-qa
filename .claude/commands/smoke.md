---
description: Run the smoke suite and give a GO / NO-GO verdict
argument-hint: "[module name]  (optional)"
---

Run the smoke suite. Filter: **$ARGUMENTS** (if empty, run everything in `test-cases/smoke/`).

1. Read `CLAUDE.md`, `config/app.md` and `config/report-format.md`.
2. Create `reports/smoke-<timestamp>/`.
3. Log in once. If the login fails, mark everything `BLOCKED`, verdict **NO-GO (ENVIRONMENT)**,
   and write the report.
4. Run each test case in `test-cases/smoke/` (matching the filter) by following CLAUDE.md
   "How to run a test case". Go back to the home page between tests.
5. Write `report.md` and `results.csv`.
6. Verdict:
   - **GO**: every test passed (including `PASS (flaky)`)
   - **NO-GO**: any `PRODUCT-BUG` or `ENVIRONMENT` failure
   - **REVIEW**: only `TEST-OUTDATED` or `NEEDS-REVIEW` failures
7. Print the verdict and the failures (one line each) in chat.
