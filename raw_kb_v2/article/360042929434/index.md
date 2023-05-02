

Intro
-------

GE Predix is an Industrial Internet of Things (IIoT) Platform as a Service that allows developers to build monitoring and predictive analytics solutions for industrial sensors. To learn more about the Predix API, visit their page (

https://www.predix.io/api

).


 You connect to your Predix account in the Data Center. This topic discusses the fields and menus that are specific to the Predix connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Predix account and create a DataSet, you must have the following:

 The client ID for your OAuth service.
* The client secret for your OAuth service.
* The URI of your UAA instance. Use

cf env

to find your URI. For more information, see Predix's API documentation at

https://www.predix.io/api

.
* The OAuth credentials for your Predix app.

Connecting to Your Predix Account
-----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Predix Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Predix account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Client ID
  |
 Enter the client ID for your OAuth service.
  |
|
 Client Secret
  |
 Enter the client secret for your OAuth service.
  |
|
 OAuth (UAA) URL
  |
 Enter the URI of your UAA instance. Use

cf env

to find your URI. Enter the value from the "uri" field here.
  |


 Once you have entered valid Predix credentials and hit
 **Connect**
 , you are taken to the OAuth page for your Predix app where you are requested to log in using your credentials. Once you have suyou can use the same account any time you go to create a new Predix DataSet. You can manage connector accounts in the
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
 Select the Predix report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Analytics
  |
 Returns information about Predix analytics and orchestrations.
  |
|
 Assets
  |
 Returns information about the Predix asset catalog and asset collections.
  |
|
 Time Series
  |
 Returns time series data points based on a specified query.
  |

|
|
 Subreport
  |
 Select a subreport to filter your results by.
  |
|
 API Region
  |
 Select your Predix API region.
  |
|
 Resource Zone ID
  |
 Enter the zone ID for the selected report. For example, for the "Time Series" report, enter your Predix Time Series Zone ID. You can generate a list of zone IDs using the Predix command line tool, using

cf env

. For more information, refer to Predix's API documentation at

https://www.predix.io/api

.
  |
|
 Query Method
  |
 Select the method to use to build your Time Series query.
 **Query Builder**
 builds a query for you based on your selections.
 **Advanced**
 lets you enter your own JSON query. For more information on valid JSON query syntax, refer to Predix's API documentation at

https://www.predix.io/api

.
  |
|
 Time Series JSON Query
  |
 Enter your Time Series JSON query. For more information on valid JSON query syntax, refer to Predix's API documentation at

https://www.predix.io/api

.
  |
|
 Start Date Mode
  |
 Select whether to use a specific or relative start date for your report (relative meaning the connector sets the start date to a relative number of time units back from the day the report is run).
  |
|
 End Date Mode
  |
 Select whether to use a specific or relative end date for your report (relative meaning the connector sets the end date to a relative number of time units back from the day the report is run).
  |
|
 Specific Start Date
  |
 Select the start date for your report.
  |
|
 Specific End Date
  |
 Select the end date for your report.
  |
|
 Units
  |
 Enter the desired number of time units back for the Predix Time Series query.
  |
|
 Relative Start Date Time Unit
  |
 Select the desired time unit for your relative start date.
  |
|
 Relative End Date Time Unit
  |
 Select the desired time unit for your relative end date.
  |
|
 Quality Filter (Optional)
  |
 Enter a minimum and maximum quality threshold for your time series query in the format

x,y

. For example, entering 1,3 returns only results that have a minimum quality value of 1 and a maximum quality value of 3. If you leave this blank, results for all quality values are returned.
  |
|
 Asset Tags
  |
 Select the asset tags you want to filter data for.
  |
|
 Asset Collection
  |
 Select the desired asset collection tag.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


#####
 How often can the data be updated?

As often as needed.

####
 Are there any API limits I should be aware of?

No.

