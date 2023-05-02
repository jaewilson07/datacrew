

Intro
-------

Agemni streamlines sales and back office functions within a single software platform. You connect to your Agemni account in the Data Center. This topic discusses the fields and menus that are specific to the Agemni connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Agemni account and create a DataSet, you must have Agemni username and password.


 You must allow API access in Agemni by doing the following:

. Go to the CMS site and open the page
 **Admin > Preferences**
 .
2. Check the
 **BI Tool API**
 checkbox.

Connecting to Your Agemni Account
-----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Agemni Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Agemni account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your Agemni username.
  |
|
 Password
  |
 Enter your Agemni password.
  |
|
 Site Id
  |
 Enter your Site Id here. Site Id is typically the subdomain of where you log in. For example, if you logged into agemni at

domo.agemni.com

, you'd enter 'domo' here.
  |


 Once you have entered valid Agemni credentials, you can use the same account any time you go to create a new Agemni DataSet. You can manage connector accounts in the
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
 Select the Agemni report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Basic Leads
  |
 Returns a basic lead data array based on the provided date filter.
  |
|
 Employees
  |
 Returns all employee data.
  |
|
 Employee Time Cards
  |
 Returns employee time card records and wage information based on the provided date filter.
  |
|
 Lead Custom Fields
  |
 Returns lead custom field metadata information (text, dropdown, and checkbox).
  |
|
 Lead Custom Field Data
  |
 Returns lead custom fields and their associated values.
  |
|
 Leads
  |
 Returns all leads data and work orders associated with it, based on the provided date filter.
  |
|
 Work Order Appointment History
  |
 Returns the appointment history log based on the appointment change date.
  |
|
 Work Orders
  |
 Returns work orders based on the provided date filter.
  |
|
 Work Order Custom Fields
  |
 Returns work order custom field metadata information (checkboxes).
  |
|
 Work Order Custom Field Data
  |
 Returns work order custom fields and their associated values.
  |

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


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQ
-----


#####
 How often can the data be updated?

Datasets can be updated as often as once an hour.

####
 Are there any API limits that I need to be aware of?

Agemni does not document any limits in their API.

