---
    title: Aha! Connector
    url: https://domo-support.domo.com/s/article/1500011035281
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/1500011035281](https://domo-support.domo.com/s/article/1500011035281)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003229
    views: 1,119
    created_date: 2022-10-24 21:11:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


Aha! is roadmap software that helps you manage your product releases, ideas, integrations, features, and more. Use Domo's Aha! connector to retrieve your Aha! data in Domo, and build better and faster products. Once your Aha! data is in Domo, you can give managers, stakeholders, and team members transparency with real-time, interactive dashboards. Combine your Aha! data with data from Marketing, Development, Project Management, CRM, and more to see the big product picture. Set up alerts to be notified of changes in your key data points. And you can access all your data in real time, from any device. To learn more about the Aha! API, visit their page [https://www.aha.io/api](https://www.aha.io/api "https://www.aha.io/api").


You connect to your Aha! account in the Data Center. This topic discusses the fields and menus that are specific to the Aha! connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


 


To connect to your Aha! account and create a DataSet, you must have the following:


* Your Aha! API key.
* The domain of your Aha! instance. Example: If your instance is located at <https://domo.aha.io/>, you would enter domo here.


 


Connecting to Your Aha! Account
-------------------------------


This section enumerates the options in the Credentials and Details panes in the Aha! Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Credentials Pane


This pane contains fields for entering credentials to connect to your Aha! account. The following table describes what is needed for each field:




| Field | Description |
| --- | --- |
| API Key | Enter your Aha! api key. |
| Domain | Enter the domain of your Aha! instance. Example: If your instance is located at <https://domo.aha.io/>, you would enter domo here. |


Once you have entered valid Aha! credentials, you can use the same account any time you go to create a new Aha! DataSet. You can manage Connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054).


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Aha! report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Account Integrations | Retrieve all account integrations. |
| All Features | Retrieve all features. |
| All Ideas | Retrieve all ideas. |
| All Initiatives | Retrieve all initiatives. |
| All Master Features | Retrieve all master features. |
| All Products | Retrieve all account products. |
| All Releases | Retrieve all releases. |
| All Tasks | Retrieve all tasks. |
| All Users | Retrieve all users. |
| Feature Comments | Retrieve all feature comments. |
| Feature Tasks | Retrieve all feature tasks. |
| Goal Comments | Retrieve all goal comments. |
| Idea Comments | Retrieve all idea comments. |
| Idea Endorsements | Retrieve all idea endorsements. |
| Idea Subscriptions | Retrieve all idea subscriptions. |
| Initiative Comments | Retrieve all initiative comments. |
| Master Feature Features | Retrieve all master feature features. |
| Product Comments | Retrieve all Product Comments. |
| Product Competitors | Retrieve all product competitors. |
| Product Features | Retrieve all product features. |
| Product Goals | Retrieve all product goals. |
| Product Idea Categories | Retrieve all product idea categories. |
| Product Ideas | Retrieve all product ideas. |
| Product Initiatives | Retrieve all product initiatives. |
| Product Integrations | Retrieve all product integrations. |
| Product Master Features | Retrieve all product master features. |
| Product Pages | Retrieve all product pages. |
| Product Personas | Retrieve all product personas. |
| Product Releases | Retrieve all product releases. |
| Release Features | Retrieve all release features. |
| Release Master Features | Retrieve all release master features. |
| Release Phases | Retrieve all release phases. |
| Release Tasks | Retrieve all release tasks. |

 |
| Sub Report | Select the sub report you would like to be included. |
| Fields | If you would like to specify the returned fields, enter a comma separated list of the fields here. Domo will attempt to retrieve all fields from Aha!, if nothing is entered. Example: field1,field2,field3 |
| Sublist to Flatten | Select the field that you would like to flatten. This will cause multiple rows to show each object in the selected field. You will not be able to flatten any list, if "None" is selected. |


### Other Panes


For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


FAQs
----


#### What version of the Aha! API does this connector use?


This connector uses v1 of the Aha! API (<https://{>company}.[aha.io/api/v1/](http://aha.io/api/v1/)).


#### Which endpoint(s) does each report call in this Connector?




| Report Name | Endpoint URL(s) |
| --- | --- |
| All Features | /features |
| All Ideas | /ideas |
| All Initiatives | /initiatives |
| All Master Features | /master\_features |
| All Products | /products |
| All Releases | /products/{product\_id}/releases |
| All Tasks | /tasks |
| All Users | /users |
| Feature Comments | /features/{feature\_id}/comments |
| Feature Tasks | /features/{feature\_id}/tasks |
| Goal Comments | /goals/{goal\_id}/comments |
| Initiative Comments | /initiatives/{initiative\_id}/comments |
| Master Feature Features | /master\_features/{master\_feature\_id}/features |
| Product Comments | /products/{product\_id}/comments |
| Product Competitors | /products/{product\_id}/competitors |
| Product Features | /products/{product\_id}/features |
| Product Goals | /products/{product\_id}/goals |
| Product Idea Categories | /products/{product\_id}/ideas\_categories |
| Product Ideas | /products/{product\_id}/ideas |
| Product Initiatives | /products/{product\_id}/initiatives |
| Product Integrations | /products/{product\_id}/integrations |
| Product Master Features | /products/{product\_id}/master\_features |
| Product Pages | /products/{product\_id}/pages |
| Product Personas | /products/{product\_id}/personas |
| Product Releases | /products/{product\_id}/releases |
| Release Features | /releases/{release\_id}/features |
| Release Master Features | /releases/{release\_id}/master\_features |
| Release Phases | /releases/{release\_id}/release\_phases |
| Release Tasks | /releases/{release\_id}/release\_tasks |


#### What kind of credentials do I need to power up this Connector?


You need your Aha! API key and domain of your Aha! instance. For example, if your instance is located at "<https://domo.aha.io/>," you would enter "domo" here.



#### Can I use the same account to create multiple datasets?


Yes





#### How often can the data be updated?


As often as needed.





#### Are there any API limits that I need to be aware of?


No



Troubleshooting
---------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.
