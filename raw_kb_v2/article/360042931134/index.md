

Intro
-------

Nielson Music Connect delivers granular and up-to-date data across multiple measurement metrics for artists, albums and songs as a complete view of performance and trends. To learn more about the Nielsen Music Connect API, visit their page (

https://portal.developer.nielsen.com/home

).


 You connect to your Nielsen Music Connect account in the Data Center. This topic discusses the fields and menus that are specific to the Nielsen Music Connect connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Nielsen Music Connect account and create a DataSet, you must have the following:

 The credentials (username and password) for your Nielsen Music Connect account
* A Nielsen Music Connect client ID
* A Nielsen Music Connect password

For help finding your credentials, reach out to your Nielsen representative.


 Connecting to Your Nielsen Music Connect Account
--------------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Nielsen Music Connect Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Nielsen Music Connect account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter the username for your Nielsen Music Connect account.
  |
|
 Password
  |
 Enter the password for your Nielsen Music Connect account.
  |
|
 Client ID
  |
 Enter your Nielsen Music Connect client ID.
  |
|
 Client Secret
  |
 Enter your Nielsen Music Connect client secret.
  |


 Once you have entered valid Nielsen Music Connect credentials, you can use the same account any time you go to create a new Nielsen Music Connect DataSet. You can manage connector accounts in the
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
 Select the Nielsen Music Connect report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Barcode Data
  |
 Returns metrics data for a given barcode.
  |
|
 Chart Data
  |
 Returns data for a specific chart.
  |
|
 Chart List
  |
 Returns a list of charts.
  |
|
 Chart Options
  |
 Returns a detailed list of available markets and metrics.
  |
|
 Data Feed
  |
 Retrieves data feed results.
  |
|
 ISRC Data
  |
 Returns metrics for a given ISRC.
  |

|
|
 Barcode
  |
 Enter the barcode you want to retrieve data for.
  |
|
 ISRC
  |
 Enter the ISRC you want to retrieve data for.
  |
|
 Week Number (Optional)
  |
 Enter the week number you want to retrieve data for, in the format

YYYYWW

, in which

YYYY

is the year and

WW

is the week number. For example, if you entered

201801

, you would get data for the first week of 2018. If you leave this blank, data for the current week will be returned.
  |
|
 Country
  |
 Select the country you want to retrieve data for.
  |
|
 Chart Name
  |
 Select the name of the chart you want to retrieve data for.
  |
|
 Filters
  |
 Select all filters you want to apply to your chart.
  |
|
 Market Code
  |
 Select the market code you want to retrieve data for.
  |
|
 Genre Code
  |
 Select the genre code you want to retrieve data for.
  |
|
 Metric Cide
  |
 Select the metric code you want to retrieve data for.
  |
|
 Request Type
  |
 Select the desired request type.
  |
|
 Chart Filter Key
  |
 Select the desired chart filter key.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


#####
 Can I use the same account to create multiple DataSets?

Yes.

####
 How often can the data be updated?

As often as needed.

####
 Are there any API limits I should be aware of?

Nay.

