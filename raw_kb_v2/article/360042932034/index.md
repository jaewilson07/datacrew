

Intro
-------

JavaScript Object Notation (JSON) is a lightweight data-interchange format that is easy to use. The Domo JSON connector allows you to access JSON files that you have uploaded to an SFTP server.

*Note:**
 Due to security concerns, Domo no longer permits uploading data using FTP. If necessary, please update your server settings to support SFTP instead of FTP.

You can also import files via HTTPS calls. To learn more about the JSON API, visit their page (

http://jsonapi.org

).


 You connect to your JSON account in the Data Center. This topic discusses the fields and menus that are specific to the JSON connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 This connector is useful for parsing JSON data from an API.
  |
|
**Primary Metrics**
 |
 N/A
  |
|
**Primary Company Roles**
 |
 IT roles
  |
|
**Average Implementation Time**
 |
 ~3 hours
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 4
  |

Best Practices
----------------

Check your JSON code in a

JSON validator

before using the connector.


 Prerequisites
---------------

To connect to your JSON account and create a DataSet, you must have credentials for the server in which the JSON file is found.


 Connecting to Your JSON Account
---------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the JSON Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your JSON account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Connection Scheme
  |
 Select the connection scheme to access the JSON file.
  |
|
 Host/Domain
  |
 Enter the host or domain name where your JSON files are located.

For example:
 **files.myhost.com**
 or IP (
 **121.123.123.123**
 ).
  |
|
 Port
  |
 Enter the port to use for SFTP/HTTP connection. Leave it blank to use the default port.
  |
|
 Username
  |
 Enter the username for the server where the JSON file is located.
  |
|
 Password
  |
 Enter the password for the server where the JSON file is located.
  |


 Once you have entered valid JSON credentials, you can use the same account any time you go to create a new JSON DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

In this pane, you specify the server/SFTP site to connect to, the name of the JSON file, and other configuration settings.


 Menu
  |
 Description
  |
| --- | --- |
|
 URL to Your JSON File
  |
 Enter the URL for the JSON file. Supported protocols are HTTPS and SFTP.

*Note:**
 Due to security concerns, Domo no longer permits uploading data using FTP. If necessary, please update your server settings to support SFTP instead of FTP.

|
|
 Connection Method
  |
 Select whether you want to connect to your JSON file via file transfer (SFTP) or HTTP request.
 * Select
 **File Transfer (SFTP)**
 if your JSON file is on an SFTP server.
* Select
 **HTTP Request**
 if you need to access your JSON file using an HTTP GET request. The request is triggered by the use of a unique URL parameter defined by the service providing the JSON file.
 |
|
 Does Your JSON Text Require a Line Reader?
  |
 Select
 **Yes**
 if your JSON text includes multiple lines to read.
  |
|
 Should the Backslash Be Escaped?
  |
 Select
 **Yes**
 if your JSON text includes backslash characters that should be escaped.
  |
|
 Do You Require Additional Options?
  |
 Select
 **Yes**
 if you need to enter header or data tags or exclude fields.
  |
|
 Header Tag (Optional)
  |
 Enter the tag for the header in your JSON text. JSON headers are not normally included in JSON, but when they are included, they will most likely use one of the following formats:


`{

"People": {

"name": "John",

"age": 30,

"car": null

}

}`

or


`{

"header": [

"name",

"age",

"car"

],

"data": [

"John",

30,

null

]

}`


 Note that the first example does not include the "header" tag, while the second does. In the second example, the headers are listed separately from the actual data tags.
  |
|
 Data Tag (Optional)
  |
 Enter the tag for the data in your JSON text.
  |
|
 Fields to Exclude (Optional)
  |
 Provide a comma-separated list of fields to exclude from the JSON import.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


* Ensure that the JSON text is valid JSON. If any values contain newline characters, set
 **Does Your JSON Text Require a Line Reader?**
 to
 **Yes**
 .
* JSON text should include a list of objects. Key names in each object will be the columns. The following picture shows how this should look:


