

Intro
-------

Reporting Services is a server-based reporting platform that provides comprehensive reporting functionality for a variety of data sources. Reporting Services includes a complete set of tools to create, manage, and deliver reports, and APIs that enable developers to integrate or extend data and report processing in custom applications. Reporting Services tools work within the Microsoft Visual Studio environment and are fully integrated with SQL Server tools and components. To learn more about the SQL Server Reporting Services, visit their page (

https://docs.microsoft.com/en-us/sql...inated-reports

).


 You connect to your Microsoft SQL Server Reporting Service account in the Data Center. This topic discusses the fields and menus that are specific to the Microsoft Reporting Service connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Microsoft SQL Server Reporting Service account and create a DataSet, you must have the following:

 The report service URL
* The username and password that provide access to the SQL Server Reporting Service

Connecting to Your

Microsoft SQL Server Reporting Service

Account
-------------------------------------------------------------------------


 This section enumerates the options in the

*Credentials**

and

*Details**

panes in the Microsoft Reporting Service Connector page

. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane


 This pane contains fields for entering credentials to connect to your Microsoft SQL Server Reporting Service account.

The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Report Service URL
  |
 Enter the report service URL.
  |
|
 Username
  |
 Enter the username to access the SQL Server Reporting Service.
  |
|
 Password
  |
 Enter the password to access the SQL Server Reporting Service.
  |


 Once you have entered valid Microsoft SQL Server Reporting Service credentials, you can use the same account any time you go to create a new Microsoft Reporting Service DataSet.

You can manage Connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane


 This pane contains menus for selecting and configuring the report and its parameters.


|
 Menu
  |
 Description
  |
| --- | --- |
|
 Report Path
  |
 Select report from the list.
  |
|
 Parameters
  |
 Select parameter(s).
  |
|
 Parameters Helper
  |
 To modify query, please replace the placeholders with the appropriate values.


 Example: Property1=Value1;Property2=Value2;...Propertyn=Valuen
  |
|
 Input Parameters
  |
 Enter the query in the form Property1=Value1;Property2=Value2;...Propertyn=Valuen. You can refer it from Parameters Helper.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

