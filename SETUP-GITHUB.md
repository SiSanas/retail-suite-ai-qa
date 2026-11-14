# Phase 2: GitHub repository + nightly scheduled run

```
GitHub repo (test cases, reports)  --midnight timer / Run workflow-->  Self-hosted runner (inside network)
                                                                         └─ Claude Code + Playwright MCP (headless)
                                                                              └─ Retail Suite (rsposmainproxy)
                                     <-- report committed + pass/fail on the run page --
```

- **Schedule:** every day at 00:00 IST (`30 18 * * *` UTC). GitHub can start scheduled runs 5–30 minutes late.
- **What runs:** `/smoke`, then `/regression` (all modules that have test cases).
- **No recording:** no video or trace. Screenshots are taken only when a test fails.
- **Results:**
  - The run shows **green** (all passed) or **red** (a test failed or was blocked) in the Actions tab. GitHub emails you when a scheduled run fails.
  - The run page shows a summary table plus the list of failures.
  - `reports/LATEST.md` in the repo shows the latest result and the last 30 runs.
  - `reports/history.csv` keeps one row per suite per night, for charts or Excel.
  - `reports/<suite>-<time>/report.md` and `results.csv` are the full report, committed every night.
  - Screenshots and raw logs are attached to the run (Artifacts, kept 30 days).

## One-time setup

### 1. Create the repository and push
On GitHub, create a **private** repo (e.g. `retail-suite-ai-qa`), with no README. Then in `C:\retail-suite-ai-qa`:
```powershell
git init -b main
git add .
git status                       # check that config/secrets.env is NOT listed
git commit -m "Retail Suite AI QA: Articles smoke + regression"
git remote add origin https://github.com/<org-or-user>/retail-suite-ai-qa.git
git push -u origin main
```

### 2. Add the repository secrets
Repo → **Settings → Secrets and variables → Actions → New repository secret**:

| Name | Value |
|---|---|
| `RS_USERNAME` | Retail Suite test user |
| `RS_PASSWORD` | its password |
| `CLAUDE_CODE_OAUTH_TOKEN` | *(optional)* output of `claude setup-token`, run in a terminal on your machine. If you skip it, the runner uses the Claude Code login of the Windows user it runs as. |

### 3. Set up the self-hosted runner (the machine inside the network)
For now this can be your own PC. Later it's **Internal dev-120**; the steps are the same. The machine needs Node.js, Claude
Code (signed in) and `npx playwright install chromium`, as in Phase 1, and it must reach rsposmainproxy at midnight
(VPN on, or inside the network).

Repo → **Settings → Actions → Runners → New self-hosted runner → Windows**. Run the commands GitHub shows, in a
folder such as `C:\actions-runner`. When `config.cmd` asks:
- **Labels:** type `retail-suite`
- **Run as service?**
  - **N** for now: start it with `run.cmd` and leave that window open, under your own Windows user.
  - or **Y**, and when asked for the account, give *your* Windows user (not NETWORK SERVICE), so that it can use your
    Claude Code login and Node.

The runner shows as **Idle** (green) in Settings → Actions → Runners.

### 4. Test it now
Repo → **Actions → Retail Suite nightly QA → Run workflow** → choose `smoke` → **Run**. After about 3–5 minutes the run turns green,
and `reports/LATEST.md` appears in the repo.

## Everyday use
- **Add tests for a new module:** run `/explore <module>` locally, review the tests, then `git add test-cases config` → commit → push.
  The next nightly run includes them automatically.
- **Pull the nightly reports to your PC:** `git pull`.
- **Mute a known failing test:** set `status: quarantined` in its front matter, then commit and push.
- **Change the time:** edit the `cron` line in `.github/workflows/nightly-qa.yml` (it's in UTC; IST = UTC + 5:30).
