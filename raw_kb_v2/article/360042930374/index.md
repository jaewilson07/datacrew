

Intro
-------

Clarizen is cloud-based project management software that lets you manage work and collaborate across the enterprise. Use the Domo connector to receive data about project entities, user defined queries, expenses and more. To learn more about the Clarizen API, visit their page (

https://api.clarizen.com/v2.0/services/

).


 You connect to your Clarizen account in the Data Center. This topic discusses the fields and menus that are specific to the Clarizen connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Clarizen account and create a DataSet, you must have a Clarizen username and password.


 Connecting to Your Clarizen Account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Clarizen Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Clarizen account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter the username for your Clarizen account.
  |
|
 Password
  |
 Enter the password for your Clarizen account.
  |


 Once you have entered valid Clarizen credentials, you can use the same account any time you go to create a new Clarizen DataSet. You can manage connector accounts in the
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
 Select the Clarizen report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Data Query
  |
 Returns data based on a provided CZQL query.
  |
|
 Describe Entities
  |
 Returns entity details based on a provided entity query.
  |
|
 Entity Feed Query
  |
 Returns entity feed data based on a provided entity ID.
  |
|
 Entity Query
  |
 Returns entity data based on a provided entity query.
  |
|
 Expense Query
  |
 Returns expense data based on a provided customer or project ID.
  |
|
 Metadata
  |
 Returns project metadata.
  |
|
 News Feed
  |
 Returns news feed data.
  |
|
 Search
  |
 Returns data based on the provided search query.
  |

|
|
 Entity Name
  |
 Select the entity you want to retrieve information for.
  |
|
 Customer ID
  |
 Select the customer ID you want to retrieve information for.
  |
|
 Customer ID/Project ID
  |
 Enter the ID of the customer or project you want to retrieve information for. For example:

P-12001

or

C-2
  |
|
 Query
  |
 Enter the desired CZQL query. For example:


`'SELECT Name,

Manager.Name

FROM Task'`


 For more information about CZQL, see

https://api.clarizen.com/V2.0/services/data/Query

.
  |
|
 Search Query
  |
 Enter the text you want to search for.
  |
|
 Entity ID
  |
 Enter the unique ID of the entity you want to retrieve data for. For example:


`/Note/25696`
 |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQ
-----


#####
 What version of the Clarizen API does this connector use?

This connector uses version 2.0 of the Clarizen API (

https://api.clarizen.com/v2.0/services

).

####
 Which endpoint(s) does each report call in this connector?


|
 Report Name
  |
 Endpoint URL
  |
| --- | --- |
|
 Data Query
  |
 /data/query
  |
|
 Describe Entities
  |
 /metadata/describeEntities
  |
|
 Entity Feed Query
  |
 /data/entityQuery /data/entityFeedQuery
  |
|
 Entity Query
  |
 /data/entityQuery
  |
|
 Expense Query
  |
 /data/expenseQuery
  |
|
 Metadata
  |
 /metadata/describeMetadata
  |
|
 News Feed
  |
 /data/newsFeedQuery
  |
|
 Search
  |
 /data/search
  |


#####
 What kind of credentials do I need to power up this connector?

You need your Clarizen username and password.

####
 How often can the data be updated?

Datasets can be updated as often as once an hour.

####
 Are there any API limits that I need to be aware of?

No

####
 How often can the data be updated?

Datasets can be updated as often as once per hour.

####
 Are there any API limits that I need to be aware of?

Clarizen does not document any rate limits in their API documentation

