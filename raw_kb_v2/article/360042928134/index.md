

Intro
-------


 GetThere is a corporate travel reservation system

serving millions of business travelers in over 100 countries. To learn more about the GetThere API, visit their page (

https://www.sabretravelnetwork.com/h...ons/developer/

).


**Note:**
 The user interface for building this connector is not yet available in our Connectors listing in the Data Center, meaning you will not be able to configure the connector on your own. However, we at Domo are more than happy to configure the connector for you so you can begin using it to pull your data into Domo. Please don't hesitate to reach out to your CSM or Domo Support. For contact information, see


 Getting Help


 .


 You connect to your GetThere account in the Data Center. This topic discusses the fields and menus that are specific to the GetThere connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

a DataSet Using a Data Connector

.


 Best Practices
----------------

The GetThere API only returns the last 7 days worth of data. Set the connector to Append to build a history of data over time, starting with the previous 7 days and appending new data each time it runs.


 Prerequisites
---------------

To connect to your GetThere account and create a DataSet, you must have the following:

 The travel/agency site name you want to retrieve data for.
* Your GetThere username and password.

Connecting to Your GetThere Account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the GetThere Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your GetThere account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Site Name
  |
 Enter the name of the travel/agency site you want to retrieve data for.
  |
|
 Username
  |
 Enter your GetThere username.
  |
|
 Password
  |
 Enter your GetThere password.
  |


 Once you have entered valid GetThere credentials, you can use the same account any time you go to create a new GetThere DataSet. You can manage connector accounts in the
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
 Select the GetThere report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Booking Records
  |
 Returns a list of booking records for the authenticated user.
  |
|
 User Profile Air Preferences Records
  |
 Returns air travel preference data for the authenticated user.
  |
|
 User Profile Arrangers Records
  |
 Returns a list of arrangers for the authenticated user.
  |
|
 User Profile Car Preferences Records
  |
 Returns vehicle preference data for the authenticated user.
  |
|
 User Profile Company Info Records
  |
 Returns company info for the authenticated user.
  |
|
 User Profile Custom Field Records
  |
 Returns a list of custom fields for the authenticated user.
  |
|
 User Profile Delivery Records
  |
 Returns a list of delivery records for the authenticated user.
  |
|
 User Profile EC Info Records
  |
 Returns EC info for the authenticated user.
  |
|
 User Profile Gen Preferences Records
  |
 Returns general preference information for the authenticated user.
  |
|
 User Profile Hotel Preferences Records
  |
 Returns hotel preference data for the authenticated user.
  |
|
 User Profile Keys Records
  |
 Returns key records for the authenticated user.
  |
|
 User Profile Loyalty Program Records
  |
 Returns loyalty program data for the authenticated user.
  |
|
 User Profile Passport Records
  |
 Returns passport data for the authenticated user.
  |
|
 User Profile Punchout Records
  |
 Returns punchout data for the authenticated user.
  |
|
 User Profile Rail Preferences Records
  |
 Returns rail travel preference data for the authenticated user.
  |
|
 User Profile Supervisor Info Records
  |
 Returns supervisor data for the authenticated user.
  |
|
 User Profile Travelers Records
  |
 Returns travel data for the authenticated user.
  |
|
 User Profile Traveler Security Data Records
  |
 Returns security data for the authenticated user.
  |
|
 User Profile User Info Records
  |
 Returns user information for the authenticated user.
  |
|
 User Profile Visa Records
  |
 Returns visa data for the authenticated user.
  |
|
 User Profile Web Connect Records
  |
 Returns profile web content for the authenticated user.
  |

|
|
 Include Customfield
  |
 Select
 **Yes**
 to include custom fields in your report.
  |
|
 Include Subsites
  |
 Select
 **Yes**
 to include data from subsites in your report.
  |
|
 Report Duration
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


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

a DataSet Using a Data Connector

.


 FAQs
------


####
 Can I use the same account multiple times to create DataSets?

Yes.

###
 How often can the data be updated?

DataSets can be updated as often as once an hour. If you get rate limit errors, update the DataSets less frequently.

###
 Are there any API limits I should be aware of?

The GetThere API has rate limits, but they are not documented. If you run into rate limit errors, try running your DataSets less often, or decrease the amount of data called in a single DataSet run with smaller date ranges.

