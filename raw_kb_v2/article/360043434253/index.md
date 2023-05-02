

Intro
-------

The Medallia Experience Cloud captures customer feedback and deliver insights and action across your organization. To learn more about the Medallia API, visit their page (

https://www.medallia.com/platform/api/

).


 You connect to your Medallia account in the Data Center. This topic discusses the fields and menus that are specific to the Medallia connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Medallia account and create a DataSet, you must have the following:

 A Medallia OAuth authorization endpoint. This should be in the form


 https://
 *company*
 .

medallia.com/oauth/token

.  You can find this in the OAuth configuration screen in Medallia.
* A Medallia API endpoint. This should be in the form


 https://
 *company*
 .

apis.medallia.com

.
* A Medallia client ID and client secret. You can find these in the Medallia OAuth client screen.

Connecting to Your Medallia Account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Medallia Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Medallia account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 OAuth Authorization Endpoint
  |
 Enter your Medallia OAuth authorization endpoint in the form


 https://
 *company*
 .

medallia.com/oauth/token

.
  |
|
 API Endpoint
  |
 Enter your Medallia API endpoint in the form


 https://
 *company*
 .

apis.medallia.com

.
  |
|
 Client ID
  |
 Enter your Medallia client ID.
  |
|
 Client Secret
  |
 Enter your Medallia client secret.
  |

For information about obtaining these credentials, see

Prerequisites

above.

Once you have entered valid Medallia credentials, you can use the same account any time you go to create a new Medallia DataSet. You can manage connector accounts in the
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
 Select the Medallia report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Data Query
  |
 Returns data for the provided query.
  |
|
 MQL Query Data
  |
 Returns data for the provided MQL (Medallia Query Language) statements.
  |
|
 Roles
  |
 Returns all roles in the system the authorized user has access to.
  |
|
 User List
  |
 Returns a list of users.
  |
|
 User's Details
  |
 Returns details for the specified user.
  |

|
|
 Username
  |
 Enter the name of the user you want to retrieve data for.
  |
|
 Role (Optional)
  |
 Enter a role to filter your list of users by.
  |
|
 Roles (Optional)
  |
 Enter a comma-separated list of roles to filter your users by.
  |
|
 User Status
  |
 Select a user status to filter your list of users by.
  |
|
 MQL Query
  |
 Enter the MQL query you want to execute. For more information about query syntax, see Medallia's developer documentation at

http://developer.medallia.com/

.
  |
|
 Query
  |
 Enter the query to execute. For more information about query syntax, see Medallia's developer documentation at

http://developer.medallia.com/

.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

a DataSet Using a Data Connector

.

