---
    title: Concur Connector
    url: https://domo-support.domo.com/s/article/360042923434
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042923434](https://domo-support.domo.com/s/article/360042923434)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003822
    views: 2,159
    created_date: 2022-10-24 21:15:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


Concur is a business expense and travel software platform. To learn more about Concur's API, visit their page [https://developer.concur.com/api-reference/](https://developer.concur.com/api-reference/ "https://developer.concur.com/api-reference/").


You connect to your Concur account in the Data Center. This topic discusses the fields and menus that are specific to the Concur connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Concur account and create a DataSet, you must have the following:


* Client ID
* Client Secret
* The username and password used to log into your Concur account


To obtain your Client ID and Secret, contact your Concur Partner Enablement Manager or Partner Account Manager. Once you have registered an application, you will receive a Client ID and Client Secret. For more information on getting started with Concur's API, see [https://developer.concur.com/api-reference/authentication/getting-started.html](https://developer.concur.com/api-reference/authentication/getting-started.html "https://developer.concur.com/api-reference/authentication/getting-started.html")


Connecting to Your Concur Account
---------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Concur Connector page. The components of the other panes in this page, **Scheduling**and **Name & Describe Your DataSet,** are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Credentials Pane


This pane contains fields for entering credentials to connect to your Concur instance. The following table describes what is needed for each field:




| Field | Description |
| --- | --- |
| Client ID | Enter the Client ID obtained from registering your Concur App. |
| Client Secret | Enter the Client Secret obtained from registering your Concur App. |
| Username | Enter the username used to log into your Concur account. |
| Password | Enter the password used to log into your Concur account. |


Once you have entered valid Concur credentials, you can use the same account any time you go to create a new Concur DataSet. You can manage connector accounts in the Accounts tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Concur report you want to run. The following reports are available:

| Report | Description |
| --- | --- |
| Company Card Transactions | Receives a list of unassigned company card charges for the user. |
| Entry Attendee Associations | Receives data about Concur Expense Entry Attendee Associations. |
| Expense Allocations | Receives data about Concur Expense Allocations. |
| Expense Attendees | Receives data about Concur Expense Attendees. |
| Expense Attendee Types | Receives data about Concur Expense Attendee Types. |
| Expense Delegators | Receives data about Concur Expense Delegators. |
| Expense Entries | Receives data about Concur Expense Entries. |
| Expense Form | Receives data about Concur Expense Form. |
| Expense Group Configurations | Receives data about Concur Expense Group Configuration. |
| Expense Itemizations | Receives data about Concur Expense Itemizations. |
| Expense Reports | Receives data about Concur Expense Reports. |
| Expense Reports Detail | Receives detailed data about Concur Expense Reports. |
| Extract Definitions | Receives data about Concur Extract Definitions. |
| Extract Jobs | Receives data about Concur Extract Jobs. |
| List Items | Receives data about Concur List Items. |
| Locations | Receives details of locations that are used by Concur and that are valid at the company of user. |
| Receipt Images | Receives data about Concur Receipt Image. |
| Reports Detail | (deprecated. Use Expense Report Details) Retrieves the full set of information for the reports. |
| Travel Itineraries | Receives data about Concur Travel Itineraries. |
| User Information | Receives data about Concur User Information. |

 |
| Status | When selecting the **Reports Detail** report, you must choose a report status. Options include: * Active
* Unsubmitted
* Pending
* Accounting Review
* Processing
* Integrated
* Pending External Validation
* Payment Confirmed
 |
| Definition | When selecting the Extract Jobs report, choose the definition. |
| User ID | Enter the user ID. |
| Approval Status | Select to filter reports by the specified status. |
| Date Filter | Select the date field that will be used to filter the expense report. |
| Duration  | Select whether you want to pull data for a specific date or a date range.  |
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
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |
| Base URL Override (Advanced users only) | **Warning**: Do not enter data here if you do not understand how this will affect your API requests. Concur returns a URL to call API endpoints as a part of the Authentication process. If you would like to ignore the URL concur sends and use something else, enter it here. 
Example: '<https://us.api.concursolutions.com'>;. Click <a href='<https://developer.concur.com/platform/base-uris.html'>here</a>>; for more information. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


FAQ
---


##### What credentials do I need to power up this connector?


You need the username or email ID associated with your Concur account. 


##### How do I know that my Concur credentials are secure?


The login process uses the OAuth process, so your Concur credentials are never seen or stored by Domo. This keeps your login secure. You can revoke Domo's access to your account at any time.


##### How frequently can the data be updated?


As often as needed.


##### How does my user role affect the data returned in the Concur connector?


You can receive the company-wide expense reports only if your user has the 'Web Services Admin role'. Otherwise, you can only see items for your user.


##### Can I use the same account for generating different reports?


Yes.

