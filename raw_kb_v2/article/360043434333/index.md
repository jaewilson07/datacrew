

Intro
-------

SugarCRM produces the web application Sugar, a customer relationship management system that is available in both open-source and commercial open-source applications. You can use Domo's SugarCRM connector to retrieve data about employees, notifications, records by module, and more. To learn more about the SugarCRM API, visit their website. (

http://support.sugarcrm.com/Document...ces/index.html

).


 The SugarCRM connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your SugarCRM account in the

Data Center

. This topic discusses the fields and menus that are specific to the SugarCRM connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 | * Lead management
* Pipeline management
* Sales management
* Customer relationship management
 |
|
**Primary Metrics**
 | * Leads
* MQL
* SAO
* Closed Deals
* Won Deals
* Average Deal Size
* Open Opportunities
 |
|
**Primary Company Roles**
 |
 Marketing, sales
  |
|
**Average Implementation Time**
 |
 10-15 hours
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 5
  |

Prerequisites
---------------

To connect to your company SugarCRM instance and create a DataSet, you must have the following:

 The host URL for your company's SugarCRM instance
* Your SugarCRM username and password
* Your SugarCRM client ID (which you can find in the SugarCRM Admin page under
 **OAuth Keys**
 ;

sugar

is the default client ID for API access)

Connecting to Your SugarCRM Account
-------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the SugarCRM Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


 Credentials Pane
------------------

This pane contains fields for entering credentials to connect to your SugarCRM account. The following table describes what is needed for each field:


 Field/Menu
  |
 Description
  |
| --- | --- |
|
 Username
  |
 Enter your SugarCRM username.
  |
|
 Password
  |
 Enter your SugarCRM password.
  |
|
 Host
  |
 Enter the host URL for your company's SugarCRM instance. For example:

https://domo.sugarondemand.com

|
|
 Client ID
  |
 Enter your SugarCRM client ID (

sugar

is the default client ID for API access).
  |

Once you have entered valid SugarCRM credentials, you can use the same account any time you go to create a new SugarCRM DataSet. You can manage connector accounts in the

Accounts

tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.


 Details Pane
--------------

This pane contains a primary
 **Report**
 menu, along with various other menus that may or may not appear depending on your selected report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select a SugarCRM report. The following reports are available:


|  |  |
| --- | --- |
|
 Dashboards
  |
 Returns the authenticated user's dashboards.
  |
|
 Employees
  |
 Returns a list of employees.
  |
|
 Notifications
  |
 Returns a list of notifications.
  |
|
 Records by Module
  |
 Returns a list of records for the selected module.
  |
|
 Users
  |
 Returns a list of users.
  |


 |
|
 Select the Module
  |
 Select the module with data you want to extract. If your module is not listed, enter the name of the desired module in the
 **Module Name**
 field.
  |
|
 Module Name (Optional)
  |
 If your desired module is not listed in the module list, enter the name here. This name is case-sensitive.
  |
|
 Select the Fields
  |
 Select the fields to retrieve for each record.
  |
|
 Additional Field Names to Retrieve
  |
 Enter a comma-separated list of names of additional fields you want to retrieve.
  |
|
 Deleted Records
  |
 Select
 **Yes**
 to import deleted records in your report; otherwise select
 **No**
 .
  |
|
 Select the Date Filter
  |
 Select the date field you want to filter data on.
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

Other Panes
-------------

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

a DataSet Using a Data Connector

.

