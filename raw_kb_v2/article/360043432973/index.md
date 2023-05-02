

Intro
-------

Recurly is a billing and subscription management platform. To learn more about the Recurly API, visit their page (

https://dev.recurly.com/docs

).


 You connect to your Recurly account in the Data Center. This topic discusses the fields and menus that are specific to the Recurly connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Recurly account and create a DataSet, you must have a Recurly API key. To learn how to obtain a Recurly API key, go here:

https://docs.recurly.com/docs/api-keys

Connecting to Your Recurly Account
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Recurly Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Recurly account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your Recurly API key. To learn how to obtain a Recurly API key, go here:

https://docs.recurly.com/docs/api-keys

|


 Once you have entered valid Recurly credentials, you can use the same account any time you go to create a new Recurly DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a single menu from which you select a Recurly report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Recurly report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Accounts
  |
 Returns a list of Recurly accounts.
  |
|
 Coupons
  |
 Returns a list of Recurly coupons.
  |
|
 Invoices
  |
 Returns a list of Recurly invoices.
  |
|
 Plans
  |
 Returns a list of Recurly plans.
  |
|
 Subdomain
  |
 Enter the subdomain of your company Recurly instance URL. This is the portion of the URL following

https://

. So if your company instance was


 https://mycompany.recurly.com


 , the subdomain would be

mycompany

.
  |
|
 Subscriptions
  |
 Returns a list of Recurly subscriptions.
  |
|
 Transactions
  |
 Returns a list of Recurly transactions.
  |

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


#####
 How often can the data be updated?

As often as needed.

####
 Are there any API limits I should be aware of?

No.

