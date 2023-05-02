

Intro
-------

Apple Search Ads allows larger advertisers or agencies to create and manage a large number of campaigns pragmatically and to run reports for customer insights and trends. To learn more about the Apple Search Ads API, visit their page (

https://searchads.apple.com/advanced...gn-management/

).


 You connect to your Apple Search Ads account in the Data Center. This topic discusses the fields and menus that are specific to the Apple Search Ads connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Apple Search Ads account and create a DataSet, you must have the following:

 A client-side SSL private key
* A client-side SSL certificate signed by Apple Ad Platforms, which can be  generated and managed in your Search Ads account in the web-based UI.
* The password for your Apple Search Ads account

Connecting to Your Apple Search Ads Account
---------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Apple Search Ads Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Apple Search Ads account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Private Key
  |
 Enter your client-side SSL private key.
  |
|
 Certificate
  |
 Paste your client-side SSL certificate signed by Apple Ad Platforms.
  |
|
 Password
  |
 Enter the password for your Apple Search Ads account.
  |


 Once you have entered valid Apple Search Ads credentials, you can use the same account any time you go to create a new Apple Search Ads DataSet. You can manage connector accounts in the
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
 Select the Apple Search Ads report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Campaign Report
  |
 Returns metadata and performance metrics of all the campaigns for the selected org.
  |
|
 AdGroup Report
  |
 Returns metadata and performance metrics of all the ad groups for a selected campaign.
  |

|
|
 Org ID
  |
 Select the org you want to retrieve data for.
  |
|
 Granularity
  |
 Select the desired date granularity for your report.
  |
|
 Campaign IDs
  |
 Select the campaign IDs you want to retrieve data for.
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


 FAQs
------


#####
 How often can the data be updated?

As often as needed.

####
 Are there any API limits I should be aware of?

No.

