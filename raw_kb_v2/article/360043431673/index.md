

Intro
-------

OpenX is an open-source advertising platform which features an integrated banner management interface and tracking system for gathering statistics. To learn more about the OpenX API, visit their page (

https://docs.openx.com/Content/developers/about\_topics\_dev.html

).


 You connect to your OpenX account in the Data Center. This topic discusses the fields and menus that are specific to the OpenX connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your OpenX account and create a DataSet, you must have the following:

 The hostname or IP address of your OpenX Ad server. The hostname must include the API package directory name. For example:

http:///openx/www/api/v1/xmlrpc/
* The username for your OpenX account. The user with this username must be an administrative user.
* The password for your OpenX account.

Connecting to Your OpenX Account
----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the OpenX Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your OpenX account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Host
  |
 Enter the hostname or IP address of your OpenX Ad server. The hostname must include the API package directory name. For example:

http:///openx/www/api/v1/xmlrpc/

|
|
 Username
  |
 Enter your OpenX username. The user with this username must be an administrative user.
  |
|
 Password
  |
 Enter your OpenX password.
  |


 Once you have entered valid OpenX credentials, you can use the same account any time you go to create a new OpenX DataSet. You can manage connector accounts in the
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
 Select the OpenX report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Advertisers List
  |
 Returns a list of advertisers.
  |
|
 Advertiser Stats
  |
 Returns statistics for a selected advertiser.
  |
|
 Agencies List
  |
 Returns a list of agencies.
  |
|
 Agency Stats
  |
 Returns statistics for a selected agency.
  |
|
 Banners List
  |
 Returns a list of banners.
  |
|
 Banner Stats
  |
 Returns statistics for a selected banner.
  |
|
 Campaigns List
  |
 Returns a list of campaigns.
  |
|
 Campaign Stats
  |
 Returns statistics for a selected campaigns.
  |
|
 Publishers List
  |
 Returns a list of publishers.
  |
|
 Publisher Stats
  |
 Returns statistics for a selected publisher.
  |
|
 Zones List
  |
 Returns a list of zones.
  |
|
 Zone Stats
  |
 Returns statistics for a selected zone.
  |

|
|
 Agency Name
  |
 Select the agency you want to retrieve data for.
  |
|
 Advertiser
  |
 Select the advertiser you want to retrieve data for.
  |
|
 Campaign
  |
 Select the campaign you want to retrieve data for.
  |
|
 Publisher
  |
 Select the publisher you want to retrieve data for.
  |
|
 Group By
  |
 Selected how you want your report data to be aggregated.
  |
|
 Past Days
  |
 Enter the number of past days you want to pull data for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

