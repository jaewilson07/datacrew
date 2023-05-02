

*Important:**
 This connector is in legacy mode, so there will be no more power ups.


 Intro
-------

Microsoft Dynamics Navision assists with finance, manufacturing, customer relationship management, supply chains, analytics and electronic commerce. To learn more about the Navision API, visit their page (

https://msdn.microsoft.com/en-us/lib.../dd355398.aspx

).


 You connect to your Navision account in the Data Center. This topic discusses the fields and menus that are specific to the Navision connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Navision account and create a DataSet, you must have the following:

 The Report Service URL for the report you want to bring into Domo
* Your Microsoft Dynamics Navision username and password

To learn how to configure a report in Navision, visit the following page:

https://blogs.msdn.microsoft.com/suvidha/2014/05/21/dynamics-nav-sql-server-report-builder-for-report-design/

Connecting to Your Navision Account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Navision Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Navision account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Report Service URL
  |
 Enter the URL for the Navision report you want to pull into Domo. For more information about building a report, visit

https://blogs.msdn.microsoft.com/suvidha/2014/05/21/dynamics-nav-sql-server-report-builder-for-report-design/

|
|
 Username
  |
 Enter your Microsoft Dynamics Navision username.
  |
|
 Password
  |
 Enter your Microsoft Dynamics Navision password.
  |


 Once you have entered valid Navision credentials, you can use the same account any time you go to create a new Navision DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a menu from which you select a Navision report and another in which you can enter a query to specify parameters for your selected report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the report you want to run. Available reports are culled from your Navision account, based on the URL you have entered in
 **Report Service URL**
 .


 |
|
 Query
  |
 Enter a semicolon-separated list of parameters for the specified report ​​​​​in the format

key1=value2;key2=value2;...keyn=valuen

.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

