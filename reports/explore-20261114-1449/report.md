# Explore report — 2026-11-14 14:49
**Environment:** https://rsposmainproxy/retailsuite/store/#   **Duration:** ~01:00
**Result:** BLOCKED — `ENVIRONMENT`: the Base URL is not reachable from the test machine.

## What happened
| Step | Result | Evidence |
|---|---|---|
| Open Base URL | `net::ERR_CONNECTION_TIMED_OUT`. Retried once after 3 s: same error. | [screenshot](../../artifacts/EXPLORE-open-base-url.png) |
| DNS lookup of `rsposmainproxy` | `Non-existent domain` (DNS server DCSRV02.extenda.local) | — |
| HTTPS request (10 s timeout) | No response, timed out | — |

Most likely cause: the VPN is not connected (`config/app.md` says **Needs VPN: yes**), or the hostname
needs a fully qualified name (for example `rsposmainproxy.<domain>`).

## Modules explored
None. The run stopped before login.

## Tests created
- Smoke: 0
- Regression: 0
- `test-cases/` was empty before this run and is unchanged.

## Dry-run results
None. No tests were created.

## Could not automate / needs a human
- Reaching the app: connect the VPN, or confirm the correct hostname.

## Questions for the team
1. **`config/app.md` is still the unfilled template.** Please fill in:
   - **Modules to test:** the table only has `REPLACE-ME` rows. Without it, explore will fall back to discovering modules from the menu.
   - **Stable test data:** store, existing item, and existing customer/supplier all hold the Base URL instead of real IDs and names.
   - **Never do:** there's a `REPLACE-ME` line. Add the actions specific to Retail Suite (for example: price changes pushed to POS, or stock adjustments).
   - **Known quirks** and **Login page notes:** both empty. For example: is a store selected after login?
2. **Scheme mismatch:** the Base URL uses `https://`, but the test-data lines use `http://`. Which is correct?
3. **Hostname:** `rsposmainproxy` is a short name, and it didn't resolve even through the corporate DNS. Does it only resolve on the VPN, or is a hosts-file entry needed?
4. **Credentials wiring:** `config/playwright-mcp.json` has no `env` or `secrets` setting, so I can't confirm that `RS_USERNAME` and `RS_PASSWORD` will be replaced at login. Please check the MCP server launch config.
