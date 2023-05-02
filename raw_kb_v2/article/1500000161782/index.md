

Intro
-------

WooCommerce is an open-source, completely customizable, flexible, and amplified eCommerce platform for entrepreneurs worldwide. With its built-in tools and popular integrations, you can efficiently manage your business operations and expand your audience across the business. Domo's WooCommerce connector allows you to retrieve data about your customers and orders. Uses Domo's WooCommerce connector to keep tabs on the performance metrics that are most important to you. To learn more about the WooCommerce API, visit their page (

https://docs.woocommerce.com/documen...erce-rest-api/

).


 You connect to your WooCommerce account in the Data Center. This topic discusses the fields and menus that are specific to the WooCommerce connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your WooCommerce account and create a DataSet, you must have the following:

 Your server username and password
* Consumer Key
* Consumer Secret
* Domain name of the server

Connecting to Your WooCommerce Account
----------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

WooCommerce

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your

WooCommerce

account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your server username.
  |
|
 Password
  |
 Enter your server password.
  |
|
 Consumer Key
  |
 Enter the consumer key.
  |
|
 Consumer Secret
  |
 Enter the consumer secret.
  |
|
 Domain
  |
 Enter the domain name of the server.
  |


 Once you have entered valid

WooCommerce

credentials, you can use the same account any time you go to create a new

WooCommerce

DataSet. You can manage connector accounts in the
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
 Select the WooCommerce report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 All Customers
  |
 Returns data about all customers.
  |
|
 All Orders
  |
 Returns data about all orders.
  |

|
|
 Search Text
  |
 Enter the text string that you would like your result to be filtered by.
  |
|
 Email
  |
 The result will be filtered for the resources with specific email.
  |
|
 Customer ID
  |
 Enter the Customer ID that you would like to retrieve the orders assigned for. You can find Customer Id in All Customers Report.
  |
|
 Product Selection Criteria
  |
 Specify whether you want to retrieve details about all products, specific products, or the orders not filtered by products.
  |
|
 Product
  |
 Enter the product that you would like to retrieve the orders assigned for.
  |
|
 Role
  |
 Enter the role that you would like to retrieve with the resources assigned. The default value is "Customer."
  |
|
 Status
  |
 Enter the status that you would like to retrieve the orders assigned for. The default value is "any."
  |
|
 Sublist To Flatten
  |
 Select the list that you would like to flatten. All other lists will be ignored. By Default, no list will be flattened.
  |
|
 Filter Data By Date
  |
 Select this check box if you would like to filter the data for the selected duration.
  |
|
 Date
  |
 The date value you want to filter the data by.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

