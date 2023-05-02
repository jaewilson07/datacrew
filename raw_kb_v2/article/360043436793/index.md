

Intro
-------

SQL Server Reporting Services (SSRS) is a server-based report-generating software system from Microsoft. To learn more about the SQL Server Reporting Services, visit their page (

https://docs.microsoft.com/en-us/sql...inated-reports

).


 You connect to your SQL Server Reporting Services with SharePoint account in the Data Center. This topic discusses the fields and menus that are specific to the SQL Server Reporting Services with SharePoint connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to SSRS and import SharePoint reports, you must have the following:

 Your Active Directory username and password that provides access to SSRS.
* The Active Directory domain name that allows access to MS Reporting Services and SharePoint.

Connecting to Your SQL Server Reporting Services with SharePoint Account
--------------------------------------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the SQL Server Reporting Services with SharePoint Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your SQL Server Reporting Services with SharePoint account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your Active Directory username you use to connect to SSRS.
  |
|
 Password
  |
 Enter your Active Directory password you use to connect to SSRS.
  |
|
 Domain Name
  |
 Enter the Active Directory domain name of the SSRS server.
  |


 Once you have entered valid SSRS credentials, you can use the same account any time you go to create a new SQL Server Reporting Services with SharePoint DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains menus for selecting and configuring a SharePoint report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Document URL
  |
 Enter the URL of the SharePoint report you want to import into Domo. For example:

http://myserver/mysite/Reports/myReport.rdl

|
|
 SharePoint Report Server URL
  |
 Enter the URL of the SharePoint report server. For example:

http://myserver/mysite/\_vti\_bin/ReportServer/ReportExecution2005.asmx

|
|
 Starting Row
  |
 Enter the number of the row in the report in which the data starts. Usually this is the row with the column headers. The default starting row is 1.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

