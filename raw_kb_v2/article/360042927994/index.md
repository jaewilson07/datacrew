

Intro
-------


**Important:**
 Shopify is updating their API and deprecating certain endpoints on
 **March 15, 2022**
 . Because of this, DataSets built on an older version of the Shopify Connector will no longer work.


**What does this mean for you?**


* You will need to create a new DataSet using the updated Connector.

Shopify is an ecommerce platform that enables individuals and businesses to create online stores

.

To learn more about the Shopify API, go to

https://docs.shopify.com/api

.


 This simplified version of the Shopify connector is easy to implement, having only four configurable reports.


 The Shopify connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 This topic discusses the fields and menus that are specific to the Shopify connector user interface. For general information about adding DataSets, setting update schedules, and editing DataSet information, see

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 This connector is appropriate for retrieving data for ecommerce sales, inventory, deliveries, and the like. It also supports blog and marketing information.
  |
| **Primary Metrics**  |
 Returns sales information for your ecommerce shop. You can also get metrics on the blog and marketing side of your business.
  |
|
**Primary Company Roles**
 | * Warehouse managers
* Ecommerce shop admins
* Online sales
* Owner/C-Suite
 |
|
**Average Implementation Time**
 |
 Less than an hour
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 2
  |

Prerequisites
---------------

To connect to your Shopify account and create a DataSet, you must have the following:

 The name of your shop.
* The email address and password associated with your Shopify account.

Connecting to Your Shopify Account
------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Shopify Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains one field where you enter the name of your shop. You can find the name of your shop by looking at your Shopify URL. For example, in the Shopify URL


 domo.shopify.com


 , the shop name would be

domo

.


 In the Microsoft OAuth page, enter the username and password for your shop.


 After you have entered valid Shopify credentials, you can use the same account in Domo any time you create a Shopify DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.


 Field
  |
 Description
  |
| --- | --- |
|
 Shop Name
  |
 Enter the name of your shop as it appears in your Shopify URL.
  |


###
 Details Pane

This pane contains one primary menu,
 **Report**
 , and other menus that appear depending on the report you select.

*Note:**
 Currently you can enter only one search string in fields that request search strings, such as
 **Order Name**
 .


|
 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the desired Shopify report. The following reports are available:


|  |  |
| --- | --- |
|
 Application Charges
  |
 Receives data about Shopify Application Charges.
  |
|
 Application Credits
  |
 Receives data about Shopify Application Credits.
  |
|
 Articles
  |
 Receives data about Shopify Blog Articles.
  |
|
 Assets
  |
 Receives data about Shopify Assets.
  |
|
 Blogs
  |
 Receives data about Shopify Blogs.
  |
|
 Carrier Services
  |
 Receives data about Shopify Carrier Services.
  |
|
 Checkouts
  |
 Receives data about Shopify Checkouts.
  |
|
 Collects
  |
 Returns information about collections, such as creation and last update times, product IDs, and collection IDs.
  |
|
 Comments
  |
 Receives data about Shopify Blog Article Comments.
  |
|
 Countries
  |
 Receives data about Shopify Countries.
  |
|
 Custom Collections
  |
 Receives data about Shopify Custom Collections.
  |
|
 Customer Saved Searches
  |
 Receives data about Shopify Customer Saved Searches.
  |
|
 Customers
  |
 Receives data about Shopify Customers.
  |
|
 Disputes
  |
 Receives data about Shopify Disputes.
  |
|
 Discount Codes
  |
 Receives data about Shopify Discount Codes.
  |
|
 Draft Orders
  |
 Receives data about Shopify Draft Orders.
  |
|
 Gift Cards (Shopify Plus)
  |
 Receives data about Shopify Gift Cards.


**Note**
 : This requires Shopify Plus subscription.
  |
|
 Inventory Items
  |
 Recieves data about Shopify Inventory Items. This report compliments the Product Variants report.
  |
|
 Fulfillments
  |
 Receives data about Shopify Fulfillments.
  |
|
 Locations
  |
 Receives data about Shopify Locations.
  |
|
 Marketing Events
  |
 Receives data about Shopify Marketing Events.
  |
|
 Orders
  |
 Receives data about Shopify Orders.
  |
|
 Pages
  |
 Receives data about Shopify Pages.
  |
|
 Payouts
  |
 Receives data about Shopify Payouts.
  |
|
 Policies
  |
 Receives data about Shopify Store Policies.
  |
|
 Price Rules
  |
 Receives data about Shopify Price Rules.
  |
|
 Product Variants
  |
 Receives data about Shopify Product Variants.
  |
|
 Products
  |
 Receives data about Shopify Products.
  |
|
 Provinces of Country
  |
 Receives data about Shopify Provinces of Countries.
  |
|
 Recurring Application Charges
  |
 Receives data about Shopify Recurring Application Charges.
  |
|
 Redirects
  |
 Receives data about Shopify Redirects.
  |
|
 Refunds
  |
 Receives data about Shopify Order Refunds.
  |
|
 Resource Feedback
  |
 Receives data about Shopify Resource Feedback.
  |
|
 Order Risks
  |
 Receives data about Shopify Order Risks.
  |
|
 Script Tags
  |
 Receives data about Shopify Script Tags.
  |
|
 Shipping Zones
  |
 Receives data about Shopify Shipping Zones.
  |
|
 Shop
  |
 Receives data about Shopify Shop.
  |
|
 Smart Collections
  |
 Receives data about Shopify Smart Collections.
  |
|
 Themes
  |
 Receives data about Shopify Themes.
  |
|
 Transactions
  |
 Receives data about Shopify Transactions.
  |
|
 Usage Charges
  |
 Receives data about Shopify Usage Charges.
  |
|
 Webhooks
  |
 Receives data about Shopify Webhooks.
  |

|
|
 Created Filter
  |
 Select a date range to filter by, based on the date that content was created.
  |
|
 Published Filter
  |
 Select a date range to filter by, based on the date that content was published.
  |
|
 Updated Filter
  |
 Select a date range to filter by, based on the date that content was last modified.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------

Ensure the
 **Shop Name**
 you enter in the
 **Credentials**
 pane is just the subdomain of your URL. For example, the
 **Shop Name**
 for


 domo.shopify.com


 would be

domo

.

##
 FAQs


####
 What endpoint is the base URL for this connector?

The base URL for the Shopify connector is

https://{

shop-name}.

myshopify.com/admin/api/

{apiVersion}.

###
 Which endpoint does each report call in this connector?


|
 Report Name
  |
 Endpoint URL
  |
| --- | --- |
|
 Application Charges
  |
 /application\_charges.json
  |
|
 Application Credits
  |
 /application\_credits
  |
|
 Articles
  |
 /blogs/{blogIds}/articles.json
  |
|
 Assets
  |
 /themes/assets.json
  |
|
 Blogs
  |
 /blogs.json
  |
|
 Carrier Services
  |
 /carrier\_services
  |
|
 Checkouts
  |
 /checkouts.json
  |
|
 Collects
  |
 /collects.json
  |
|
 Comments
  |
 /comments.json
  |
|
 Countries
  |
 /countries.json
  |
|
 Custom Collections
  |
 /custom\_collections.json
  |
|
 Customer Saved Searches
  |
 /customer\_saved\_searches.json
  |
|
 Customers
  |
 /customers
  |
|
 Discount Codes
  |
 /price\_rules/discount\_codes
  |
|
 Disputes
  |
 /shopify\_payments/disputes
  |
|
 Draft Orders
  |
 /draft\_orders
  |
|
 Gift Cards (Shopify Plus)
  |
 /gift\_cards
  |
|
 Inventory Items
  |
 /inventory\_items
  |
|
 Fulfillments
  |
 /orders/{orderId}/fulfillments
  |
|
 Locations
  |
 /locations
  |
|
 Marketing Events
  |
 /marketing\_events
  |
|
 Orders
  |
 /orders
  |
|
 Pages
  |
 /pages
  |
|
 Payouts
  |
 /shopify\_payments/payouts
  |
|
 Policies
  |
 /policies
  |
|
 Price Rules
  |
 /price\_rules
  |
|
 Product Variants
  |
 /products/{productId}/variants
  |
|
 Products
  |
 /products
  |
|
 Provinces of Country
  |
 /countries/provinces
  |
|
 Recurring Application Charges
  |
 /recurring\_application\_charges
  |
|
 Redirects
  |
 /redirects
  |
|
 Refunds
  |
 /orders/{orderId}/refunds
  |
|
 Resource Feedback
  |
 /resource\_feedback
  |
|
 Order Risks
  |
 /orders/{orderId}/risks
  |
|
 Script Tags
  |
 /script\_tags
  |
|
 Shipping Zones
  |
 /shipping\_zones
  |
|
 Shop
  |
 /shop
  |
|
 Smart Collections
  |
 /smart\_collections
  |
|
 Themes
  |
 /themes
  |
|
 Transactions
  |
 /orders/{orderId}/transactions
  |
|
 Usage Charges
  |
 /recurring\_application\_charges/usage\_charges
  |
|
 Webhooks
  |
 /webhooks
  |


####
 What kind of credentials do I need to power up this connector?

You need the name of your Shopify shop to power up this connector, and your Shopify username and password. Shop owners can use the connector without setting any additional permissions. However, if you have a limited user account - a
 **Staff**
 account, you will need to ensure that you have permissions to
 **Apps**
 and any other resources you wish to pull from the connector. Visit

Shopify documentation

.

###
 Where do I get my Shopify shop name in the credentials section?

The Shopify shop name is found in your shop dashboard URL. For example, if your shop dashboard is

domo.shopify.com

, your shop name is "domo".

###
 Can I use the same account for multiple datasets?

Yes

###
 How often can the data be updated?

As often as needed.

