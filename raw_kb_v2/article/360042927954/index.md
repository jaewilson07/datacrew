

Intro
-------

SalesHood is a sales learning platform that uses mobile, video, crowdsourcing, and content creation to increase team productivity and revenue. To obtain SalesHood API documentation, reach out to your SalesHood customer representative.


 You connect to your SalesHood account in the Data Center. This topic discusses the fields and menus that are specific to the SalesHood connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your SalesHood account and create a DataSet, you must have the following:

 A SalesHood client ID
* A SalesHood client secret
* Your SalesHood subdomain
* A Salesforce username and password

You can find your SalesHood client ID and client secret on your API configuration page. Your SalesHood subdomain is the portion of your SalesHood instance immediately following

https://

. For example, in the instance URL


 https://mycompany.saleshood.com


 , the subdomain is

mycompany

.


 Connecting to Your SalesHood Account
--------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the SalesHoodConnector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your SalesHood account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Client ID
  |
 Enter your SalesHood client ID.
  |
|
 Client Secret
  |
 Enter your SalesHood client secret.
  |
|
 Subdomain
  |
 Enter the subdomain of your SalesHood instance.
  |

After you enter these credentials and click
 **Connect**
 , an OAuth screen opens prompting you to log into SalesHood using Salesforce credentials.

Once you have entered valid credentials, you can use the same account any time you go to create a new SalesHoodDataSet. You can manage connector accounts in the
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
 Select the SalesHood report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 User Activities
  |
 Retrieves users' activities such as activity count, video watching time, etc. Data returned in this report only includes active users.
  |
|
 User Participation in Certifications
  |
 Retrieves users who have participated in certifications. Data returned in this report only includes active users.
  |
|
 User Participation in Contents
  |
 Retrieves users who have participated in contents. Data returned in this report only includes active users.
  |
|
 User Participation in External Events
  |
 Retrieves users who have participated in external events. Data returned in this report only includes active users.
  |
|
 User Participation in Learning Path
  |
 Retrieve users who have participated in learning paths. Data returned in this report only includes active users.
  |
|
 User Personnel Data
  |
 Retrieve users' personnel data such as email, manager, segment, etc. Data returned in this report includes active and inactive users.
  |

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

Adding a DataSet Using a Data Connector

.

