---
    title: Bazaarvoice Connector
    url: https://domo-support.domo.com/s/article/360042927674
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042927674](https://domo-support.domo.com/s/article/360042927674)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003679
    views: 2,117
    created_date: 2022-10-24 21:14:00
    last updated: 2022-10-24 22:40:00
    ---



Intro
-----


Bazaarvoice is a network that connects brands, retailers, and consumers, delivering ROI through reviews, analytics, and targeted media. Use Domo's Bazaarvoice connector to compile reports about products, reviews, questions, and answers. For more information about the Bazaarvoice API, visit their website. ([https://developer.bazaarvoice.com/conversations-api/home](https://developer.bazaarvoice.com/conversations-api/home "https://developer.bazaarvoice.com/docs/read/conversations_api"))


The Bazaarvoice connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking **Cloud App** in the toolbar at the top of the window.


You connect to your Bazaarvoice account in the Data Center. This topic discusses the fields and menus that are specific to the Bazaarvoice connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").




|  |  |
| --- | --- |
| **Primary Use Cases** | * Retrieving answer data from reviews for certain products/categories.
* Determining product/category sentiment.
* Reviewing specific feedback customers are providing about products/categories.
 |
| **Primary Metrics** | * Top/bottom product ratings
* Reviewer satisfaction levels
* Campaign sentiment
* Average product ratings
* Reviewer demographics
* Number of product reviews per product
 |
| **Primary Company Roles** | * Marketing director
* Marketing manager
 |
| **Average Implementation Time** | 15-30 minutes |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 2 |


Best Practices
--------------


If you have a large number of products/categories, consider running reports on only the products/categories you'd like to see.


Prerequisites
-------------


To connect to your Bazaarvoice account and create a DataSet, you must have the following:


* The base URL for your Bazaarvoice instance. Usually, this is [http://api.bazaarvoice.com](http://api.bazaarvoice.com "http://api.bazaarvoice.com") for production and [http://stg.api.bazaarvoice.com](http://stg.api.bazaarvoice.com "http://stg.api.bazaarvoice.com") for staging.
* Your Bazaarvoice API key. For information about obtaining an API key, see [https://developer.bazaarvoice.com/co...sting-api-keys](https://developer.bazaarvoice.com/conversations-api/api-key-processes/requesting-api-keys "https://developer.bazaarvoice.com/conversations-api/api-key-processes/requesting-api-keys").


Connecting to Your Bazaarvoice Account
--------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Bazaarvoice Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Bazaarvoice account. The following table describes what is needed for each field:  




| **Field** | **Description** |
| --- | --- |
| Base URL | Enter your Bazaarvoice base URL. |
| API Key (Passkey) | Enter your Bazaarvoice API key.  |


For more information about obtaining the above credentials, see "Prerequisites," above.


Once you have entered valid Bazaarvoice credentials, you can use the same account any time you go to create a new Bazaarvoice DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Report** menu in which you select a report type, as well as various other fields and menus that may or may not appear, depending on the selected report.




| **Menu** | **Description** |
| --- | --- |
| Report | Select a Bazaarvoice report. The following reports are available:

|  |  |
| --- | --- |
| Answers | Retrieves answers to user questions for a given product.   |
| Base Metrics | Retrieves review and question counts for a given product. |
| Product Metrics | Returns product metrics such as name, total comments, rating, positive and negative feedback count, etc. |
| Products | Returns product details such as brand name and ID, product name, description, part number, etc. |
| Questions | Returns user questions about a given product, with answer count, user nickname, feedback count, etc. |
| Reviews | Returns user reviews for a given product. |

  |
| Product/Category Name | Enter the name of the product or category you want to retrieve data for. If you leave this blank, data will be retrieved for all products and categories. |
| Past Submission Days | Enter the number of past days you want to retrieve submitted reviews for. For example, if you entered 30, your report would contain reviews submitted within the past 30 days. |
| Past Modification Days | Enter the number of past days you want to retrieve modified reviews for. For example, if you entered 30, your report would contain reviews modified within the past 30 days. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").  


Troubleshooting
---------------


Ensure product/category names are consistent with naming conventions in BazaarVoice.

