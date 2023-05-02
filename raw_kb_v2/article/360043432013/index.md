

Intro
-------

SpyFu provides competitor keyword research tools to help you learn your competitors' PPC and SEO tricks and avoid their mistakes. To learn more about the SpyFu API, visit their page (

https://www.spyfu.com/api

).


 You connect to your SpyFu account in the Data Center. This topic discusses the fields and menus that are specific to the SpyFu connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your SpyFu account and create a DataSet, you must have the following:

 A SpyFu API ID
* A SpyFu secret key

For information about obtaining credentials, visit

https://www.spyfu.com/api/authentication

.


 Connecting to Your SpyFu Account
----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the SpyFu Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your SpyFu account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 SpyFu API ID
  |
 Enter your SpyFu API ID.
  |
|
 SpyFu Secret Key
  |
 Enter your SpyFu secret key.
  |


 Once you have entered valid SpyFu credentials, you can use the same account any time you go to create a new SpyFu DataSet. You can manage connector accounts in the
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
 Select the SpyFu report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Contact Card
  |
 Returns a list of contacts.
  |
|
 Grid
  |
 Returns lead data for the specified domain.
  |
|
 Keyword Smart Search
  |
 Returns a list of related keywords for a given query.
  |
|
 Domain Budget History UK
  |
 Returns the budget history for the given UK domain.
  |
|
 Domain Budget History US
  |
 Returns the budget history for the given US domain.
  |
|
 Domain Metrics UK
  |
 Returns metrics for the given UK domain.
  |
|
 Domain Metrics US
  |
 Returns metrics for the given US domain.
  |
|
 Organic Keywords
  |
 Returns organic keywords data for the given URL.
  |
|
 Paid Keywords
  |
 Returns paid keywords data for the given URL.
  |
|
 Term Metrics Bulk UK
  |
 Returns bulk term metrics for the provided term in the UK.
  |
|
 Term Metrics Bulk US
  |
 Returns bulk term metrics for the provided term in the US.
  |
|
 Term Metrics UK
  |
 Returns term metrics for the provided term in the UK.
  |
|
 Term Metrics US
  |
 Returns term metrics for the provided term in the US.
  |
|
 Term Ranking URLs UK
  |
 Returns URL rankings for the provided term in the UK.
  |
|
 Term Ranking URLs US
  |
 Returns URL rankings for the provided term in the US.
  |

|
|
 Query
  |
 Enter the keywords you want to retrieve data for.
  |
|
 Domain
  |
 Enter the domain you want to retrieve data for.
  |
|
 URL or Domain
  |
 Enter the URL or domain you want to retrieve data for.
  |
|
 Max Rows
  |
 Enter the number of rows of data you want to retrieve.
  |
|
 Term
  |
 Enter the term you want to retrieve data for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

