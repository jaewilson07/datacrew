

Intro
-------

Compose, formerly known as MongoHQ, makes it easy to deploy your favorite open source databases in minutes into your preferred cloud datacenter. To learn more about the Compose API, visit their page (

https://apidocs.compose.com/

).


 You connect to your Compose account in the Data Center. This topic discusses the fields and menus that are specific to the Compose connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Compose account and create a DataSet, you must have a Compose API token. You can obtain a token in the Compose console, under
 **Account > API Tokens**
 . You will be prompted for your user password.


 Connecting to Your Compose Account
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Compose Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Compose account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Token
  |
 Enter your Compose API tokenn. For information about obtaining a token, see "Prerequisites," above.
  |


 Once you have entered valid Compose credentials, you can use the same account any time you go to create a new Compose DataSet. You can manage connector accounts in the
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
 Select the Compose report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Accounts
  |
 Returns information about all accounts of which your user is a member.
  |
|
 Audit Events
  |
 Returns all audit events for which your user has access.
  |
|
 Billables
  |
 Returns a list of billable items associated with your user.
  |
|
 Clusters
  |
 Returns all clusters accessible for your user.
  |
|
 Databases
  |
 Returns a list of available databases and their versions.
  |
|
 Datacenters
  |
 Returns a list of currently available datacenters in the Compose platform.
  |
|
 Deployments
  |
 Returns information about deployments accessible to your user.
  |
|
 Deployments Addons
  |
 Lists add-ons for a given deployment.
  |
|
 Deployments Alerts
  |
 Returns current alerts for a given deployment.
  |
|
 Deployments Backups
  |
 Returns information about all backups for a given deployment.
  |
|
 Deployments Recipes
  |
 Retrieves past and present recipes for a deployment.
  |
|
 Deployments Roles
  |
 Lists user roles for a deployment.
  |
|
 Deployments Scalings
  |
 Returns scaling information about your deployment.
  |
|
 Deployments Team Roles
  |
 Lists team roles for a deployment.
  |
|
 Deployments Versions
  |
 Returns possible version transitions for a given deployment.
  |
|
 Teams
  |
 Lists teams on the account.
  |

|
|
 Deployment ID
  |
 Select the ID of the deployment you want to retrieve data for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

