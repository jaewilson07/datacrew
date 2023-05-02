

Intro
-------

Extensible Markup Language (XML) is a simple, very flexible text format. The Domo XML Advance Connector allows you to access XML files that you have uploaded to a SFTP server. You can also import files via HTTP or HTTPS calls. For more information about XML, see

https://www.w3.org/TR/REC-xml/ .

You connect to your XML account in the Data Center. This topic discusses the fields and menus that are specific to the XML connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 Pulling XML data formatted as rows and columns into Domo.
  |
|
**Primary Metrics**
 |
 N/A
  |
|
**Primary Company Roles**
 |
 IT
  |
|
**Average Implementation Time**
 |
 2 hours
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 3
  |

Best Practices
----------------

Make sure the XML is valid before using the connector.


 Prerequisites
---------------

To connect to your XML account and create a DataSet, you must have credentials for the server in which the XML file is found.


 You must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses

.


 Connecting to Your XML Account
--------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the XML Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your XML account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Domain
  |
 Enter your domain name. For example, s

ftp://hostname

, then enter only the hostname.
  |
|
 Username
  |
 Enter the username for the server where the XML file is located.
  |
|
 Password
  |
 Enter the password for the server where the XML file is located.
  |


 Once you have entered valid XML credentials, you can use the same account any time you go to create a new XML DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

In this pane you specify the server/SFTP site to connect to, the name of the XML file, and other configuration settings.


 Menu
  |
 Description
  |
| --- | --- |
|
 What is the connection method to access the xml file?
  |
 SFTP is used when your XML file is on a SFTP server.
  |
|
 Enter the path to your XML file
  |
 Enter the XML URL. Supported Protocols are HTTP/HTTPS/SFTP.
  |
|
 Enter Your Data Tag
  |
 Enter the tag containing your data in the XML text.
  |
|
 Do you require additional options?
  |
 Select
 **Yes**
 if you need to exclude specific fields or use XPath.
  |
|
 Parser
  |
 Select
 **Parser**
 to parse XML. By default,
 **Recursive XML Parser**
 is used.If Recursive Parser parse fails, then try XML Parser or Easy XML parser
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


* Make sure the XML data is valid and that the credentials are up-to-date.
* Whitelist necessary IP addresses.

FAQs
------


###
 What kind of credentials do I need to power up this connector?

If you are retrieving an XML file from an SFTP server, you will need the username, password, and host name. If you are importing an XML file from a URL, you will need the URL, and optionally, a username and password.

##
 How often can the data be updated?

Datasets should be set to update no more than once every hour.

##
 Are there any API limits that I need to be aware of?

While the data provider may enforce call rate limits, you should not have to worry about them.

