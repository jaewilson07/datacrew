

Intro
-------

Workshop Software frees up your time and transforms your business into a streamlined profit machine by managing and optimizing your entire workflow. It saves your time and retains more customers. With this connector, you can get the detailed data about your customers, products, invoices, suppliers, and vehicles. Use this data to enhance your workshop into a powerfully efficient & profitable workshop.


 You connect to your Workshop Software account in the Data Center. This topic discusses the fields and menus that are specific to the Workshop connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Workshop Software account and create a DataSet, you must have the following:

 Your Workshop Software username and password.
* The base domain of your workshop software instance. Example:


 https://my.workshopsoftware.com.au

Connecting to Your

Workshop Software

Account
----------------------------------------------------

This section enumerates the options in the Credentials and Details panes in the

Workshop

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your

Workshop Software

account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Username
  |
 Enter your Workshop Software username.
  |
|
 Password
  |
 Enter your Workshop Software password.
  |


 Once you have entered valid


 Workshop Software


 credentials, you can use the same account any time you go to create a new


 Workshop


 DataSet.

You can manage Connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
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
 Select the

Workshop

report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Customers
  |
 Returns list of all customers.
  |
|
 Invoice Items
  |
 Returns list of all invoice line items.
  |
|
 Invoices
  |
 Returns list of all invoice headers.
  |
|
 Products
  |
 Returns list of all products.
  |
|
 Supplier Invoice Items
  |
 Returns list of all supplier invoice line items.
  |
|
 Supplier Invoices
  |
 Returns list of all supplier invoice headers.
  |
|
 Suppliers
  |
 Returns list of all suppliers.
  |
|
 Vehicles
  |
 Returns list of all vehicles.
  |

|


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------

###

What endpoint is the base URL for this connector?

The base URL for the Workshop connector is

https://{

domain}/api/motorserve.

###

Which endpoint(s) does each report call in this connector?


|
 Report Name
  |
 Endpoint URL
  |
| --- | --- |
|
 Customers
  |
 /customers
  |
|
 Invoice Items
  |
 /invoice\_items
  |
|
 Invoices
  |
 /invoices
  |
|
 Products
  |
 /products
  |
|
 Supplier Invoice Items
  |
 /supplier\_invoice\_items
  |
|
 Supplier Invoices
  |
 /supplier\_invoices
  |
|
 Suppliers
  |
 /suppliers
  |
|
 Vehicles
  |
 /vehicles
  |


####

What kind of credentials do I need to power up this connector?

You need the username and password associated with your Workshop Software account. You also need the base domain of your workshop software instance. Example:

https://my.workshopsoftware.com.au


####

How often can the data be updated?

As often as needed.

###

Are there any API limits that I need to be aware of?

No

Troubleshooting
-----------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.


