

Intro
-------

Olo is a mobile and online food ordering platform that allows customers to order food from online menus and prepay in advance from their mobile or desktop device. To learn more about the Olo API, visit their page (

https://www.olo.com/developers.html

).


 You connect to your Olo account in the Data Center. This topic discusses the fields and menus that are specific to the Olo connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Olo account and create a DataSet, you must have an Olo API key. To obtain an API key, reach out to your Olo account representative.


 Connecting to Your Olo Account
--------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Olo Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Olo account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your Olo API key.
  |
|
 Environment
  |
 Select the environment you want to pull into Domo.
  |


 Once you have entered valid Olo credentials, you can use the same account any time you go to create a new Olo DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a primary
 **Reports**
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Olo report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Menu
  |
 Returns data about Olo menus.
  |
|
 Restaurants
  |
 Returns data about Olo restaurants.
  |
|
 Product Modifiers
  |
 Returns data about Olo product modifiers.
  |

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

a DataSet Using a Data Connector

.

