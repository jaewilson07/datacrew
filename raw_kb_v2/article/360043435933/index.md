

*Important:**
 The Owler Fortune 500 public DataSet will no longer be available for use after September 2, 2019. Customers using this data will need to create their own DataSets using the Owler Connector and their personal Owler account.


 Intro
-------

Owler crowdsources business insights by providing news alerts, company profiles, and polls and allows members to follow, track, and research companies in real time. Use Domo's Owler connector to retrieve company and competitor data as well as feeds for selected companies. To learn more about the Owler API, visit their page (

https://developers.owler.com/

).


 You connect to your Owler account in the Data Center. This topic discusses the fields and menus that are specific to the Owler connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Owler account and create a DataSet, you must have an Owler API key. For information about obtaining an API key, reach out to your Owler representative.


 Connecting to Your Owler Account
----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Owler Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Owler account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your Owler API key.
  |


 Once you have entered valid Owler credentials, you can use the same account any time you go to create a new Owler DataSet. You can manage connector accounts in the
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
 Select the Owler report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Company Search
  |
 Returns the top 30 companies most likely to match your search criteria.
  |
|
 Company Detail
  |
 Returns detailed information for the selected companies.
  |
|
 Competitors
  |
 Returns competitor information for the selected companies.
  |
|
 Feeds
  |
 Returns the top 10 feeds for the selected companies.
  |

|
|
 Search Filter
  |
 Select the type of filter you want to apply to your report. You then enter the actual search term in the
 **Search**
 field. For example, if you wanted to filter on the company name "Kablinko," you would select
 **Name**
 as your search filter type then enter

Kablinko

in the
 **Search**
 field.
  |
|
 Search
  |
 Enter the term you want to retrieve information for in your report. Make sure you select the matching filter type in the
 **Search Filter**
 menu. For example, if you wanted to filter on the company name "Kablinko," you would select
 **Name**
 in the
 **Search Filter**
 menu then enter

Kablinko

in the
 **Search**
 field.
  |
|
 Input Type
  |
 Select how you would like to input company data to search for. If you select
 **Manual Entry**
 , you are prompted to enter the IDs for all companies you want to retrieve information for. If you select
 **Search**
 , you are prompted to enter a search term to filter by. If you select
 **Fortune 500**
 , data is returned for Fortune 500 companies.
  |
|
 Company IDs
  |
 Enter a comma-separated list of IDs for companies you want to retrieve information for.
  |
|
 Sub Report
  |
 Select a sub report, either
 **Industries**
 ,
 **Funding**
 , or
 **Acquisition**
 . If you do not want a sub report, select
 **None**
 .
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

