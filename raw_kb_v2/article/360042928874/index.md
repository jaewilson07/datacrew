

Intro
-------

Monitis is an all-in-one application monitoring platform that monitors your websites, applications, servers and more. To learn more about the Monitis API, visit their page (

http://www.monitis.com/docs/api.html

).


 You connect to your Monitis account in the Data Center. This topic discusses the fields and menus that are specific to the Monitis connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Monitis account and create a DataSet, you must have the following:

 A Monitis API key
* A Monitis secret key

You can obtain both of these credentials by logging into your Monitis account then navigating to
 **Tools > API > API Key**
 .


 Connecting to Your Monitis Account
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Monitis Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Monitis account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your Monitis API key.
  |
|
 Secret Key
  |
 Enter your Monitis secret key.
  |

For information about obtaining these credentials, see "Prerequisites," above.

Once you have entered valid Monitis credentials, you can use the same account any time you go to create a new Monitis DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a primary
 **Reports**
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Monitis report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Agent
  |
 Retrieves a list of agents in your account.
  |
|
 Contact Group
  |
 Retrieves a list of all groups of contacts in your account.
  |
|
 Contact List
  |
 Retrieves a list of all contacts in your account.
  |
|
 External Monitor by Tag
  |
 Retrieves a list of External monitors for the selected tag in your account.
  |
|
 External Monitor Result
  |
 Retrieves a list of results for the selected External monitor in your account.
  |
|
 External Monitor
  |
 Retrieves a list of External monitors in your account.
  |
|
 External Monitor Info
  |
 Retrieves information regarding the selected External monitor in your account.
  |
|
 External Snapshot
  |
 Retrieves a list of the last results of all users' External monitors in your account.
  |
|
 Full Page Load Info
  |
 Retrieves information about the selected Full Page Load monitor in your account.
  |
|
 Full Page Monitor Location
  |
 Retrieves a list of locations of Full Page Load monitors in your account.
  |
|
 Full Page Load Monitor
  |
 Retrieves a list of Full Page Load monitors in your account.
  |
|
 Full Page Load Monitor Result
  |
 Retrieves a list of results for the selected Full Page Load monitors in your account.
  |
|
 Full Page Load Snapshot
  |
 Retrieves a list of all users' Full Page Load monitors in your account.
  |
|
 Internal HTTP Monitor
  |
 Retrieves a list of Internal HTTP monitors for the selected agent in your account.
  |
|
 Internal HTTP Result
  |
 Retrieves results of the selected Internal HTTP monitor in your account.
  |
|
 Locations
  |
 Retrieves a list of locations in your account.
  |
|
 Notification Rules
  |
 Retrieves a list of existing notification rules for the specified monitor in your account.
  |
|
 Other Monitor
  |
 Retrieves a list of other monitors in your account.
  |
|
 Pages
  |
 Retrieves a list of pages in your account.
  |
|
 Page Modules
  |
 Retrieves a list of modules for the selected page in your account.
  |
|
 Recent Alerts
  |
 Retrieves a list of failed monitors according to sent notifications in your account.
  |
|
 Service List
  |
 Retrieves a list of available services and their possible configurations in your account.
  |
|
 Step Results
  |
 Retrieves detailed step results for certain transaction monitors in your account.
  |
|
 Step Net
  |
 Retrieves the net for the selected Transaction step in your account.
  |
|
 Tags
  |
 Retrieves a list of all tags for a user's External monitors.
  |
|
 Transaction Locations
  |
 Retrieves a list of locations of Transaction monitors in your account.
  |
|
 Transaction Monitors
  |
 Retrieves a list of Transaction monitors in your account.
  |
|
 Transaction Monitor Info
  |
 Retrieves information about specified Transactions in your account.
  |
|
 Transaction Monitor Results
  |
 Retrieves results for the selected Transaction in your account.
  |
|
 Transaction Snapshot
  |
 Retrieves the last results of all of the user's Transaction monitors.
  |

|
|
 Tags
  |
 Select the tag you want to retrieve information for.
  |
|
 External Monitor
  |
 Select the External monitor you want to retrieve information for.
  |
|
 Transaction Monitor
  |
 Select the Transaction monitor you want to retrieve information for.
  |
|
 Duration
  |
 Select whether you want to pull data for a specific date or a date range.
  |
|
 Report Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today.
  |
|
 Select Specific Date
  |
 Select the date for the report.
  |
|
 Days Back
  |
 Enter the number of past days that should appear in the report.
  |
|
 Start Date
  |
 Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in
 **End Date**
 .
  |
|
 End Date
  |
 Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in
 **Start Date**
 .
  |
|
 Select Specific Start Date
  |
 Select the first date in your date range.
  |
|
 Select Specific End Date
  |
 Select the second date in your date range.
  |
|
 Days Back to Start From
  |
 Enter the number of the farthest day back that should be represented in the report. Combine with
 **Days Back to End At**
 to create a range of represented days.


 For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Days Back to End At
  |
 Enter the number of the most recent day back that should be represented in the report. Combine with
 **Days Back to Start From**
 to create a range of represented days.


 For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Agent
  |
 Select the agent you want to retrieve information for.
  |
|
 Monitors
  |
 Select the type of monitor you want to retrieve information for.
  |
|
 Page Name
  |
 Select the page you want to retrieve information for.
  |
|
 Step Result ID
  |
 Enter the ID of the step result you want to retrieve information for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

