

Intro
-------

Splunk produces software for searching, monitoring, and analyzing machine-generated big data. Use Domo's Splunk connector to retrieve data about clusters, deployments, server settings, licenses, and much more. To learn more about the Splunk API, visit their page (

http://dev.splunk.com/restapi

).


**Note:**

The user interface for building this connector is in Beta and not yet available in our Connectors listing in the Data Center, meaning you will not be able to find the connector on your own. However, if you would like we at Domo are more than happy to grant you access to the connector so that you can begin using it to pull your data into Domo. Please don't hesitate to reach out to

betafeedback@domo.com

to get access to the Beta for this connector. For contact information, see

Getting Help

.

You connect to your Splunk account in the Data Center. This topic discusses the fields and menus that are specific to the Splunk connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Splunk account and create a DataSet, you must have the following:

 The Splunk host URL
* Your Splunk username and password
* The Splunk port number

Before you connect to Splunk in Domo, you should whitelist the following IP addresses to your Splunk account:


`54.208.95.237`


`54.208.87.122`


`54.208.95.167`


`54.208.94.194`


`50.207.240.162`


`50.207.241.62`


`52.18.90.222`


`52.62.103.83`


`34.198.214.100`


 For more information about whitelisting, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Your Splunk Account
-----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Splunk Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Splunk account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Host
  |
 Enter the Splunk host URL, minus the initial

http://

or

https://

. For example:


 subdomain.domain.info


 .
  |
|
 Username
  |
 Enter your Splunk username.
  |
|
 Password
  |
 Enter your Splunk password.
  |
|
 Port
  |
 Enter the Splunk port number.
  |


 Once you have entered valid Splunk credentials, you can use the same account any time you go to create a new Splunk DataSet. You can manage connector accounts in the
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
 Select the Splunk report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 App Templates
  |
 Returns a list of installed app templates.
  |
|
 Apps Local
  |
 Returns a list of installed apps and properties.
  |
|
 Authentication Context
  |
 Returns user information for the current context.
  |
|
 Authentication HTTP Auth Tokens
  |
 Returns a list of user session IDs.
  |
|
 Authentication Users
  |
 Returns a list of users.
  |
|
 Authorization Capabilities
  |
 Returns a list of system capabilities.
  |
|
 Authorization Roles
  |
 Returns a list of roles and permissions.
  |
|
 Cluster Master Buckets
  |
 Returns a list of cluster master node bucket configurations.
  |
|
 Cluster Master Generation
  |
 Returns a list of peer nodes for this master.
  |
|
 Cluster Master Info
  |
 Returns a list of cluster node details.
  |
|
 Cluster Master Peers
  |
 Returns a list of cluster master peers.
  |
|
 Cluster SearchHead Generation
  |
 Returns a list of cluster SearchHead node configurations.
  |
|
 Cluster SearchHead Config
  |
 Returns a list of peers available to a cluster SearchHead.
  |
|
 Cluster Slave Buckets
  |
 Returns a list of cluster peer bucket configurations.
  |
|
 Cluster Slave Info
  |
 Returns peer information.
  |
|
 Deployment Client
  |
 Returns a list of deployment clients and their status.
  |
|
 Deployment Client Config
  |
 Returns a list of deployment client configurations and their status.
  |
|
 Deployment Server Applications
  |
 Returns a list of distributed apps.
  |
|
 Deployment Server Clients
  |
 Returns information about clients on a deployment server.
  |
|
 Deployment Server Clients Count Clients
  |
 Returns a count of deployment clients for a server.
  |
|
 Deployment Server Clients Recent Downloads
  |
 Returns a count of downloads from a client on a server.
  |
|
 Deployment Server Config
  |
 Returns configuration information for all deployment servers.
  |
|
 Deployment Server Server Classes
  |
 Returns a list of server classes for a deployment server.
  |
|
 Indexing Preview
  |
 Returns a list of all data preview jobs.
  |
|
 Licenser Groups
  |
 Returns a list of all licenser groups.
  |
|
 Licenser Licenses
  |
 Returns a list of all licenses added.
  |
|
 Licenser Pools
  |
 Returns a list of enumerated pools.
  |
|
 Licenser Slaves
  |
 Returns a list of slaves registered to the license master.
  |
|
 Licenser Stacks
  |
 Returns a list of enumerated license stacks.
  |
|
 Search
  |
 Lets you perform a search based on specified criteria.
  |
|
 Search Jobs
  |
 Returns a list of details from the current searches.
  |
|
 Search Job With Namespace
  |
 Returns information about the specific job search using the specified namespace.
  |
|
 Server Control
  |
 Returns a list of actions that can be performed.
  |
|
 Server Logger
  |
 Returns a list of enumerated logging categories.
  |
|
 Server Settings
  |
 Returns server configuration for a Splunk deployment.
  |

|
|
 Application Name
  |
 Enter the Splunk application name you want to retrieve data for.
  |
|
 Search Criteria
  |
 Enter the criteria you want to search for.
  |
|
 List To Flatten
  |

Enter the column name(s) that you want to flatten. You can enter multiple column names separated by comma.

|
|
 Max Age Seconds
  |
 Enter the age of the downloads to count (in seconds).
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

