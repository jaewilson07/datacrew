

Intro
-------

To learn more about the BrandIndex API, visit their page (

https://api.brandindex.com/v0

).


 You connect to your BrandIndex account in the Data Center. This topic discusses the fields and menus that are specific to the BrandIndex connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your BrandIndex account and create a DataSet, you must have the following:

 The email address associated with your BrandIndex account
* Your BrandIndex password

Connecting to Your BrandIndex Account
---------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the BrandIndex Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your BrandIndex account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Email
  |
 Enter the email associated with your BrandIndex account.
  |
|
 Password
  |
 Enter the password associated with your BrandIndex account.
  |


 Once you have entered valid BrandIndex credentials, you can use the same account any time you go to create a new BrandIndex DataSet. You can manage connector accounts in the
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
 Select the BrandIndex report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Brands List
  |
 Returns a list of brands for a given region and sector.
  |
|
 Custom Sectors
  |
 Returns a list of custom sectors.
  |
|
 Demographic Filters
  |
 Returns a list of demographic filters for the "Multi Brand Query" report.
  |
|
 Metric Filters
  |
 Returns a list of available metric filters for the "Multi Brand Query" report.
  |
|
 Multi Brand Query
  |
 Returns data for multiple brands.
  |
|
 Regions
  |
 Returns a list of regions. For use with the "Single Brand," "Brands List," "Demographic Filters," and "Sectors" reports.
  |
|
 Sectors
  |
 Returns a list of sectors. For use with the "Single Brand," "Brands List" and "Demographic Filters" reports.
  |
|
 Single Brand
  |
 Returns a list of data points for a given brand.
  |

|
|
 Region
  |
 Enter the name of the region you want to retrieve data for. You can find a list of regions by running the "Regions" report.
  |
|
 Sector
  |
 Enter the ID for the sector you want to retrieve data for. You can find a list of sectors by running the "Sectors" report.
  |
|
 Query
  |
 Enter your Brandlndex query to retrieve data for multiple brands. You must provide at least one brand, sector, or custom sector parameter. The brand parameter can have single or multiple brands separated by the

&

symbol.


 The query can include filters in the following formats:


**Sectors**
 :

sector=region:sector\_id[:demo\_filters][:metric\_filters][:metrics]

*Custom Sectors:**

custom\_sector=region:custom\_sector\_id[:demo\_filters][:metric\_filters][:metrics] for custom sectors

*Brand Queries:**

brand=region:sector\_id:brandJd[:demo\_filters][:metric\_filters][:metrics]

For example:

brand=us:123:1234:/brand.3456.reputation.1&brand=us:234:2345:/foo\_filter.1/bar\_filter.2\

This query would retrieve brand ID "1234" from sector "123" and from the "U.S." region with a metric filter reputation value of "1" for brand "3456," as well as brand ID "2345" from sector "234" and from the "U.S." region, with the following demographic filters:

foo\_filter

value of "1" and

bar\_filter

value of "2."


 Brandlndex does not require you to supply demo filters, metric filters, or metrics. You are able to supply any combination of the filters and metrics, but you must include at least one brand, sector, or custom sector.
  |
|
 Scoring Type
  |
 The scoring option to use, within "total" (includes all respondents, including unaware respondents), "aware" (excludes unaware respondents) and "opinion" (excludes both unaware respondents and respondents who don't have a positive or negative opinion of the brand).
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

a DataSet Using a Data Connector

.

