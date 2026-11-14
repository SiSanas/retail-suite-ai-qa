# App map: Articles (partial), 2026-11-14 15:27

**Environment:** http://rsposmainproxy/retailsuite/store/#, store **LIVS**, app 26.2.0.4205
**Scope:** Articles > Articles (list + Advanced search), Campaigns, Hierarchies, Active store data. Read-only.
**Navigation:** hover **Articles** in the main menu. A drop-down lists Articles, Outside assortment, Campaigns, Calculate article
prices, Price approval, Label printing, Active store data, Create article, Article Recall, Selections, Hierarchies.
The drop-down stays open while the mouse is over it and covers the page. Move the mouse away before clicking content.

---

## 1. Articles > Articles (`#/articles/article/listwithdetails`)
Breadcrumb "Articles / Articles". Two panes: the list on the left, "Complete article details" on the right.

**List pane**
- Search box "Id, Name, GTIN...", a ★ (favourites) button, and **Search** (Enter also works).
- Links: **Advanced search**, **Reset form**. A list-icon button (layout).
- Columns: Article ID, Article name (both sortable by clicking the header). Rows load in pages of 200 as you scroll.
- The list is empty until you search.

**Observed behaviour**
| Action | Result |
|---|---|
| Search `238` | Partial matches on ID/GTIN (60+ rows). `238 Banan` is **first**. |
| Search `Banan` | 8 rows, all with "banan" in the name (Banan, Banana, MJÖLKDRYCK BANAN, …) |
| Search GTIN `2317401100009` | 1 row: 238 Banan |
| Search `ZZQXNOSUCH999` | No rows, the message "No articles found" |
| Click "Article name" header | A→Z, ignoring case; a second click gives Z→A |
| Reset form | Clears the search box. The previous rows **stay** in the list. |

**Detail pane (article 238)**: sections Basic info (Edit, Details, ★), Prices (Edit, List, Use Default), Web resources,
GTIN ("Primary GTIN: 2317401100009"), Content declarations (Add), Supplier info (Order, Edit, Use Default), Dashboard, Report
(stayed on "Loading..."), Stock data (To department, Correction, More), Article reports (Hourly sales, Problem articles,
Article Hourly Sales widget — Open), Labels (Edit, Print, Download), Assortment Details, Extended article information,
Article planograms (Add).
- Basic info for 238: Article type Normal, hierarchy FRUKT,GRÖNT > FRUKT > CITRUS, Barcode 2317401100009 (Active),
  Supplier ABBA SEAFOOD AB (DIREKT), Receipt text Banan. Badges: "Active sales price is locally defined" and
  "Has locally defined active purchase price".
- Prices: Active / Next / Chain price columns. Sales price 21.00 (active) vs 17.00 (chain), unit Kilogram.
- **Details** opens a read-only modal "Article details" with "Article basic info" and "Store specific info". The checkboxes are disabled. Close it with ×.

### Advanced search (modal)
Fields: Article Id, Article Name ("Please search with only one article name"), Article hierarchy (picker), Article type
(Normal, Subscription, Service, Open PLU, Deposit, Deposit reverse vending, Deposit manual, Negative sale, Negative sale PLU,
Bundle, Model, Digital, Fee, Recipe, Medical prescription, Medical bag (RxBag), GovProcessingFee, Menu, Fuel, Wholesale),
Status (default "Created, Active"), GTINs, Supplier, Ordering alternatives, Order generator, Extended article information
(Select), Article receipt text, Assortment comment, Assortment status, Has stock, Has stock movements, Manufacturer, Brand,
Gross margin (from/to %), Planogram, and Yes/No drop-downs: Is assortment locally defined, Is scale article, Has content
declarations, Has sales location prices, Is on campaign, Has locally defined active/future sales price, active promotion
price, active purchase price, active campaign purchase price.
Buttons: **Reset**, **Export to Excel**, **Save as selection**, **Search**.

| Action | Result |
|---|---|
| Article Id `238` → Search | 1 row: 238 Banan |
| Article Name `Banan` (fresh page) → Search | 8 rows (request carries `articleName`) |
| Article type Deposit (fresh page) | 10 rows. Checked 301 and 17970: both have Article type "Deposit" |
| Is on campaign = Yes (fresh page) | 30 rows, including 55, 71 and 259 (campaign 2014233), not 238 |
| **Reset, then any filter → Search** | **Filter ignored.** The request has no filter, and the list pages through 3,000+ rows. Reproduced 3 times. |
| After Search | The modal **closed itself** (earlier notes said it stays open) |
| Re-open after a search | Article Id from the previous search is kept. Article type was not kept. |

## 2. Articles > Campaigns (`#/campaigns/list/all`)
Breadcrumb "Articles / Campaigns". Tabs: **All campaigns**, **Active discount combinations campaigns**,
**Top 5 active campaign articles**, **Top 5 purchase campaign articles**.
- All campaigns: search "Search by campaign ID, name, description...", a funnel button (filters), **Search**, and **New campaign** (not used).
- Grid: Campaign ID (sorted ascending by default, **as text**), Name, Description, Just for members, Start date,
  End date, Status. Rows load 20 at a time as you scroll.
- Filter dialog "Select campaign filters": By status (Created, **Active**✓, Expired, Deleted), By type (Discount
  combination✓, Promotion✓), By scope (Local✓, Central✓), **Confirm**.
- Default (Active only): 1 row, **2014233 Test_Import_Campaign**. With Expired added: 320 rows after scrolling.
- Search `Test_Import` or `2014233` gives 1 row. `ZZQXNOSUCH999` gives "No campaigns found".
- **Campaign details** (`#/campaigns/campaign/details/2014233`): Campaign ID, name, description, Just for members (☐),
  Is sourcing campaign (☑), Start/End date, Purchase start/end date, Last exported date, Status. Buttons: Create Campaign Order, Edit,
  Download labels, Print labels (none used). Campaign articles grid (Article ID link, name, GTIN, campaign sales/purchase/net cost
  price, gross profit) with a client-side **Filter** box (DOMESTOS → 1 row). A Discount combinations grid (5 rows).
- Active discount combinations campaigns: Campaign ID, name, description, discount combination name and type. 5 rows for 2014233.
- Top 5 active campaign articles: Article name, GTIN, Campaign name, Camp. price, Norm. price, Diff, Diff (%). 3 rows, all Diff 0.00.
- Top 5 purchase campaign articles: Camp. purch. price, Norm. purch. price, Diff, Diff (%). 3 rows (e.g. Test8 +900 %).

## 3. Articles > Hierarchies (`#/articles/hierarchy/list`)
Breadcrumb "Articles / Hierarchies". Search "Id, Name" + **Search**. The tree lists nodes as "ID - Name", alphabetically by name.
A › arrow expands a node; clicking the name opens details.
- Search `CITRUS` or `3450` shows the path 6 - FRUKT,GRÖNT > 378 - FRUKT > 3450 - CITRUS. No match gives an empty tree, **with no message**.
- Expanding 10 - ADMINISTRATION shows children 10022, 1026, 1027, 1028 …; clicking again collapses.
- Details (`#/articles/hierarchy/details/3450`): "Article hierarchy information" (Article hierarchy, ID, Display ID, level
  "Detail level", Markup %, Restock order markup %, Label group, Order generator, Default Vat "Groceries SWE"), and
  "Dynamic fields bound to article hierarchy" (accordions General, SearchTest, Store specific info, RSPOS).
- The list-icon menu has **List View** / **Detail view**. Detail view (`#/articles/hierarchy/listwithdetails/details`) is a split pane;
  the right side shows "Empty" until a node is clicked. Page title there is "Article | RS Store" (not "Article hierarchies").

## 4. Articles > Active store data (`#/activestoredata/`)
Breadcrumb "Articles / Active store data". Tabs **Current** (`?tab=currentChanges`), **Future** (`?tab=futureChanges`),
**Historical** (`?tab=historicChanges`), and a ☰ menu with **Export Articles** (not used).
- Left: "Categories", switch **Items with content** (ON by default). Accordion groups "Articles and labels changes" and
  "Campaign information" (only one open at a time).
  - Current, switch ON: "Labels to print - exported to POS (29)". Switch OFF also shows Sales price changes, Active promotions,
    Ended promotions, New articles, Expired articles, Deleted articles, Other changes (all 0).
  - Campaign information: "Active".
- Right: "Details", with **Print** + a drop-down (not used). Counters "Articles with changes 0", "Labels to print 36". Label batches by
  layout ("14 of Standard 6x5", "2 of RSPOS", "14 of Standard 3x5", "5 of Standard 50x70", "1 of Standard A4"), each with a
  **trash icon** (not used). Grid: select-all checkbox, Article ID, Article name, GTIN, Ordering alt. ID, Sales price, Sales price change,
  Labels, Action (expand chevron, disabled).
- Future: "Labels to print (1)", "Ended promotion (1)". Details: 1 label, 55 DOMESTOS at 401.00.
- Historical: grid "Historic changes" (Approved datetime, Approved by, Number of articles) showing "No historic batches are
  available". Details: "Actions", "No batch is selected".

## Console
The only errors were `ERR_NAME_NOT_RESOLVED` for www.fredriksdacoolestguy.com/brokenimage.png (a known quirk). The browser never left rsposmainproxy.
