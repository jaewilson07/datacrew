

Intro
-------

Power BI is a business analytics service by Microsoft. It aims to provide interactive visualizations and business intelligence capabilities with an interface simple enough for end users to create their own reports and dashboards. To use the Power BI Writeback connector, you need an installed Microsoft Azure app. To learn more about the Power BI API, visit their page (

https://docs.microsoft.com/en-us/rest/api/power-bi/

).


 You configure your Domo-Sharepoint connection in the Data Center. This topic discusses the fields and menus that are specific to the Power BI Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this connector, you must have the following:

 An installed Microsoft Azure app.
* The Client ID and Client Secret for your Azure app.
* The Tenant ID for your Azure app. This is generated when you create your Azure app.
* The username and password for your Azure Active Directory.

###

*To obtain the Azure App Client ID**
 :

1. Go to


 https://portal.azure.com


 .


 2. Select
 **Azure Active Directory > App registrations**
 .


 3. Find and click on your web app.


 4. The "application ID" is your


**Client ID**
 .

###

*To obtain a new Azure App Client secret**
 :

1. Go to


 https://portal.azure.com


 .


 2. Select
 **Azure Active Directory > App registrations**
 .


 3. Find and click on your web app.


 4. Open
 **Certificates and secrets**
 .


 5. Click
 **+New client secret**
 .


 6. Provide the client secret description and the expiry period for your secret. Click
 **Add**
 .


 7. Your new client secret will appear. Copy it and paste in your Domo connector Client Secret field.

###

*To obtain the Tenant ID**
 :

1. Login to the Azure Portal (

https://portal.azure.com

).


 2. Navigate to
 **Azure Active Directory >> Properties**
 .


 3. Copy the
 **Directory ID**
 . The directory ID is your
 **Tenant ID**
 .

##

Creating an Azure App for Enterprise OAuth

To create a Microsoft Azure app, do the following:


 1. Log into


 https://portal.azure.com


 .


 2. Click on
 **App registrations**
 .

3. Click
 **New registration**
 .


 4. Enter the application name and select the supported account type as below. Enter the Redirect URI for Web as
 **https://oauth.domo.com/api/data/v1/oauth/providers/power-bi-writeback/exchange**
 .

5. Click
 **Register**
 . Once the application is registered, you can view the Client ID (application ID), client secret, and tenant ID.


 6. Once the application is registered, assign the required API permissions for your application.


 7. Click


**API Permissions > +Add a permission**
 .


 8.

Request API Permissions page will appear displaying the commonly used APIs.


 9. Select the API, and add the Delegated and Application permissions.

10. Click on
 **Grant admin consent**
 , then click
 **Yes**
 to allow the admin consent for your permissions.

The added permissions will appear in the
 **Configured permissions**
 section with their details.


 11. Now, click on
 **Certificates & Secrets**
 . Certificates can be used as secrets to prove the application’s identity when requesting a token. Also, can be referred to as public keys.


 12. Click on
 **+ New Client Secret**
 button.

13.

Specify the client secret description and the expiry period for your client secret, and click
 **Add**
 .


 14.

Copy the

*value**

and paste it into the

*Client Secret**

field in the Connector credentials section in Domo.

*Note:**
 Ensure to copy the Value and
 *not*
 the Secret ID.

##
 Enabling the 'Allow public client flows'

1. Go to


 https://portal.azure.com


 .


 2. Select
 **Azure Active Directory > App registrations**
 .


 3. Find and click on your web app.

4. Click on
 **Authentication**
 .


 5. Enable the following mobile and desktop flows by selecting
 **YES**
 .

##
 Granting Admin consent in App registration

1. Go to


 https://portal.azure.com


 .


 2. Select
 **Azure Active Directory > App registrations**
 .


 3. Find and click on your web app that you want to enable the admin consent for.

4. Select API permissions.


 5. Review the permissions that the application requires. If you agree, select
 **Grant admin consent**
 .

##

REST API limitations


 Ensure to check the following list of limitations before using the push datasets APIs:


* 75 max columns
* 75 max tables
* 10,000 max rows per single POST rows request
* 1,000,000 rows added per hour per dataset
* 5 max pending POST rows requests per dataset
* 120 POST rows requests per minute per dataset
* If a table contains 250,000 or more rows, 120 POST rows requests per hour per dataset
* 200,000 max rows  stored per table in FIFO dataset
* 5,000,000 max rows stored per table in 'none retention policy' dataset
* 4,000 characters per value for string column in POST rows operation

Configuring the Connection
----------------------------


 This section enumerates the options in the

*Credentials**

and

*Details**

panes in the Power BI Writeback Connector page.

The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most Connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##

Credentials Pane

This pane contains fields for entering credentials to connect to your Power BI account.

The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Azure Application Client ID
  |
 Enter the client ID (GUID) of the client web app obtained from Azure Active Directory configuration. For more information, see

"

Obtaining the Azure App Client ID".
  |
|
 Azure Application Client Secret
  |
 Enter the secret key of the client web app. For more information, see "Obtaining the Azure App Client Secret".
  |
|
 Azure Tenant ID
  |
 Enter your Tenant ID. For more information, see

"

Obtaining the Tenant ID".
  |
|
 Username
  |
 Enter your Azure Active Directory username.
  |
|
 Password
  |
 Enter your Azure Active Directory password.
  |

For more information about obtaining these credentials, see

Prerequisites

, above.

Once you have entered valid

Power BI

credentials, you can use the same account any time you go to set up a new

new Domo-Power BI connection

. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a number of fields for specifying your data and indicating where it's going.


 Menu
  |
 Description
  |
| --- | --- |
|
 Input DataSet ID
  |
 Enter the DataSet ID (GUID) for the DataSet you want to copy to Sharepoint Online. You can find the ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following datasources/. For example, in the URL


 https://mycompany.domo.com/datasources/845305d8-da3d-4107-a9d6-13ef3f86d4a4/details/overview


 , the DataSet ID is 845305d8-da3d-4107-a9d6-13ef3f86d4a4.
  |
|
 Select Group
  |
 Select the group. This is a mandatory field.

To learn more about Power BI groups, visit Microsoft's documentation refer to

https://learn.microsoft.com/en-us/power-bi/create-reports/desktop-grouping-and-binning/

.
  |
|
 Enter Dataset Name
  |
 Enter the dataset name.
  |
|
 Enter Table Name
  |
 Enter the table name.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.


