

Intro
-------


 Magento is an enterprise eCommerce solution for fast-growing and large businesses that specializes in ecommerce websites. Magento allows access to hundreds of unique features that help to connect with wide range of customers. Use the Domo Magento 2 Advanced connector to pull your data about the customers, invoices, orders, products, shipments and more from your Magento 2 system.


 By combining your data with Domo, you can create powerful visualizations and reports to analyze your invoices, products, and shipments. Combine your Magento data with all your information on Domo and plan for future business demands.

To learn more about the Magento REST API, visit their page (

https://devdocs.magento.com/guides/v...arted-api.html

).


 You connect to your Magento account in the Data Center. This topic discusses the fields and menus that are specific to the Magento2 Advanced connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Magento account and create a DataSet, you need the following:

 The URL of your Magento store
* Your consumer key and consumer secret
* Your access token and access token secret value

SSL is required for this connector to work.


 Connecting to Your Magento Account
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Magento2 Advanced Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Magento account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Storebase URL
  |

Enter the URL of your Magento store.


 Example: If your Magento store is at

https://example.com

, enter

https://www.example.com

.

|
|
 Consumer Key
  |

Enter your consumer key.

|
|
 Consumer Secret
  |

Enter your consumer secret.

|
|
 Access Token
  |

Enter your access token.

|
|
 Access Token Secret
  |

Enter access token secret value.

|

For information about obtaining these credentials, see "Prerequisites," above.

Once you have entered valid Magento credentials, you can use the same account any time you go to create a new Magento2 Advanced DataSet. You can manage connector accounts in the
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
 Select the Magento2 Advanced report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Invoices
  |
 Retrieve the lists of invoices that match specified search criteria.
  |
|
 Orders
  |
 Retrieve the lists of orders that match specified search criteria.
  |
|
 Products
  |
 Retrieve the lists of products that match specified search criteria.
  |
|
 Promotion Rules
  |
 Retrieve sales rules that match the specified criteria.
  |
|
 Returns
  |
 Return list of rma data objects based on search criteria.
  |
|
 Shipments
  |
 Retrieve the lists shipments that match specified search criteria.
  |

|
|
 Date Type
  |
 Select the desired date type.
  |
|
 Value to Flatten
  |
 Select whether you want to expand your items or status histories.
  |
|
 Page Size
  |
 This is

the number of records to get per request from the Magento server.

Enter a page size between 50 and 500. You may want to lower this value if you are receiving internal server errors from Magento

or internal connector errors from Domo

.
  |
|
 Report Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today.
  |
|
 Select Specific Date
  |
 Select the date for the report.
  |
|
 Days Back
  |
 Enter the number of past days that should appear in the report.
  |
|
 Start Date
  |
 Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in
 **End Date**
 .
  |
|
 End Date
  |
 Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in
 **Start Date**
 .
  |
|
 Select Specific Start Date
  |
 Select the first date in your date range.
  |
|
 Select Specific End Date
  |
 Select the second date in your date range.
  |
|
 Days Back to Start From
  |
 Enter the number of the farthest day back that should be represented in the report. Combine with
 **Days Back to End At**
 to create a range of represented days.


 For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Days Back to End At
  |
 Enter the number of the most recent day back that should be represented in the report. Combine with
 **Days Back to Start From**
 to create a range of represented days.


 For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , the report would contain data for 10 days ago up until 5 days ago.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 What endpoint is the base URL for this connector?

The base URL for Magento is

https://{

DOMAIN}/rest.

###

Which endpoint(s) does each report call in this connector?


|
 Report Name
  |
 Endpoint URL
  |
| --- | --- |
|
 Invoices
  |
 /invoices
  |
|
 Orders
  |
 /orders
  |
|
 Products
  |
 /products
  |
|
 Promotion Rules
  |
 /salesRules/search
  |
|
 Returns
  |
 /returns
  |
|
 Shipments
  |
 /shipments
  |


####
 What kind of credentials do I need to power up this connector?

You need the URL of your Magento store, consumer key, consumer secret, access token, and access token secret value.

###
 How often can the data be updated?

As often as needed.

###
 Are there any API limits that I need to be aware of?

No

