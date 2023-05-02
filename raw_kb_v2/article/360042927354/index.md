

Intro
-------

Skimlinks is a powerful marketing tool and content monetization platform for online publishers.  To learn more about the Skimlinks API, visit their page (

http://developers.skimlinks.com/reporting.html

).


 You connect to your Skimlinks account in the Data Center. This topic discusses the fields and menus that are specific to the Skimlinks connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Skimlinks account and create a DataSet, you must have the following:

 Your Skimlinks customer private key
* Your Skimlinks customer public key

You can learn how to obtain these keys by visiting

http://developers.skimlinks.com/reporting.html

.


 Connecting to Your Skimlinks Account
--------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Skimlinks Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Skimlinks account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Private Key
  |
 Enter your Skimlinks private key.
  |
|
 Public Key
  |
 Enter your Skimlinks public key.
  |


 Once you have entered valid Skimlinks credentials, you can use the same account any time you go to create a new Skimlinks DataSet. You can manage connector accounts in the
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
 Select the Skimlinks report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Merchant Categories
  |
 Returns a list of merchant categories.
  |
|
 Merchant Domains
  |
 Returns a list of merchants' domains.
  |
|
 Search Merchant and Categories
  |
 Returns information about merchants and categories matching the provided search term. The search term is matched against merchant name, domain, and category name.
  |
|
 Merchant Category Information
  |
 Returns information about merchants in a given category.
  |
|
 Report Commissions
  |
 Returns all commissions data for a given date.
  |
|
 Report Commissions History
  |
 Returns a history of commissions.
  |
|
 Report Days
  |
 Returns a daily summary of clicks and commissions earned by a publisher on a given day.
  |
|
 Report Days by Merchant
  |
 Returns a summary of clicks and commissions received per domain, per day, per merchant.
  |
|
 Report Merchants
  |
 Returns a summary of clicks and commissions received per domain, per merchant.
  |

|
|
 Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today.
  |
|
 Start Date
  |
 Select the start date for your report.
  |
|
 End Date
  |
 Select the end date for your report.
  |
|
 Date From Offset
  |
 Enter the number of the farthest day back that should be represented in the report. Combine with
 **Date To Offset**
 to create a range of represented days.


 For example, if you entered

10

for
 **Date From Offset**
 and

5

for
 **Date To Offset**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Date To Offset
  |
 Enter the number of the most recent day back that should be represented in the report. Combine with
 **Date From Offset**
 to create a range of represented days.


 For example, if you entered

10

for
 **Date From Offset**
 and

5

for
 **Date To Offset**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Merchant Search
  |
 Enter the merchant you want to import data for.
  |
|
 Category ID
  |
 Select the category you want to import data for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

