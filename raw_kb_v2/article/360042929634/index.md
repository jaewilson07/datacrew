

Intro
-------

Oracle's CRM On Demand solutions help organizations drive sales, marketing, loyalty, and service effectiveness through a CRM that integrates with other Oracle products and services.


 You connect to your Oracle CRM On Demand account in the Data Center. This topic discusses the fields and menus that are specific to the Oracle CRM On Demand connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Oracle CRM On Demand account and create a DataSet, you must have the following:

 The user host where your Oracle CRM On Demand account is located
* Your Oracle CRM On Demand username and password

Connecting to Your Oracle CRM On Demand Account
-------------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Oracle CRM On Demand Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Oracle CRM On Demand account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Host
  |
 Enter the host name where the Oracle CRM On Demand account is found.
  |
|
 Username
  |
 Enter the username for the Oracle CRM On Demand account.
  |
|
 Password
  |
 Enter the username for the Oracle CRM On Demand account.
  |


 Once you have entered valid Oracle CRM On Demand credentials, you can use the same account any time you go to create a new Oracle CRM On Demand DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains two primary menus from which you select your resource and the attributes (columns) for the resource you want to appear in the DataSet. You can also add an optional query expression to filter resources.


 Menu
  |
 Description
  |
| --- | --- |
|
 Resources
  |
 Select the Oracle CRM On Demand resource (record) you want to pull into Domo as a DataSet.


 |
|
 Attributes
  |
 Select all the attributes (columns) of the selected resource you want to appear in your DataSet.
  |
|
 Advanced Options
  |
 Check this box to reveal the optional
 **Query Expression**
 field.
  |
|
 Query Expression (Optional)
  |
 Enter a query expression to filter resources in a collection. A query expression is comprised of one or more "field expressions." The maximum supported query expression length is 4096 characters.


 The following is the query expression syntax:


`QUERY EXPRESSION = FIELD EXPRESSION [; FIELD EXPRESSION]


 [FIELD EXPRESSION] = <Field> <OPERATOR> <VALUE> [ANDOR CLAUSE]


 [ANDOR CLAUSE] = <AND/OR> <OPERATOR> <VALUE> [ ANDOR CLAUSE]`


 The following example shows a query expression with two field expressions separated by a semicolon:


`AccountName='PSKDemo02' OR = 'A. C. Networks'; Reference = false`


**Tips:**


* Use single quotes around values.
* Use the same date format as exists in the field you are writing the expression for.


 |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

a DataSet Using a Data Connector

.

