

Intro
-------

Treasure Data is a cloud data management platform that lets users in your organization connect and access live data. To learn more about the Treasure Data API, visit their page (

https://support.treasuredata.com/hc/en-us/articles/360001260527-REST-APIs-in-Treasure-Data

).


 You connect to your Treasure Data account in the Data Center. This topic discusses the fields and menus that are specific to the Treasure Data connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 This connector can retrieve data from standard DataSets within Treasure Data by submitting jobs to Treasure Data and then importing the results. In some cases, you may actually be using Treasure Data's more advanced DataTank service. To connect to Treasure Data's DataTank, please use Domo's

PostgreSQL

database connector. To configure it, you will need to contact Treasure Data to get the necessary information, including the IP address and port of the DataTank server as well as login credentials.


 For assistance, please contact Treasure Data.


 Prerequisites
---------------

To connect to your Treasure Data account and create a DataSet, you must have a Treasure Data API key. For information about obtaining an API key, visit the following page:

https://support.treasuredata.com/hc/en-us/articles/360000763288-Get-API-Keys

Connecting to Your Treasure Data Account
------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Treasure Data Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Treasure Data account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your Treasure Data API key.
  |
|
 Domain name
  |
 Here is the list of domains:
 * treasuredata.com
* treasuredata.co.jp
* ybi.idcfcloud.net
 |


 Once you have entered valid Treasure Data credentials, you can use the same account any time you go to create a new Treasure Data DataSet. You can manage connector accounts in the
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
 Select the Treasure Data report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Execute Job
  |
 Retrieves a job based on a provided database name, SQL query, and job type. This report may take a long time to run if the result set is large.
  |
|
 Job Details
  |
 Retrieves details about a given job or all jobs.
  |
|
 Job Results
  |
 Retrieves the results of a specific job submitted in the past.
  |
|
 Job Status
  |
 Retrieves the status for a given job or all jobs.
  |
|
 List Databases
  |
 Retrieves a list of all databases in your account.
  |
|
 List Jobs
  |
 Retrieves a list of all jobs in your account.
  |
|
 List Tables
  |
 Retrieves a list of all tables in your account.
  |

|
|
 Database
  |
 Select the database containing the job you want to retrieve.
  |
|
 SQL Query
  |
 Enter the SQL query for the job you want to retrieve.
  |
|
 Job Type
  |
 Select the job type for the job you want to retrieve.
  |
|
 Job ID
  |
 Enter the ID of the job you want to pull data for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

##
 FAQ


####
 What kind of credentials do I need to power up this connector?

You need the domain and API key associated with your Treasure Data account.

###
 Where can I find my API key?

Visit

Get API Keys

to learn how to obtain the API key.

###
 What are the available domains?

Here is the list of domains:

 api.treasuredata.com
* api.treasuredata.co.jp
* api.ybi.idcfcloud.net


####
 How often can the data be updated?

Datasets should be set to update no more than once every 15 minutes.

###
 Are there any API limits that I need to be aware of?

No

