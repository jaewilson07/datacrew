---
title: HubSpot Connector
url: https://domo-support.domo.com/s/article/360043431333
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043431333](https://domo-support.domo.com/s/article/360043431333)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003759
views: 2,399
created_date: 2022-10-24 21:14:00
last updated: 2022-10-24 22:40:00
---



Intro
-----


HubSpot develops software for social media and email marketing, content management, web analytics, and search engine optimization. Use Domo's HubSpot connector to compile reports about your campaigns, contacts, blogs, lead sources, and the like. To learn about the HubSpot API, visit their website (<http://developers.hubspot.com/docs/overview>).


The HubSpot connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking **Cloud App** in the toolbar at the top of the window.


You connect to your HubSpot account in the Data Center. This topic discusses the fields and menus that are specific to the HubSpot connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").




|  |  |
| --- | --- |
| **Primary Use Cases** | Compiling reports about aspects of social media and email marketing, such as campaigns, contacts, blogs, lead sources, pipeline management, etc. |
| **Primary Metrics** | * Campaign performance
* Open rates
* Email bounces
* Leads
* MQL
* SAO
 |
| **Primary Company Roles** | Marketing/sales roles |
| **Average Implementation Time** | Less than 1 hour |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 2 |



Using the Domo HubSpot connector
--------------------------------


Follow these step-by-step instructions to configure the Domo HubSpot connector:


1. Type "hubspot" in the search bar in the Domo Appstore.  
  
![hubspot1.png](hubspot1.png)  
  
The search result will fetch the relevant connector(s) as shown below.   
  
![hubspot2.png](hubspot2.png)
2. Click on the HubSpot tile.   
  
The HubSpot connector dashboard will open, displaying the details view for the connector.
3. Click **Get the Cards** in the upper right corner.   
  
![hubspot3.png](hubspot3.png)  
  
The **Connect Data for your Sample App** window will pop up. To view your data, you need to connect your HubSpot account to Domo.
4. Click **Connect**.  
  
![hubspot4.png](hubspot4.png)  
  
You are then taken to the HubSpot OAuth login window.  
  
![hubspot5.png](hubspot5.png)
5. Enter your email address and password associated with your HubSpot account. Alternatively, you can use your Google account or Single sign-on for logging in.  
  
A list of existing accounts appears, including your own account.
6. Select an account that you want to connect to. In this case, select the account that you logged in with.  
  
![hubspot6.png](hubspot6.png)  
  
The **Connect data for your Sample App** window pops up. Your selected account appears in the **Connect data** field along with its Hub ID and App ID.   
  
![hubspot7.png](hubspot7.png)
7. Click **Finish**.  
  
The data connecting process will start. It might take a minute to connect.  
  
![hubspot8.png](hubspot8.png)  
  
Once your sample app data is connected, the visual and graphical presentation of the data associated with your account will appear in a dashboard.  
  
The "Traffic Analytics" section displays collective data about the traffic.  
  
![hubspot9.png](hubspot9.png)  
  
The "Deals" section displays the data related to different deals.  
  
![hubspot10.png](hubspot10.png)  
  
The "Engagements & Contacts" section displays the data about various engagements and contacts altogether.  
  
![hubspot12.png](hubspot12.png)


Best practices
--------------


* Your Hub ID is valid for one account in Domo. Creating an additional account in Domo will cause the original account to be disconnected.
* Some reports are marked as beta. Use at your own risk, as these reports do not currently have any documentation on Hubspot's site and may be removed by Hubspot at any time.


Prerequisites
-------------


To connect to your HubSpot account and create a DataSet, you must have the following:


* Your Hub ID. This is located at the bottom of your HubSpot dashboard. For more information, see <http://help.hubspot.com/articles/How_To_Doc/How-to-find-your-hub-id>.
* The username and password you use to log into HubSpot.


Connecting to Your HubSpot account
----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the HubSpot Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials pane


This pane contains a single field where you enter your HubSpot Hub ID (see "Prerequisites" above for more details).  You are then taken to the HubSpot OAuth page where you are required to enter the email address and password for your HubSpot account. Once you have entered valid credentials, you can use the same account any time you go to create a new HubSpot DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details pane


This pane contains a primary menu in which you select your HubSpot report. One other menu, **Contact Fields**, may appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select a HubSpot report. The following reports are available:

|  |  |
| --- | --- |
| All Engagements | Get all of the engagements in a portal. |
| All Landing Pages | Returns data for all of your landing pages. |
| All Pipelines | Returns data for all pipelines. |
| Analytics Breakdown | Returns analytics data broken down by the specified category. |
| Associated Engagements | Get associated engagements (tasks or activities) on an object in HubSpot. |
| Blog Posts | Returns data for all posts of your blogs. |
| Blog Topics | Returns data for all of your blog topics. |
| Blogs | Returns high-level data for all of your blogs. |
| Broadcast Messages | Returns all broadcast messages. |
| Call Engagement Dispositions | Get the possible dispositions for sales calls |
| Campaign Events | Returns data about specific marketing campaign events. |
| Companies - All | Returns data about all companies. |
| Companies - Recent | Returns data about companies created in last 30 days (maximum 10000 records). |
| Contacts | Returns data about all of your contacts. |
| Contact Lists | Returns data about all of your contact lists. |
| Contact Lists - Contacts Recently Added | Returns information about the list and contacts that were recently added to it. |
| Contact Lists with Lifecycle Stage | Returns contact lists with lifecycle stage field. |
| Contacts in a List | Returns a list of contacts from a specified List. |
| Deals - All | Returns data about all of your deals. |
| Deals - Recent | Returns data about all of your deals that are created in last 30 days. |
| Deals With Stages | Returns data about all of your deals and deal pipelines. |
| Email Campaigns | Returns data about all of your email campaigns. |
| Email Events | Returns data about all of your email events. |
| Events List | Returns data about all of your events from the calendar. |
| Forms | Returns high-level data about all forms you have created. |
| Owners | Returns all of the owners that exist inside of HubSpot. |
| Recent Engagements | Get the most recently created or updated engagements in a portal. |
| Subscriptions Timeline | Returns subscriptions timeline data for the given date range. |
| Ticket Report | Returns the detail about ticket via the properties query parameter. |

 |
| Contact Fields | Select all fields that you want to show in your report. You must select at least one field. |
| Expand Field | Select this checkbox to get memberships data. |
| Form Submission Mode | Specify which form submissions should be fetched. |
| Show List Memberships | Select this checkbox to indicate whether current list memberships should be fetched. |
| Flatten List Memberships | Select this checkbox to indicate whether there should be a row for each contact's list membership. 
**Note**: This can make the dataset very large. |
| Property Mode | Select this checkbox to retrieve historical data for the 'Lifecycle Stage' property. |
| List ID | Select the list for which you want to get contact data. |
| Object Type | Select the associated Object Type(Depending on the object you want to fetch engagements for). |
| Breakdown By | Select the category to break down the analytics data. |
| Select properties | Select whether to retrieve all or some properties. |
| Deal Properties | Select the properties to retrieve. |
| Retrieve deal stage property history | Select this checkbox to retrieve the deal stage's history instead of just the current value. |
| Object ID | Select the associated Id. |
| Time Period | Select the time period to group the analytics data. |
| Filter | Filter the returned data to include only the specified breakdown. Provide single or multiple values for the filter.
Example: hubspot or hubspot,social,direct. |
| Data To Retrieve | Select whether you want to retrieve all data or only the data since the last successful run. |
| Object Type | Select object type. |
| Include Inactive | Select include inactive option. |
| Inactive Owners Selection | Select whether to include inactive owners or not. |
| Ticket Properties | Select the ticket properties to retrieve. |
| Report Date  | Select whether the report data is for a specific date or for a relative number of days back from today.  |
| Select Specific Date  | Select the date for the report.  |
| Days Back | Enter the number of past days that should appear in the report.   |
| Start Date | Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in **End Date**.  |
| End Date | Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in **Start Date**.   |
| Select Specific Start Date | Select the first date in your date range.  |
| Select Specific End Date | Select the second date in your date range.  |
| Days Back to Start From | Enter the number of the farthest day back that should be represented in the report. Combine with **Days Back to End At** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |
| Days Back to End At | Enter the number of the most recent day back that should be represented in the report. Combine with **Days Back to Start From** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |


### Other panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Troubleshooting
---------------


1. Review the configuration to make sure all required items have been selected.
2. Review the connector history for error messages.
3. To reduce API calls for reports that allow date selections ("Email Events," "Events," "Blog Topics," and "Subscription Timeline"), use **Append** and choose to pull data from the last successful run instead of all data.
4. In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the time frame that you are trying to pull.


FAQ
---


#### What kind of credentials do I need to power up the HubSpot Connector?


You need your Hub ID, which you can find at the bottom of your HubSpot dashboard. You need to have a 'super admin' role.


#### What kind of HubSpot account do I need to access the API?


You need a Marketing Professional or Enterprise HubSpot account to access the API.


#### Are there any API limits that I need to be aware of?


No.


#### Can I use the same HubSpot account for multiple DataSets?


Yes.


 

