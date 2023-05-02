

Intro
-------

Bidlogix provides real time software for online auctions, webcast auctions and asset sales. Use Domo's Bidlogix connector to retrieve lists of auctions, auctioneers, vendors, and more. To learn more about the Bidlogix API, visit their page (

https://bidlogix.atlassian.net/wiki/...P/Bidlogix+API

).


 You connect to your Bidlogix account in the Data Center. This topic discusses the fields and menus that are specific to the Bidlogix connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Bidlogix account and create a DataSet, you must have the following:

 Your Bidlogix API key
* Your Bidlogix API secret
* Your Bidlogix client ID
* Your Bidlogix domain

You can find your Bidlogix API key, API secret, and client ID in the Bidlogix admin interface.


 Your Bidlogix domain is the URL of your Bidlogix instance, minus the

https://

. For instance, if your instance was

https://mycompany.bidlogix.com

, the domain would be

mycompany.bidlogix.com

.


 Connecting to Your Bidlogix Account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Bidlogix Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Bidlogix account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your Bidlogix API key.
  |
|
 API Secret
  |
 Enter your Bidlogix API secret.
  |
|
 Client ID
  |
 Enter your Bidlogix client ID.
  |
|
 Domain
  |
 Enter the domain of your Bidlogix instance.
  |

For more information about obtaining these credentials, see "Prerequisites," above.

Once you have entered valid Bidlogix credentials, you can use the same account any time you go to create a new Bidlogix DataSet. You can manage connector accounts in the
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
 Select the Bidlogix report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Auctions
  |
 Retrieves a list of auctions, broken down by auctioneer.
  |
|
 Auctioneers
  |
 Retrieves a list of auctioneers.
  |
|
 Auction Reports
  |
 Retrieves a list of auction reports.
  |
|
 Categories
  |
 Retrieves a list of auction categories for your account.
  |
|
 Category Reports
  |
 Retrieves a list of auction category reports.
  |
|
 Continents
  |
 Retrieves data for continents.
  |
|
 Countries
  |
 Retrieves data for countries.
  |
|
 Currencies
  |
 Retrieves a list of world currencies with their codes and symbols.
  |
|
 Time Zones
  |
 Retrieves data for time zones.
  |
|
 User Reports
  |
 Retrieves a report with information about a specific user.
  |
|
 Vendors
  |
 Retrieves a list of auction vendors.
  |

|
|
 User ID
  |
 Enter the ID of the user you want to retrieve information for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

