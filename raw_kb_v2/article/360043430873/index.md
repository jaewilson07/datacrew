

Intro
-------

Ayuda Media Sytems provides sofware to OOH (out-of-home) advertising companies.  To learn more about the Ayuda API, visit their page (

http://www.ayudasystems.com/Products/AyudaPI

).


 You connect to your Ayuda account in the Data Center. This topic discusses the fields and menus that are specific to the Ayuda connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Ayuda account and create a DataSet, you must have the following:

 An Ayuda app key
* An Ayuda app secret
* The base URL for your Ayuda instance (e.g.


 https://domo.ayudapreview.com


 )

For help in obtaining credentials, reach out to your Ayuda customer representative.


 Connecting to Your Ayuda Account
----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Ayuda Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Ayuda account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 App Key
  |
 Enter your Ayuda app key.
  |
|
 App Secret
  |
 Enter your Ayuda app secret.
  |
|
 Base URL
  |
 Enter the base URL for your Ayuda instance (e.g.


 https://domo.ayudapreview.com


 ).
  |


 Once you have entered valid Ayuda credentials, you can use the same account any time you go to create a new Ayuda DataSet. You can manage connector accounts in the
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
 Select the Ayuda report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Activities
  |
 Returns information about calls, emails, meetings, and tasks.
  |
|
 Contacts
  |
 Returns information about your contacts, including their names, positions, and contact info.
  |
|
 Digital Availability
  |
 Returns information from Digital Avails.
  |
|
 Opportunities
  |
 Returns information about opportunities, including dates and expected amounts.
  |
|
 Sales Accounts
  |
 Returns information about agencies and advertisers, with their contacts, opportunities, calls, meetings, and tasks.
  |
|
 Users
  |
 Returns information about users.
  |

|
|
 Spot Length
  |
 Enter the length of the spot you want to retrieve information for.
  |
|
 Face IDs
  |
 Enter a comma-separated list of face IDs you want to retrieve data for.
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

