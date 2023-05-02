

Intro
-------

Kounta produces a cloud-based point of sale (POS) mobile app. To learn more about the Kounta API, visit their page (

https://www.kounta.com/documentation/

).


 You connect to your Kounta account in the Data Center. This topic discusses the fields and menus that are specific to the Kounta connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Kounta account and create a DataSet, you must have the email address and password you use to log into Kounta.


 Connecting to Your Kounta Account
-----------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Kounta Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Kounta connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Kounta accounts in Domo) to open the Kounta OAuth screen where you can enter your Kounta email address and password. Once you have entered valid Kounta credentials, you can use the same account any time you go to create a new Kounta DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Kounta when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Kounta.


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
 Select the Kounta report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Categories
  |
 Returns a list of Kounta categories.
  |
|
 Check-Ins
  |
 Returns a list of check-ins.
  |
|
 Customers
  |
 Returns a list of customers in your account.
  |
|
 Inventory
  |
 Returns a list of inventory in your account.
  |
|
 Option Sets
  |
 Returns a list of option sets.
  |
|
 Order Lines
  |
 Returns a list of order lines.
  |
|
 Order Payments
  |
 Returns a list of order payments.
  |
|
 Orders
  |
 Returns a list of orders in your account.
  |
|
 Payment Methods
  |
 Returns a list of payment methods.
  |
|
 Price Lists
  |
 Returns information about price lists.
  |
|
 Products
  |
 Returns a list of products in your account.
  |
|
 Products Detail
  |
 Returns a detailed list of products in your account.
  |
|
 Registers
  |
 Returns a list of registers in your account.
  |
|
 Shifts
  |
 Returns a list of shifts.
  |
|
 Site Details
  |
 Returns a detailed list of sites in your account.
  |
|
 Site Status
  |
 Returns status information about the sites in your account.
  |
|
 Sites
  |
 Returns a list of sites in your account.
  |
|
 Staff
  |
 Returns a list of the staff in your account.
  |
|
 Taxes
  |
 Returns tax information.
  |
|
 Unprocessed Cashups
  |
 Returns a list of unprocessed cashups.
  |

|
|
 Date
  |
 Select whether you want a specific date for the report or a relative number of days back as the start date.
  |
|
 Relative Start Date
  |
 Enter the number of days back you want to begin pulling data for. For example, if you entered

10

, every time the report ran it would pull data for the last 10 days.
  |
|
 Fixed Start Date
  |
 Select the start date for the report. The report will pull all data from this date up to today.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

a DataSet Using a Data Connector

.

