

Intro
-------

Sizmek is an AdTech marketing platform. Sizmek works with brand marketers, agencies, publishers and trading desks, and provides tools to build, serve, analyze and target ads to global audiences across a variety of channels, including mobile and video. Combine your Sizmek data with data from sales, finance, and other departments across your organization so you can maximize your ROI. Domo's Sizmek SAS connector brings in data from the Sizmek MDX platform. Use Domo's Sizmek SAS connector to receive data from the Sizmek SAS API like ads, accounts, advertisers, brands, campaigns and more.


 You connect to your Sizmek SAS account in the Data Center. This topic discusses the fields and menus that are specific to the Sizmek SAS connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Important:**
 This connector pulls data from Sizmek's MDX platform,
 *not*
 their NXT platform.

Prerequisites
---------------

To connect to your Sizmek SAS account and create a DataSet, you must have the following:

 Your Sizmek account username
* Your Sizmek account password
* A Sizmek API key (if you are using

https://adapi.sizmek.com/sas

for your
 **API URL**
 )

Connecting to Your Sizmek SAS Account
---------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Sizmek SAS

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

Sizmek SAS

account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API URL
  |
 Select the API URL for your API user. If you are uncertain about which API URL to select, contact your Sizmek Administrator or Client Services Manager.
  |
|
 Username
  |
 Enter your Sizmek SAS Username.
  |
|
 Password
  |
 Enter your Sizmek SAS password.
  |
|
 API Key
  |
 Enter your Sizmek SAS API Key if you are using

https://adapi.sizmek.com/sas

for your API URL.
  |


 Once you have entered valid

Sizmek SAS

credentials, you can use the same account any time you go to create a new

Sizmek SAS

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
 Select the Sizmek SAS report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Ads
  |
 Returns information about Sizmek ads.
  |
|
 Accounts
  |
 Returns information about Sizmek accounts.
  |
|
 Advertisers
  |
 Returns information about Sizmek advertisers.
  |
|
 Brands
  |
 Returns information about Sizmek brands.
  |
|
 Campaigns
  |
 Returns information about Sizmek campaigns.
  |
|
 Delivery Groups
  |
 Returns information about Sizmek delivery groups.
  |
|
 Placements
  |
 Returns information about Sizmek ad placements.
  |
|
 Sites
  |
 Returns information about Sizmek sites.
  |
|
 Target Audience
  |
 Returns information about Sizmek target audiences.
  |
|
 Use Date Filter
  |
 Select this checkbox to use the date filter.
  |

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

