

Intro
-------

JavaScript Object Notation (JSON) is a lightweight data-interchange format that is easy to use. The JSON No Code With Oauth connector allows you to import files from HTTPS sources using OAuth authentication. To learn more about the JSON API, visit their page

https://jsonapi.org/

.


 You connect to your JSON No Code OAuth account in the Data Center. This topic discusses the fields and menus that are specific to the JSON No Code OAuth connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your JSON No Code OAuth account and create a DataSet, you must have the following:

 Your account name
* The Client ID and Client Secret for your authorization server
* Your API authorization endpoint
* Your API access token endpoint
* (optional) The scopes needed for the connection. Scopes should be separated by a space.
* You also need to specify whether the redirect URI needs to be passed to the API when refreshing the access token.

Connecting to Your JSON No Code OAuth Account
-----------------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the JSON No Code OAuth Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your JSON No Code OAuth account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Account name
  |
 Enter the name for your account
  |
|
 Client ID
  |
 Client ID for your OAuth authentication
  |
|
 Client Secret
  |
 Client Secret for your OAuth authentication
  |
|
 OAuth Type
  |
 Select the required API to determine the appropriate flow by looking for the 'grant\_type' parameter if your API does not specify the flow-type it uses.
  |
|
 Authorization URL
  |
 API authorization endpoint
  |
|
 Access token URL
  |
 API Access Token endpoint
  |
|
 Refresh Token Url
  |
 API Refresh token endpoint
  |
|
 Scopes
  |
 Enter the scopes needed for this connection. Scopes should be separated by a space.
  |
|
 State type
  |
 Select the type of state required by your OAuth
  |
|
 State location
  |
 Select whether to send the state as a query parameter or in a path
  |
|
 Response type
  |
 Select the response type to use with the authorization URL
  |
|
 Use Redirect URI when Refreshing Access Token
  |
 Select whether the redirect URI needs to be passed to the API when refreshing the access token (this is rare).
  |

The JSON No Code OAuth account connector uses OAuth to connect, so there is no need to enter the credentials for your authorization server within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing JSON No Code OAuth accounts in Domo) to open the authorization server OAuth screen where you can enter your authorization server email address and password. Once you have entered valid JSON No Code OAuth credentials, you can use the same account any time you go to create a new JSON No Code OAuth DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into your authorization server account when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of your authorization server account.


###
 Data Selection Pane

In this pane, you specify the server/SFTP site to connect to, the name of the JSON file, and other configuration settings.


 Menu
  |
 Description
  |
| --- | --- |
|
 Choose the HTTP Method to use
  |
 Choose from either GET or POST as the HTTP method.
  |
|
 Enter the URL to your JSON file
  |
 Enter the URL of your JSON file.
  |
|
 How will you provide the certificate
  |
 Choose the method in which the certificate will be provided:
 * No certificate
* URL Path to the Certificate
* Certificate Content
 |


####
 Advanced Settings


|
 Menu
  |
 Description
  |
| --- | --- |
|
 HTTPS Headers
  |
 Enter the Key and Value of the HTTPS Headers.
  |
|
 Query Parameters
  |
 Enter the Key and Value of the Query Parameters. Specify whether you want to encode query parameters.
  |
|
 Date Query Parameters
  |
 Select No Date Filter, Single Date, or Date Range as the Date Query Parameter.
  |
|
 JSON Settings
  |
 Specify whether your JSON text requires a line reader and if the backslash character should be escaped.
  |


###
 Parsing


####
 Pagination

Select how to paginate the data:

 No Paging
* Get next URL from results
* Get next page token from results
* Offset by records
* Offset by pages


####
 Parsing

Using the data preview, you can click on a column to format the data for parsing.

##
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQ
-----

*What redirect URI do I need to register?**


 The redirect URI you need to register is:


 https://oauth.domo.com/api/data/v1/oauth/providers/json-oauth/exchange


 .


****Does this connector support paging?****


 Yes. In order to activate paging, select the paging type supported by your API and fill out the requested details.


****How do I parse my data?****


 Select the column containing the data you want to expand or modify in the Parsing tab of the Parsing Pane. Hover over the suggested actions to see the effect and select the desired action by clicking on it. Repeat until the data looks the way you want it to look. Use the history section on the right to undo actions if desired.

