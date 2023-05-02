

Intro
-------

Stripe is a payment processing platform that allows vendors to accept payment anywhere through mobile device transaction processing software. To learn more about the Stripe API, visit their page (

https://stripe.com/docs/api

).


 You connect to your Stripe account in the Data Center. This topic discusses the fields and menus that are specific to the Stripe connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Stripe account and create a DataSet, you must have a Stripe API key. You can find API keys in your

Stripe Account Settings

.


 Connecting to Your Stripe Account
-----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Stripe Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Stripe account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your Stripe API key. You can find API keys in your

Stripe Account Settings

.
  |


 Once you have entered valid Stripe credentials, you can use the same account any time you go to create a new Stripe DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a menu from which you can select a Stripe report/


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Stripe report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Account Description
  |
 Returns properties for your account.
  |
|
 Application Fees
  |
 Returns a list of application fees you've previously collected.
  |
|
 Balance
  |
 Returns the current account balance.
  |
|
 Balance History
  |
 Returns a list of transactions that have contributed to your Stripe account balance (e.g., charges, transfers, etc.).
  |
|
 Charges
  |
 Returns a list of charges you've created. Stripe sends this as "Zero-Decimal-Currency," meaning no decimals appear in the values. So for example, instead of "$10.00," you would see "$1000." You can read more about this in Stripe's documentation at

https://stripe.com/docs/api#charge\_object


 https://stripe.com/docs/currencies#zero-decimal
  |
|
 Coupons
  |
 Returns a list of your coupons.
  |
|
 Customers
  |
 Returns a list of your customers.
  |
|
 Discounts
  |
 Returns a list of discounts.
  |
|
 Events
  |
 Returns a list of events, going back 30 days.
  |
|
 All Invoices
  |
 Returns a list of invoices, sorted by creation date.
  |
|
 Invoice Items
  |
 Returns a list of invoice items, sorted by creation date.
  |
|
 Upcoming Invoices
  |
 Returns upcoming invoices.
  |
|
 Plans
  |
 Returns a list of your plans.
  |
|
 Recipients (DEPRECATED)
  |
 Returns a list of recipients, sorted by creation date.
  |
|
 Refunds
  |
 Returns a list of refunds, with the most recent refunds appearing first.
  |
|
 Transfers
  |
 Returns a list of existing transfers sent to third-party bank accounts or that Stripe has sent you.
  |
|
 Subscriptions
  |
 Returns a list of subscriptions that have not been cancelled.
  |


 |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

