

Intro
-------

SAP Fieldglass is a Vendor Management System that helps you manage services procurement and external workforce programs. Use Domo's Fieldglass connector to retrieve data from Fieldglass based on a connector name and arguments. To learn more about the Fieldglass API, visit their page (

http://www.fieldglass.com/resources/topic/integration

).


 You connect to your Fieldglass account in the Data Center. This topic discusses the fields and menus that are specific to the Fieldglass connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Fieldglass account and create a DataSet, you must have a Fieldglass username and password.


 Connecting to Your Fieldglass Account
---------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Fieldglass Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Fieldglass account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your Fieldglass username.
  |
|
 Password
  |
 Enter your Fieldglass password.
  |


 Once you have entered valid Fieldglass credentials, you can use the same account any time you go to create a new Fieldglass DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a primary
 **Reports**
 menu, along with various options for configuring your report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Fieldglass report you want to run. Currently only a single report type is available.


|  |  |
| --- | --- |
|
 Downloads
  |
 Returns download data from Fieldglass based on a provided connector name and arguments.
  |

|
|
 Connector Name
  |
 Enter the name of the Fieldglass connector you want to retrieve data for.
  |
|
 Arguments
  |
 Enter the arguments required to import your data from Fieldglass. For example:


`__p1=personId=xxxx;reportId=xxxx`


 Some reports do not require arguments.
  |
|
 Delimiter
  |
 Select the delimiter used in your CSV file. If your delimiter is not listed, select
 **Other**
 then enter the delimiter in the
 **Specify Your Delimiter**
 field.
  |
|
 Specify Your Delimiter
  |
 Enter the delimiter used in your CSV file.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

a DataSet Using a Data Connector

.


 FAQs
------


####
 How often can the data be updated?

DataSets can be updated as often as once an hour.

###
 Are there any API limits I should be aware of?

No.

