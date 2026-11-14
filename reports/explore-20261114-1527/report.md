# Explore report — 2026-11-14 15:27
**Environment:** http://rsposmainproxy/retailsuite/store/#   **Duration:** ~25:00   **Store:** LIVS
**Scope:** Articles: Articles (list + Advanced search), Campaigns, Hierarchies, Active store data. **Read-only.**
**Result:** Explored all 4 sub-pages. 22 tests created (5 smoke, 17 regression). Smoke dry-run 5/5 PASS. 1 likely product bug found.

App map: [app-map.md](app-map.md)

## Modules explored
| Sub-page | Screens seen |
|---|---|
| Articles > Articles | List + quick search, article detail pane (238 Banan), "Article details" modal, Advanced search modal |
| Articles > Campaigns | 4 tabs, filter dialog, campaign details page (2014233) |
| Articles > Hierarchies | Tree list, search, expand/collapse, hierarchy details (3450), Detail view (split pane) |
| Articles > Active store data | Current / Future / Historical tabs, Items with content switch, Campaign information |

## Tests created
- **Smoke: 5** (`test-cases/smoke/`)
  - SMK-ART-01 Search the stable article by ID and open its details
  - SMK-ART-02 Advanced search opens and finds an article by Article Id
  - SMK-CMP-01 Campaigns list loads and finds the stable campaign
  - SMK-HIE-01 Hierarchies tree loads and search shows the path to a node
  - SMK-ASD-01 Active store data page loads with categories and details
- **Regression: 17** (`test-cases/regression/`)
  - Articles: REG-ART-01 name search · 02 GTIN search · 03 no-result message · 04 sort by name · 05 Article details modal ·
    06 Advanced search: Article type = Deposit · **07 Advanced search: filter after Reset** · 08 Advanced search: Is on campaign = Yes
  - Campaigns: REG-CMP-01 search/no-result · 02 status filter (Expired) · 03 campaign details + article filter · 04 overview tabs
  - Hierarchies: REG-HIE-01 search/no-result · 02 expand/collapse · 03 details + Detail view
  - Active store data: REG-ASD-01 Items with content switch · 02 Current/Future/Historical tabs
- `test-cases/` only had TEMPLATE.md before this run, so nothing was overwritten or duplicated.
- No create/edit tests: this run was read-only by request, so there is no create → verify → edit flow yet.

## Dry-run results (smoke)
| ID | Status | Duration | Notes |
|---|---|---|---|
| SMK-ART-01 | PASS | 21 s | Wording fixed: step 1 now says which "Articles" link to click (top level and sub-item share the name) |
| SMK-ART-02 | PASS | 22 s | The modal closed itself after Search; step 3 handles both cases |
| SMK-CMP-01 | PASS | 16 s | |
| SMK-HIE-01 | PASS | 16 s | |
| SMK-ASD-01 | PASS | 17 s | |
Total ≈ 1.5 min (excluding login ≈ 30 s).

## Findings
| # | Classification | What happened | Evidence |
|---|---|---|---|
| 1 | PRODUCT-BUG (likely) | Advanced search: after **Reset**, a filter entered next (Article Name `Banan`, Article type `Deposit`) is ignored. The request has no filter, and 3,000+ unfiltered rows load. Without Reset, the same filters work (8 / 10 rows). Reproduced 3 times, including after waiting 5 s. | [screenshot](../../artifacts/explore/EXPLORE-adv-search-reset-filter-ignored.png); REG-ART-07 |
| 2 | NEEDS-REVIEW | The Select store screen was pre-filled with `0oyseb1456`, not Livs as documented. Picked LIVS manually. | config/app.md updated |
| 3 | NEEDS-REVIEW | The Advanced search modal **closes itself** after Search. config/app.md said it stays open. | [screenshot](../../artifacts/explore/adv-search-after-search.png) |
| 4 | Observation | Campaign ID sorts as text, not as a number ("144616400" comes before "181"). | app-map §2 |
| 5 | Observation | Hierarchy search with no match shows an empty tree with no message (Articles and Campaigns both show "No … found"). | app-map §3 |
| 6 | Observation | Articles "Reset form" clears the search box but leaves the previous result rows in the list. | app-map §1 |
| 7 | Observation | The "Report" widget on the article detail pane stayed on "Loading..." during the whole session. | [screenshot](../../artifacts/explore/adv-search-after-search.png) |

## Test data
- Created: **none** (read-only run).
- Written to `config/app.md` → Stable test data: article **238 Banan** (GTIN 2317401100009), campaign **2014233
  Test_Import_Campaign**, hierarchy **3450 CITRUS**, deposit article **301 DepositArt1**. Known quirks and login notes updated as well.

## Could not automate / needs a human
| Item | Reason |
|---|---|
| Advanced search → **Export to Excel**; Active store data ☰ → **Export Articles**; Labels **Download** | File downloads. Skipped in a read-only run, and the downloaded file's content would need a human to check. |
| Active store data **Print**, campaign **Print labels / Download labels**, article Labels **Print** | Printing is excluded by the brief. These may also mark labels as printed (a state change). |
| Active store data **trash-can icons** on label batches | Destructive (removes labels to print). Never automated. |
| **Save as selection**, **New campaign**, **Create Campaign Order**, all **Edit** / **Add** / **Use Default** buttons | They create or edit records. Excluded by the read-only brief, so there are no create/edit regression tests yet. |
| Article detail "Dashboard"/"Report" widgets and "Article reports → Open" | The Report widget never finished loading. The report pages weren't in scope. |

## Questions for the team
1. **Advanced search Reset bug (finding 1):** is this known? REG-ART-07 expects the filter to apply after Reset and will fail until it's fixed. Should it be quarantined meanwhile?
2. **Default store:** the Select store screen pre-filled `0oyseb1456`. Is the default store per user, or did someone change it? Can the test user's default be set back to LIVS?
3. **Advanced search after Search:** should the modal close (seen today) or stay open (seen earlier)? Which is the intended behaviour?
4. **Campaign ID sort:** is text order intended, or should it be numeric?
5. **Stable data ownership:** article 238 has edited label texts ("label 2 mass update change", "test123") and local prices. Others are clearly editing it. Is there an article and campaign reserved for automation that nobody edits?
6. **Top 5 active campaign articles:** every row showed Camp. price = Norm. price (Diff 0.00). Is that expected for this test campaign?
7. Can a later run be allowed to **create** an AUTOQA- campaign / selection, so we can add create → verify → edit → verify regression flows?
8. **Customer / supplier** test data is still "TO FIND". The supplier seen on 238 is ABBA SEAFOOD AB (DIREKT). Should that be the stable supplier?
