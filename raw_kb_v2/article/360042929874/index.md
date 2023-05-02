

Intro
-------

Lithium Technologies provides social customer experience management software for enterprise customers. The Lithium Community API v2 uses LiQL (Lithium Query Language), an SQL-like query language, to access your Lithium data. Use Domo's Lithium connector to retrieve data related to forums, such as leaderboards of kudos authors, lists of visiting users, and so on. To learn more about the Lithium API, visit their page (

https://community.lithium.com/t5/Dev...ct-p/Developer)

.


 You connect to your Lithium account in the Data Center. This topic discusses the fields and menus that are specific to the Lithium LiQL connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Lithium account and create a DataSet, you must have the following:

 Your Lithium client ID and client secret
* The base URL for your Lithium instance (e.g.


 community.domo.com


 )
* Your Lithium Tenant ID

Connecting to Your Lithium Account
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Lithium LiQL Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Lithium account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Lithium API URL
  |
 Enter the Lithium API URL you want to pull data from.


 For Production, enter one of the following:
 * api.lithium.com
* eu.api.lithium.com


 For Staging, enter one of the following:
 * api.stage.lithium.com
* eu-api.stage.lithium.com
 |
|
 Client ID
  |
 Enter your Lithium client ID.
  |
|
 Client Secret
  |
 Enter your Lithium client secret.
  |
|
 Base URL
  |
 Enter the server URL for your Lithium instance.
  |
|
 Tenant ID
  |
 Enter your Lithium tenant ID.
  |


 Once you have entered valid Lithium credentials, you can use the same account any time you go to create a new Lithium DataSet. You can manage connector accounts in the
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
 Select the Lithium report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 LiQL
  |
 Enter the fields, collections, and constraints, and the connector will use these to build your query.
  |
|
 Custom Query
  |
 Enter your own LiQL query.
  |

|
|
 Collection
  |
 Select the collection you want to use in your query. This corresponds to the

FROM

clause in the query.
  |
|
 Fields
  |
 Select the fields you want to use in your query. These correspond to the

SELECT

clause in the query.
  |
|
 Constraints
  |
 Enter the constraints you want to use in your query. These correspond to the

WHERE

clause in the query.


 For example:

ratings.avg(value)>=4 AND conversation.style='forum'

|
|
 LiQL Query
  |
 Enter the query you want to use to pull Lithium data into Domo. The syntax is:


`SELECT <fields> FROM <collection>`


`WHERE <constraints>`


`ORDER BY <fields> <DIRECTION>`


 The

SELECT

line is required; the

WHERE

and

ORDER BY

lines are optional. LiQL variables are case-sensitive.


 For example, to return forum posts with an average rating of 4 or higher, you would enter the following:


`SELECT * FROM messages WHERE ratings.avg(value)>=4 AND conversation.style='forum'`


 For another example, to return the subject, ID, and conversation data for forum topics with accepted solutions...


`SELECT subject, id, conversation FROM messages WHERE conversation.style='forum' AND depth=0 AND conversation.solved='true'`
 |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

