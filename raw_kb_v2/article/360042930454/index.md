

Intro
-------

Kintone is an enterprise rapid application development platform provided by Cybozu, a collaborative software development company. To learn more about the Kintone API, visit their page (

https://developer.kintone.io/hc/en-u...ntone-REST-API

).


 You connect to your Kintone account in the Data Center. This topic discusses the fields and menus that are specific to the Kintone connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Kintone account and create a DataSet, you must have the following:

 Your Kintone subdomain. This is the portion of your Kintone instance URL immediately following

https://

. For example, if your instance was


 https://mycompany.kintone.com


 , your subdomain would be

mycompany

.
* The username and password for your Kintone account.

Connecting to Your Kintone Account
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Kintone Connector page. The components of the other panes in this page,
 **Scheduling,**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Kintone account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Subdomain Name
  |
 Enter your Kintone subdomain name. For more information, see "Prerequisites," above.
  |
|
 Username
  |
 Enter the username for your Kintone account.
  |
|
 Password
  |
 Enter the password for your Kintone account.
  |


 Once you have entered valid Kintone credentials, you can use the same account any time you go to create a new Kintone DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains two primary menus,
 **Guest Space ID**
 and
 **Reports**
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Guest Space ID
  |
 If your application exists inside a Guest Space, enter your Guest Space ID here.
  |
|
 Report
  |
 Select the Kintone report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 All Apps
  |
 Returns information for all apps, with their names, descriptions, related space, creator, and update information.
  |
|
 All Records of 1 App
  |
 Retrieves multiple records for a given app.
  |

|
|
 App ID
  |
 Enter the App ID of the Kintone app you want to retrieve data for. To find the ID for an app, open the app and view the URL. The App ID is the number after

/k

.
  |
|
 Record Number (Optional)
  |
 Enter the record number of the app you want to retrieve data for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

##
 FAQ


####
 What version of the Kintone API does this connector use?

This connector uses version 1 of the Kintone API (

https://{

sub-domain-name}.

cybozu.com/k/v1/

For guest space:

https://(sub

domain name).

cybozu.com/k/guest/

{spaceID}/v1/).

###
 Which endpoint(s) does each report call in this connector?


|  |  |
| --- | --- |
|
 Report Name
  | **Endpoint URL**  |
|
 All Apps
  |
 /apps.json
  |
|
 All Records of 1 App
  |
 /app.json
  |


####
 What kind of credentials do I need to power up this connector?

You need the Kintone domain name (e.g.

sample.kintone.com

), and the username and password associated with the domain.

###
 Can I use the same account multiple times to create datasets?

Yes.

###
 How often can the data be updated?

Datasets should be set to update no more than once every 15 minutes.

###
 Are there any API limits that I need to be aware of?

Kintone may limit API calls. To prevent rate limiting, reduce the number of datasets scheduled to run at the same time.

