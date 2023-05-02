

Intro
-------

The wizard will help you connect to your data as a JSON file and pull it into Domo. This connector is perfect for anyone who wants to create a connection for custom data without going through a Domo engagement but doesn't have the coding experience to build connectors using Domo's API or Connector IDE.


 You connect to your custom JSON data in the Data Center. This topic discusses the fields and menus that are specific to the JSON No Code connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your custom JSON data and create a DataSet, you must have the following:

 The username and password for your JSON account
* The URL to access the JSON file

Also note that the redirect URL for this connector is

https://oauth.domo.com/api/data/v1/oauth/providers/json-oauth/exchange

.


 Connecting to your custom data
--------------------------------


 This section enumerates the options in the
 **Credentials**
 ,
 **Data Selection**
 , and
 **Parsing**
 panes in the JSON No Code Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your custom data. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter the username for your JSON account.
  |
|
 Password
  |
 Enter the password for your JSON account.
  |


 Once you have entered valid credentials, you can use the same account any time you go to create a new JSON No Code DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Data Selection pane

In this pane, you specify the HTTP method to use to connect, the URL of the JSON file, and other configuration settings.


 Menu
  |
 Description
  |
| --- | --- |
|
 Connection Type
  |
 Select how you want to connect to your JSON data, either by HTTP request, SFTP file transfer, or direct file upload.
  |
|
 Choose the HTTP Method to use
  |
 If HTTP Request is selected as the
 **Connection Type**
 , choose from either GET or POST as the HTTP method.
  |
|
 Enter the URL to your JSON file
  |
 If HTTP Request or File Transfer is selected as the
 **Connection Type**
 , enter the URL of your JSON file.
  |
|
 How will you provide the certificate
  |
 If HTTP Request is selected as the
 **Connection Type**
 , choose the method in which the certificate will be provided:
 * No certificate
* URL Path to the Certificate
* Certificate Content
 |
|
 Upload file containing JSON data
  |
 If
 **Upload file containing JSON data**
 is selected as the
 **Connection Type**
 , upload your desired JSON file by either dragging and dropping it into the field or browsing to and selecting the file on your machine.
  |


####
 Advanced Settings


|
 Menu
  |
 Description
  |
| --- | --- |
|
 HTTPS Headers
  |
 Enter the key and value of the HTTPS headers. This option is only available for the HTTP Request connection type.
  |
|
 Query Parameters
  |
 Enter the key and value of the query parameters. This option is only available for the HTTP Request connection type.
  |
|
 Date Query Parameters
  |
 Select
 **No Date Filter**
 ,
 **Single Date**
 , or
 **Date Range**
 as the Date Query Parameter. If you select
 **Single Date**
 , you can choose a specific date or enter a relative number of days back. If you select
 **Date Range**
 , you are prompted to select the start and end date for your range, or, if you want to pull data for a relative number of days, enter the number of days back for both the start and end date.


 This option is only available for the HTTP Request connection type.
  |
|
 JSON Settings
  |
 Specify whether your JSON text requires a line reader and if the backslash character should be escaped.


 Also, specify if the backslash should be escaped.
  |
|
 Check This Box to Reset Your Datasets Schema
  |

Select if you need to reset the schema.


**Warning**
 : This can result in loss of data or change in data type if some fields are temporarily not returned by the API. While this switch is selected, the dataset will reset the schema for each run.

|


###


####
 Pagination

Select how to paginate the data:

 No Paging
* Get next URL from results
* Get next page token from results
* Offset by records
* Offset by pages


####
 Parsing

Using the data preview, you can click on a column to format the data for parsing. Depending on the column data type, different parsing actions are available. If you mouse over an action, the dataset updates to reflect how the changes that will be applied. You can go back to an earlier action by clicking that action in the
 **History**
 pane on the right.


 Available actions include the following:

 **Split date**
 . Breaks up dates into individual columns for year, month, day, etc.
* **Drop**
 . Removes the selected column from the dataset.
* **Duplicate**
 . Copies the selected column.
* **Rename column**
 . Lets you change the name of the selected column.
* **Format timestamp as a date**
 . Allows you to transform a timestamp in milliseconds, seconds, etc. into a date.


###
 Other panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQ
-----


#####
 What kind of credentials do I need to power up this connector?

For SFTP files you need the username and password. If you are importing data using HTTP, you may enter the username and password if your URL supports basic authentication. If needed, authentication can also be passed through parameters or headers.

####
 How often can the data be updated?

DataSets can run as often as every 15 minutes.

####
 Does this connector support paging?

Yes. In order to activate paging, select the paging type supported by your API and fill out the requested details.

####
 How do I parse my data?

Select the column containing the data you want to expand or modify in the Parsing tab of the Parsing Pane. Hover over the suggested actions to see the effect and select the desired action by clicking on it. Repeat until the data looks the way you want it to look. Use the history section on the right to undo actions if desired.

