---
    title: IntelliShift Connector
    url: https://domo-support.domo.com/s/article/4421037429271
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/4421037429271](https://domo-support.domo.com/s/article/4421037429271)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003193
    views: 2,109
    created_date: 2022-10-24 21:11:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


IntelliShift provides the modern fleet and safety management solution that deploys in half the time. Experience the most impactful way to safeguard employees and combine AI-powered cams with the richest vehicle data from fully integrated hardware that deploys in seconds. Retrieve the information about your fleet operators in seconds. Combine your data with Domo to get better and faster visibility across your operations and learn how an integrated architecture gets you to more value.  To learn more about the IntelliShift API, visit their page (<https://intellishift.com/solutions/operations-intelligence/api/>).


The IntelliShift Connector is a "Cloud App" Connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the Connector page for this and other Cloud App Connectors by clicking **Cloud App** in the toolbar at the top of the window.


You connect to your IntelliShift account in the Data Center. This topic discusses the fields and menus that are specific to the IntelliShift Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your IntelliShift account and create a DataSet, you must have the email address and password associated with IntelliShift account.


Connecting to Your IntelliShift Account
---------------------------------------


This section enumerates the options in the Credentials and Details panes in the IntelliShift Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Credentials Pane


This pane contains fields for entering credentials to connect to your IntelliShift account. The following table describes what is needed for each field:




| Field | Description |
| --- | --- |
| Email | Enter the email address associated with your IntelliShift account. |
| Password | Enter the password associated with your IntelliShift account. |


Once you have entered valid IntelliShift credentials, you can use the same account any time you go to create a new IntelliShift DataSet. You can manage Connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054).


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the IntelliShift report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Operator | Returns a paged collection of operators |

 |
| Sort Direction | Select whether you want the report sorted by ascending or descending direction. |
| Sort By | Enter the name of the column to sort on.Example: id, operatorName, firstName, lastName, pin, etc. |
| Filter | Enter a search term to filter the results by. This field only takes a single string and will search all columns for a match. 
Example: ABC. |


### Other Panes


For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


FAQs
----


#### What endpoint is the base URL for this connector?


The base URL for IntelliShift is <https://connect.intellishift.com/>.


#### Which endpoint(s) does each report call in this Connector?




| Report Name | Endpoint URL |
| --- | --- |
| Operator | /api/operators |


#### What kind of credentials do I need to power up this connector?


You need the email address and password associated with IntelliShift account.


Can I use the same account to create multiple datasets?


Yes


How often can the data be updated?


As often as needed.


Are there any API limits that I need to be aware of?


No


Troubleshooting
---------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.
