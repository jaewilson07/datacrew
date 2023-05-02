

Intro
-------

JavaScript Object Notation (JSON) is a lightweight data-interchange format that is easy to use. The Domo JSON Custom connector allows you to access JSON files that you have uploaded to an SFTP server. You can also import files via HTTP and HTTPS calls or upload them directly from your computer. To learn more about the JSON API, visit their page (

http://jsonapi.org

).


 You connect to your JSON account in the Data Center. This topic discusses the fields and menus that are specific to the JSON connector user interface. General information for adding DataSets, setting updating schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Best Practices
----------------

Check your JSON code in a

JSON validator

before using the connector.


 Prerequisites
---------------

To connect to your JSON account and create a DataSet, you must have credentials for the server in which the JSON file is found.


 Connecting to your JSON Account
---------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the JSON Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your JSON account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Username
  |
 Enter a username if using SFTP or Basic Authentication, otherwise, leave blank.
  |
|
 Password
  |
 Enter a password if using SFTP or Basic Authentication, otherwise, leave blank.
  |

Once you have entered valid JSON credentials, you can use the same account any time you go to create a new Custom JSON DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

In this pane, you specify the server/SFTP site to connect to, the name of the JSON file, and other configuration settings.


 Menu
  |
 Description
  |
| --- | --- |
|
 Connection Type
  |
 Select the type of connection you would like to make. The options include:
 * HTTP Request
* File Transfer (SFTP)
* Upload file containing JSON data
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
 Enter the URL of your JSON file.
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
 Enter the Key and Value of the HTTPS Headers. This option is only available for the HTTP Request Connection Type.
  |
|
 Query Parameters
  |
 Enter the Key and Value of the Query Parameters. This option is only available for the HTTP Request Connection Type.
  |
|
 Date Query Parameters
  |
 Select No Date Filter, Single Date, or Date Range as the Date Query Parameter. This option is only available for the HTTP Request Connection Type.
  |
|
 JSON Settings
  |
 Specify whether your JSON text requires a line reader and if the backslash character should be escaped.
  |


###
 Parsing


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

Using the data preview, you can click on a column to format the data for parsing.

##
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQ
-----

*What kind of credentials do I need to power up this connector?**


 For SFTP files you need the username and password. If you are importing data using HTTP, you may enter the username and password if your URL supports basic authentication. If needed, authentication can also be passed through parameters or headers.


**How often can the data be updated?**


 DataSets can run as often as every 15 minutes.


**Does this connector support paging?**


 Yes. In order to activate paging, select the paging type supported by your API and fill out the requested details.


**How do I parse my data?**


 Select the column containing the data you want to expand or modify in the Parsing tab of the Parsing Pane. Hover over the suggested actions to see the effect and select the desired action by clicking on it. Repeat until the data looks the way you want it to look. Use the history section on the right to undo actions if desired.

