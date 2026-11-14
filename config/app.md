# Retail Suite: application profile

## Environment
- **Base URL:** http://rsposmainproxy/retailsuite/store/#   <!-- TEST only -->
- **Allowed host:** rsposmainproxy (stop if the browser goes to any other host)
- **Needs VPN:** yes
- **Browser:** Chromium
- **Login page notes:** Login is a separate page ("Extenda Retail Token Service", title
  "Welcome to Extenda Retail Suite") with Username, Password and a Login button. After login
  the app shows **Select store**. The pre-filled store is NOT reliable (on 2026-11-14 it was `0oyseb1456`).
  **Always** open the store drop-down, type `Livs` in its filter box, pick **LIVS**, then press **Confirm**.
  The Home dashboard opens (`#/dashboards`) and the header shows "LIVS". If it doesn't show LIVS, stop: `ENVIRONMENT`.
- **App version seen:** 26.2.0.4205 (in the header's extra-menu dropdown), 2026-11-14

## Modules to test
Found by /explore on 2026-11-14. Top-level menu items reveal a sub-menu on hover.
Reporting and Analysis and Configuration are under the extra menu button at the right end of the main menu.
| Module | How to reach it | Priority |
|---|---|---|
| Home (dashboards) | Menu > Home | P2 |
| Articles | Menu > Articles (sub: Articles, Outside assortment, Campaigns, Calculate article prices, Price approval, Label printing, Active store data, Create article, Article Recall, Selections, Hierarchies) | P1 |
| Inventory | Menu > Inventory (sub: Stock corrections, Stock transactions, Supplier Returns, Productions, Batches, Stock count) | P1 |
| Replenishment | Menu > Replenishment (sub: Prepare order, Orderlines, Manage orders, Smart Purchases, Order schedules, Deliveries, Store Transfers, Future deliveries) | P2 |
| Customers | Menu > Customers (sub: Customers, Create customers, Customer orders, Create customer order, Invoices, Create invoices) | P2 |
| Sales | Menu > Sales > Receipts | P1 |
| Reconciliations | Menu > Reconciliations (sub: Reconciliations, Manage reconciliations, Z-Reports, X-Reports) | P2 |
| Cash management | Menu > Cash management (sub: Summary, Cash delivery, Safe consolidation, Banking, Cash drawers) | P2 |
| Pick & Collect | Menu > Pick & Collect (sub: Overview, Orders to pick, Picking started, Orders To collect, Future orders, Archived orders, Recalled Articles) | P2 |
| Reporting and Analysis | Extra menu > Reporting and Analysis (sub: Reports, Dashboards, Subscriptions, Favorites) | P2 |
| Configuration | Extra menu > Configuration (read-only checks only: Suppliers, Store, Currency) | P2 |

## Stable test data (must exist in the test environment)
- **Store:** Livs (pre-filled on the Select store screen; all tests run in this store)
- **Existing item to search for:** Article ID **238**, name **Banan** (GTIN 2317401100009, type Normal,
  hierarchy FRUKT,GRÖNT > FRUKT > CITRUS = 3450, supplier ABBA SEAFOOD AB (DIREKT)). Found by /explore 2026-11-14.
  Prices and label texts on this article are edited by other people, so don't assert exact price values.
- **Existing campaign:** **2014233 Test_Import_Campaign** ("Test promotion V3", Active, 5/4/17 – 7/29/99), articles 55 DOMESTOS,
  71 Test8, 259 Vilka doningar.
- **Existing article hierarchy:** **3450 CITRUS** (path 6 FRUKT,GRÖNT > 378 FRUKT > 3450 CITRUS). **10 ADMINISTRATION** has children.
- **Deposit article:** 301 DepositArt1 (Article type Deposit).
- **Existing customer / supplier:** TO FIND during /explore
- **Prefix for anything created by tests:** AUTOQA-

## Never do
- Never touch production or any host other than rsposmainproxy.
- Never change users, roles, permissions or system settings.
- Never delete records that don't start with AUTOQA-.
- Never run "send to POS / publish to stores / end of day / close period" style actions.
- Never switch to a store other than Livs.
- Never use the article search on Inventory > Stock corrections (it adds the article to a correction).
- During the first /explore: read-only. Do not create, edit or delete anything.

## Known quirks
- The network is slow. The first load after login takes about 10–20 s ("Loading, please wait"), and lists can take
  up to 15 s to fill. Wait for rows to appear, not for a fixed time.
- Articles list search matches **partial** IDs and GTINs: searching `238` returns 238 plus every ID/GTIN containing 238.
  The exact match is listed first.
- Articles > Advanced search is a modal. **Escape does not close it**. Use the × in its top-left corner.
  It was seen staying open after Search / Export to Excel (earlier on 2026-11-14), but in the 15:27 run it **closed itself
  after Search** every time. Tests must handle both: close it with × only if it is still open.
- In Advanced search, **a filter entered after pressing Reset is ignored**. This reproduced every time on 2026-11-14 15:27,
  even after waiting 5 s: the request has no filter and the full assortment pages in (3,000+ rows). Covered by REG-ART-07.
  Other tests must open Advanced search on a freshly loaded page and **not** press Reset.
- The main menu opens drop-downs on hover, and the open drop-down covers page content (clicks on list rows fail).
  After using the menu, move the mouse to an empty area (e.g. the right-hand detail panel) before clicking rows.
- Articles > **Articles** (sub-item) has the same name as the top-level **Articles** menu item.
- Articles > Campaigns: the default filter is Status = Active only. Rows load 20 at a time as you scroll. Campaign ID sorts
  as text ("144616400" comes before "181").
- Articles > Active store data has destructive controls next to read-only ones: **Print**, the Print drop-down, the trash-can icon
  next to each label batch ("14 of Standard 6x5" etc.), and "Export Articles" in the ☰ tab menu. Never click them.
- Articles > Hierarchies: clicking a node's **name** opens its details page. Only the arrow to its left expands it.
- Some test articles have web-resource images on an external host (www.fredriksdacoolestguy.com). The browser
  logs `ERR_NAME_NOT_RESOLVED` for it. This is test data, not a navigation; ignore it.
- The store dropdown on Select store lists some names several times (e.g. `404APITestStore1` ×8).
- Inventory in the main menu opens **Stock corrections**, which is a data-entry screen. Its "Search for article"
  box *adds* the article to a correction, so don't use it in read-only tests.