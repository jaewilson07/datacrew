

Intro
-------

Zuora is an enterprise software company that designs and sells SaaS applications designed to automate billing, commerce, and finance operations. Use Domo’s Zuora connector to retrieve your company catalog and to compile reports about accounts, invoices, payments, and the like. To learn more about the Zuora REST API, visit their page (

https://knowledgecenter.zuora.com/BC\_Developers/REST\_API

).


 The Zuora connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your Zuora account in the

Data Center

. This topic discusses the fields and menus that are specific to the Zuora connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Zuora account and create a DataSet, you must have the following:

 The username and password for your Zuora account
* The URL for your custom Zuora instance, if you are using a custom environment

Connecting to Your Zuora Account
----------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Zuora Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Zuora account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Username
  |
 Enter the username you use to log into your Zuora account.
  |
|
 Password
  |
 Enter the password you use to log into your Zuora account.
  |
|
 Environment
  |
 Select the Zuora environment you wish to connect to. If you select
 **Custom**
 , you must enter the URL of the custom Zuora instance in the
 **Custom Environment**
 field.
  |
|
 Custom Environment
  |
 Enter the URL for your custom Zuora instance. This is required only if you have selected
 **Custom**
 in the
 **Environment**
 menu.
  |

Once you have entered valid Zuora credentials, you can use the same account any time you go to create a new Zuora DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a primary
 **Report**
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Zuora report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Accounts
  |
 Returns basic information about selected customer accounts.
  |
|
 Catalog
  |
 Retrieves your entire product catalog, including all products and features and their corresponding rate plans and charges.
  |
|
 Invoices
  |
 Retrieves invoices for all selected customer accounts.
  |
|
 Payments
  |
 Returns payment information for all selected customer accounts.
  |
|
 Query
  |
 Runs the provided ZOQL (Zuora Object Query Language) query.
  |
|
 Subscriptions
  |
 Returns subscription information for all selected customer accounts.
  |
|
 Usage
  |
 Returns usage details for all selected customer accounts.
  |


 |
|
 Account Name
  |
 Select all of the Zuora accounts you want to retrieve data for.
  |
|
 Query
  |
 Enter your search query in ZOQL (Zuora Object Query Language) format. For more information about ZOQL, see

https://knowledgecenter.zuora.com/Central\_Platform/Query/ZOQL

.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

