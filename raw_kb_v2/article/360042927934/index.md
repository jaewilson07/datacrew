

Intro
-------

Salesfusion provides a sales and marketing automation platform to help you generate leads and increase your ROI. To learn more about the Salesfusion API, visit their page (

https://www.salesfusion.com/crm-integration/

).


 You connect to your Salesfusion account in the Data Center. This topic discusses the fields and menus that are specific to the Salesfusion connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Salesfusion account and create a DataSet, you must have the following:

 Your Salesfusion domain name (e.g.

mycompany.salesfusion.com

)
* Your Salesfusion username and password

Connecting to Your Salesfusion Account
----------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Salesfusion Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Salesfusion account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Domain
  |
 Enter your Salesfusion domain name. Do not prepend with

http://

or

https://

. For example:

mycompany.salesfusion.com

|
|
 Username
  |
 Enter your Salesfusion username.
  |
|
 Password
  |
 Enter your Salesfusion password.
  |


 Once you have entered valid Salesfusion credentials, you can use the same account any time you go to create a new Salesfusion DataSet. You can manage connector accounts in the
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
 Select the Salesfusion report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Find Entity by ID
  |
 Returns data about the Salesfusion entity with the specified ID.
  |
|
 Find Entity by Conditions
  |
 Returns data about the Salesfusion entity with the specified conditions.
  |
|
 Get Landing Page Results
  |
 Returns data about the selected landing page.
  |

|
|
 Table Name
  |
 Enter the name of the table containing the entity you want to pull into Domo.
  |
|
 Key Column Name
  |
 Enter the name of the key column containing the entity you want to pull into Domo.
  |
|
 Entity Record ID
  |
 Enter the record ID of the entity you want to pull into Domo.
  |
|
 Conditions
  |
 Enter the conditions of the entity you want to pull into Domo. Enter these as key-value pairs, separating the key and value using the operators

=

,

>

,

<

,

>=

,

<=

, or

like

. Separate multiple conditions using line breaks.
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

