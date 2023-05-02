

Intro
-------

STAT Search Analytics is a rank tracking and SERP (search engine result page) analytics provider for enterprises and digital agencies. To learn more about the STAT Search Analytics API, visit their page (

https://getstat.com/optional-api-services/

).


 You connect to your STAT Search Analytics account in the Data Center. This topic discusses the fields and menus that are specific to the STAT Search Analytics connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your STAT Search Analytics account and create a DataSet, you must have the following:

 A STAT Search Analytics API key
* The subdomain for your account. For example, if your instance was

mycompany.getstat,com

, the subdomain would be

getstat

.

For more information about obtaining these credentials, please reach out to your STAT Search Analytics account representative.


 Connecting to Your STAT Search Analytics Account
--------------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the STAT Search Analytics Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your STAT Search Analytics account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your STAT Search Analytics API key.
  |
|
 Subdomain
  |
 Enter the subdomain for your STAT Search Analytics instance.
  |


 Once you have entered valid STAT Search Analytics credentials, you can use the same account any time you go to create a new STAT Search Analytics DataSet. You can manage connector accounts in the
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
 Select the STAT Search Analytics report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Keywords
  |
 Returns information about keywords for the selected sites.
  |
|
 Most Frequent Domains per Site
  |
 Returns the competitor domains most frequently in the top 10 for the site specified for the engine specified.
  |
|
 Most Frequent Domains per Tag
  |
 Returns the competitor domains most frequently in the top 10 for the tag specified for the engine specified.
  |
|
 Projects
  |
 Returns all projects saved in an account.
  |
|
 Ranking Distributions per Site
  |
 Returns all ranking distribution records for Google and Bing for the selected sites.
  |
|
 Ranking Distributions per Tag
  |
 Returns all ranking distribution records for Google and Bing for the selected tags.
  |
|
 Rankings per Keyword
  |
 Returns all rankings archived for the selected keywords and date range.
  |
|
 SERPs
  |
 Returns the archived SERPs for the specified search engine and date for the specified keywords.
  |
|
 SERPs via Optional Bulk Service
  |
 Returns SERPS information via the optional, paid, bulk service.
  |
|
 Share of Voice per Site
  |
 Returns the SoV score for each competitor domain that appears on the SERP for the selected sites.
  |
|
 Share of Voice per Tag
  |
 Returns the SoV score for each competitor domain that appears on the SERP for the selected tags.
  |
|
 Sites List
  |
 Returns a list of all sites.
  |

|
|
 Tags Selection
  |
 Select whether you want to pull data for all tags or specified tags for the selected site.
  |
|
 Sites Selection
  |
 Select whether you want to pull data for all sites, all sites for a specific project, or specific sites only.
  |
|
 Site ID
  |
 Select the sites you want to retrieve data for.
  |
|
 Project ID
  |
 Select the project you want to retrieve data for.
  |
|
 Keywords Selection
  |
 Select whether you want to pull data for all keywords or specified keywords for the selected site.
  |
|
 Keyword ID
  |
 Select the keywords you want to retrieve data for.
  |
|
 Tag ID
  |
 Select the tags you want to retrieve data for.
  |
|
 Search Engine
  |
 Select the search engine you want to retrieve data for.
  |
|
 Backfill Start Date
  |
 Select the date for which you want to retrieve backfill data. Subsequent runs will automatically fetch the previous day's data. The data will be appended to the report.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

