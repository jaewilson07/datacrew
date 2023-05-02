

Intro
-------


 Retail Express is a cloud-based POS, inventory, and eCommerce software that provides inventory-based Australian and NZ retailers with a central platform. It helps to manage sales and services, inventory and logistics, marketing, and loyalty, business intelligence practices, and much more across multiple online stores. As a cloud solution, Retail Express gives you the flexibility to manage your business anytime, anywhere, via any internet-enabled devices. Reports and dashboards give users valuable insight into business performance. The Retail Express Web Store API and the IPS API are the web services that allow e-commerce web sites to communicate with Retail Express point of sale and stock control software. This enables the synchronization of products, pricing, purchase orders, customers, internal transfers, and other business-specific information to help reduce the amount of administration required to maintain an online e-commerce website and an IPS. Use Domo's Retail Express connector to retrieve the web store and inventory planning systems data.

The

Retail Express

Connector is a "Cloud App" Connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the Connector page for this and other Cloud App Connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your

Retail Express

account in the Data Center. This topic discusses the fields and menus that are specific to the

Retail Express

Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
| **Primary Use Cases**  |
 This Connector lets you retrieve data about

sales and services, inventory and logistics, marketing, and business intelligence practices.
  |
| **Primary Metrics**  | * Customer Data
* Customer Details
* Order Details
* Purchase Order Details
* Staff Details
* Supplier Details
* Outlet
 |
| **Primary Company Roles**  | * Inventory Management
* Sales and Services
* Logistics
* Marketing
* Marketing Analytics
 |
| **Average Implementation Time**  |
 Less than an hour.
  |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)**  |
 3
  |

Prerequisites
---------------

To connect to your Retail Express account and create a DataSet, you must have the following:

 Your domain name of the web service account
* Your unique client code of retail express account
* The username and password associated with your Retails Express account

Connecting to Your Retails Express Account
--------------------------------------------

This section enumerates the options in the Credentials and Details panes in the Retails Express Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Retails Express account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Domain
  |

Enter your domain name of the web service account.

|
|
 Client ID
  |

Enter your unique client code of retail express account.

|
|
 Username
  |

Enter the username associated with your Retail Express account.

|
|
 Password
  |


 Enter the password associated with your Retail Express account.


 |

Once you have entered valid Retails Express credentials, you can use the same account any time you go to create a new Retails Express DataSet. You can manage Connector accounts in the
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
 Select the Retail Express report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Customer Data
  |
 Returns a list of customers either created or modified since the last updated date.
  |
|
 Customer Details
  |
 Returns all customer information that has been created or modified since the last synchronization.
  |
|
 Order Details
  |
 Returns order with item-level data including product and quantities.
  |
|
 Product Details
  |
 Returns a list of product details for all modified or created products since the given date.
  |
|
 Products SOH
  |
 Returns ZIPPED XML format data on demand containing stock on hand data for all non-disabled products for the target warehouse.
  |
|
 Purchase Orders Details
  |
 Returns a list of purchase orders.
  |
|
 Staff Details
  |
 Returns ZIPPED XML format data on demand containing a list of staff details.
  |
|
 Supplier Details
  |
 Returns details of all suppliers.
  |
|
 Outlets
  |
 Returns ZIPPED XML format data on demand containing a list of outlets.
  |

|
|
 Date Selection
  |
 Select the date format for your data.
  |
|
 Single Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today.
  |
|
 Specific Date
  |
 Select the specific date using the date selector.
  |
|
 Relative Date
  |
 Enter the number of days back that you would like to get data for in the


**Days Back**


 field. Specify either today or 0, yesterday or 1, or today-7 or 7 to get data for 7 days into the past.
  |
|
 Retrieve Data For
  |
 Select whether you want to retrieve data for all warehouses or provide a comma-separated list of warehouse IDs.
  |
|
 Comma-separated list of Warehouse IDs
  |
 Enter a comma-separated list of warehouse IDs. It can be obtained from the 'Outlets' report under


 \"


 WHID


 \"


 columns.
  |
|
 Only Customers With Emails
  |
 A flag indicating whether to return only customers that have any value in Bill Email.
  |
|
 Only Customers For Export
  |
 A flag indicating whether to return only customers marked as export to web or all customers.
  |
|
 Last Updated Date
  |
 Select the last updated date.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####


 What kind of credentials do I need to power up this Connector?

You need

the domain name of your web service account, the unique client code, username, and password of Retail Express account.


####
 Are there any API limits I should be aware of?

No

###
 Can I use the same account to create multiple datasets?

Yes


 Troubleshooting
-----------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.


