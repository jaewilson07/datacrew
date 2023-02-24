---
    title: CJ Affiliate Connector
    url: https://domo-support.domo.com/s/article/360043431033
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043431033](https://domo-support.domo.com/s/article/360043431033)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003789
    views: 1,089
    created_date: 2022-10-24 21:15:00
    last updated: 2022-10-24 22:40:00
    ---



Intro
-----


CJ Affiliate (formerly called Commission Junction) is an online advertising company operating in the affiliate marketing industry. To learn more about the CJ Affiliate API, visit their page ([https://api.cj.com/](https://api.cj.com/ "https://api.cj.com/")). Note that before you can begin using CJ's web services, you must register for a developer key.


You connect to your CJ Affiliate account in the Data Center. This topic discusses the fields and menus that are specific to the CJ Affiliate connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your CJ Affiliate account and create a DataSet, you must have a CJ API key. You can register for a key at [https://api.cj.com/sign\_up.cj](https://api.cj.com/sign_up.cj "https://api.cj.com/sign_up.cj").


Connecting to Your CJ Affiliate Account
---------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the CJ Affiliate Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your CJ Affiliate account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| API Key | Enter your CJ Affiliate API key. If you do not have an API key, you can register for one at [https://api.cj.com/sign\_up.cj](https://api.cj.com/sign_up.cj "https://api.cj.com/sign_up.cj"). |


Once you have entered valid CJ Affiliate credentials, you can use the same account any time you go to create a new CJ Affiliate DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the CJ Affiliate report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Advertiser Lookup | Retrieves advertiser data by querying the /advertiser-lookup web service. |
| Commissions Detail Service | Retrieves commissions data by querying the /commissions web service. |
| Link Search | Retrieves link data by querying the /link-search web service. |
| Product Catalog Search | Retrieves product data by querying the /product-search web service.  |

 |
| Website ID (Optional) | Enter the ID of the website you want to retrieve data for. You can enter multiple IDs, separated by commas. |
| Search Keywords (Optional) | Enter the keywords you want to search for. |
| ISBN (Optional) | Enter the ISBN you want to retrieve data for. |
| Manufacturer Name (Optional) | Enter the name of the manufacturer you want to retrieve data for. |
| Manufacturer SKU (Optional) | Enter the SKU of the manufacturer you want to retrieve data for. |
| Advertiser SKU (Optional) | Enter the SKU of the advertiser you want to retrieve data for. |
| UPC (Optional) | Enter the UPC of the product you want to retrieve data for. |
| Advertiser ID (Optional) | Select the account ID you want to retrieve data for. |
| Promotion Type (Optional) | Select the promotion type you want to retrieve data for. |
| Promotion Start Days (Optional) | Enter the number of days back you want to begin pulling data for. This should be in the format X day (e.g. 1 day) or X days (e.g. 7 days). |
| Promotion End Days (Optional) | Enter the number of days back you want to stop pulling data for. This should be in the format X day (e.g. 1 day) or X days (e.g. 7 days). |
| Category (Optional) | Select the category you want to retrieve data for. |
| Link Type (Optional) | Select the link type you want to retrieve data for. |
| Advertiser Name (Optional) | Enter the name of the advertiser you want to retrieve data for. |
| Mobile Tracking Certified (Optional) | Select whether mobile tracking is certified (True) or not (False). |
| Date Type (Optional) | Select whether you are pulling data by event date or posting date. |
| Start Days (Optional) | Enter the number of days back you want to begin pulling data for. This should be in the format X day (e.g. 1 day) or X days (e.g. 7 days). |
| End Days (Optional) | Enter the number of days back you want to stop pulling data for. This should be in the format X day (e.g. 1 day) or X days (e.g. 7 days). |
| CIDs (Optional) | Specify the CID of the joint advertiser or publisher you want to retrieve data for. |
| Action Type (Optional) | Select the action type you want to retrieve data for (click, impression. etc.).  |
| AIDs (Optional) | Specify the Ad IDs you want to retrieve data for. |
| Action Status (Optional) | Select the action status you want to retrieve data for. |
| Commission ID (Optional) | Enter the commission ID you want to retrieve data for. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

