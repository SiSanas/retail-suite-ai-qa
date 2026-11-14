---
description: First run — explore Retail Suite, map the screens and generate smoke + regression test cases
argument-hint: "[module name]  (optional — explore just one module)"
---

Explore Retail Suite and generate test cases. Scope: **$ARGUMENTS** (if empty, all modules in `config/app.md`).

1. Read `CLAUDE.md`, `config/app.md` and `test-cases/TEMPLATE.md`. List what's already in
   `test-cases/` so you **extend** it, never overwrite or duplicate.
2. Open the Base URL and log in (see "Logging in" in CLAUDE.md). Confirm the home page loaded.
3. For each module in scope:
   a. Navigate to it and use `browser_snapshot` to record its screens, main actions, forms,
      grids, filters and the messages you see.
   b. Follow the main paths a user would: search, view, create (with `AUTOQA-` names), edit
      what you created, filter, sort, export. Don't do anything on the "Never do" list.
   c. Write `reports/explore-<timestamp>/app-map.md`: one section per module with screens,
      navigation path, key fields and observed behaviour.
4. Generate test cases from what you **actually observed** (don't invent features):
   - **Smoke** (`test-cases/smoke/`): 1–3 per module. Is the module reachable, does the main
     screen load, does the key read-only action work? The whole smoke suite should finish in
     about 10 minutes.
   - **Regression** (`test-cases/regression/`): main flows, validations (required fields,
     invalid input), create → verify → edit → verify, search and filter correctness.
   - One file per test, named `<ID>-<short-slug>.md`. IDs: `SMK-<MOD>-NN`, `REG-<MOD>-NN`.
   - Follow `TEMPLATE.md`: intent-level steps, observable Expected results, no CSS selectors.
5. Dry-run every new smoke test once and fix any wording problems in the steps.
6. Write `reports/explore-<timestamp>/report.md` with:
   - modules explored, number of tests created (smoke and regression)
   - dry-run results
   - **Could not automate**: anything you couldn't do (uploads, downloads, canvas charts,
     MFA, popups) with the reason, so a human can decide
   - questions for the team (unclear expected behaviour, missing test data)
7. Finish with a short summary in chat.
