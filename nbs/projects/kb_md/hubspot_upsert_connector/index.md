---
    title: HubSpot Upsert Connector
    url: https://domo-support.domo.com/s/article/360058716313
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360058716313](https://domo-support.domo.com/s/article/360058716313)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003290
    views: 2,167
    created_date: 2022-10-24 21:12:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


HubSpot is an inbound marketing platform designed to help your business attract customers. The Hubspot Upsert connector gets real-time alerts for your ticket data. Use Domo's HubSpot Upsert connector to retrieve the data for your tickets based on various properties. This connector supports a merge mode to update your dataset, thus avoids duplicate entries. To learn more about the HubSpot API, visit their page (<http://developers.hubspot.com/docs/overview>).


The HubSpot Upsert connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking ****Cloud App**** in the toolbar at the top of the window.


You connect to your HubSpot account in the Data Center. This topic discusses the fields and menus that are specific to the HubSpot Upsert connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your HubSpot account and create a DataSet, you must have the following:


* The username and password you use to log into HubSpot.


Connecting to Your HubSpot Account
----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the HubSpot Upsert Connector page. The components of the other panes in this page, **Scheduling**and **Name & Describe Your DataSet,** are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


The Domo HubSpot Upsert connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click **Connect** (or select **Add Account** if you have existing HubSpot accounts in Domo) to open the HubSpot OAuth screen where you can enter your HubSpot credentials. Once you have entered valid HubSpot credentials, you can use the same account any time you go to create a new HubSpot DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").




 

**Note:** If you are already logged into HubSpot when you connect in Domo, you are authenticated automatically when you click **Add account**. If you want to connect to an account that is different from the one you are logged into, you must first log out of HubSpot.



### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the HubSpot report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Calls | Get all the calls available for your account. |
| Companies | Get all the companies available for your account. |
| Contacts | Get all the contacts available for your account. |
| Custom Objects | Get all the records for a specific custom object available for your account. |
| Emails Report | Get all the emails report available for your account. |
| Meetings Report | Get all the meetings report available for your account. |
| Notes Report | Get all the notes report available for your account. |
| Owners | Get all the owners available for your account. |
| Postal Mail Report | Get all the postal mail report available for your account. |
| Tasks Report | Get all the tasks report available for your account. |
| Ticket Report | Get all tickets from a portal. |

 |
| Select Company Properties to Retrieve | Select whether to retrieve all or only specific company properties. |
| Company Properties | Select company properties. |
| Select Contact Properties to Retrieve | Select whether to retrieve all or only specific contact properties. |
| Contact Properties | Select contact properties. |
| Custom Object Type | Select the Custom Object. |
| Select Type of Owners | Select whether you want to retrieve all owners or only archived owners. |
| Select Properties To Retrieve | Select whether to retrieve tickets for all or only specific properties. |
| Properties | Select the properties for the tickets to retrieve. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


FAQs
----



#### What endpoint is the base URL for this connector?


The base URL for HubSpot Upsert is <https://api.hubapi.com>.




#### Which endpoint(s) does each report call in this connector?




| Report Name | Endpoint URL(s) |
| --- | --- |
| Companies | /crm/v3/properties/company |
| Contacts | /crm/v3/contacts |
| Custom Objects | /crm/v3/schemas |
| Owners | /crm/v3/owners/ |
| Ticket Report | /crm/v3/objects/tickets |




#### What kind of credentials do I need to power up the HubSpot Upsert connector?


You need your Hubspot email address and password.




#### How frequently will my data update?


As often as needed.




#### Are there any API limits that I need to be aware of?


No




#### Can I use the same HubSpot account to create multiple datasets?


Yes




#### What's the difference between the Hubspot and Hubspot Upsert connectors?


The Hubspot Upsert connector supports a Merge mode along with the Append and Replace modes to update your dataset. The Merge mode replaces all updated rows, while any new rows are appended. Thus, it avoids duplicate entries.   
The Hubspot connector supports the Append and Replace modes to update your datasets.


