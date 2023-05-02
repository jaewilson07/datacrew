

Intro
-------

Microsoft Reports connector provides an ease of access to your Microsoft email data in your organization. You can get several details about your Microsoft email data into Domo easily and securely. To do this, you must first create an app in Microsoft Azure. You must have an Admin account or an Admin approval to connect to your Microsoft account. Use Domo's Microsoft Report connector to get data about the email and user activities from your Microsoft account into Domo.


 You connect to your Microsoft Reports account in the Data Center. This topic discusses the fields and menus that are specific to the Microsoft Reports connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Microsoft account and create a DataSet, you must have the following:

 An installed Microsoft Azure app.
* The client ID for your Azure app.
* The client secret for your Azure app. This is generated when you create your Azure app.


#####
**To find the Client ID, do the following:**


1. Go to

https://portal.azure.com

and sign in using your Microsoft credentials.
2. Select
 ****Azure Active Directory > App registrations****
 .
3. Find your app and click on it.
4. Locate the "Application ID" from the web app (this is the client ID).


#####
**To generate a new Client Secret, do the following:**


1. Go to

https://portal.azure.com

and sign in using your Microsoft credentials.
2. Select
 ****Azure Active Directory > App registrations****
 .
3. Find your app and click on it.
4. Open
 ****Certificates and secrets****
 .
5. Create the client secret.


###
 Creating an Azure App for Enterprise OAuth

To create a Microsoft Azure app, do the following:


 1. Log into

https://portal.azure.com

.


 2. Click on
 ****App registrations****
 .

3. Click
 ****New registration****
 .


 4. Enter the application name and select the supported account type as below. Enter the Redirect URI for Web as

https://oauth.domo.com/api/data/v1/oauth/providers/microsoft-reports/exchange

.

5. Click
 ****Register****
 .


 6. Once the application is registered, click on
 **Certificates & Secrets**
 . Certificates can be used as secrets to prove the application’s identity when requesting a token. Also, can be referred to as public keys.

7. Click on
 **+ New Client Secret**
 button.

8. Specify the client secret description and the expiry period for your client secret, and click
 ****Add****
 .

9. Copy the value and paste it into the
 ****Client Secret****
 field in the Connector credentials section in Domo.


 10. Now, click
 **API Permissions**
 .

11. Click
 **+Add Permissions**
 button.

12. After adding the permissions, the configured permissions will be listed as below.

Connecting to Your Microsoft Account
--------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Microsoft Report

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

Microsoft

account via Azure. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Client ID
  |
 Enter the client ID for your installed Azure web app. For more information about finding this, see

Prerequisites

above.
  |
|
 Client Secret
  |
 Enter the client secret that was generated when you created your app. For more information about finding this, see

Prerequisites

above.
  |


 Once you have entered valid credentials, you can use the same account any time you go to create a new

Microsoft Report

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
 Select the report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Get Email Activity User Detail
  |
 This report returns details about email activity the users have performed.
  |
|
 Get Email Activity Counts
  |
 This report enables you to understand the trends of email activities (like how many were sent, read, and received) in your organization.
  |
|
 Get Email Activity Exchange
  |
 This report returns the number of emails sent today and yesterday in your organization.
  |
|
 Get Email Activity Metrics
  |
 This report enables you to understand the trends of email activity (like how many were sent, and received) and on the number of unique users who are performing email activities like send, read, and receive.
  |
|
 Get Email Activity User Counts
  |
 This report enables you to understand trends on the number of unique users who are performing email activities like send, read, and receive.
  |

|
|
 Period
  |
 Select the length of time over which the report is aggregated. The supported values for Period are: D7, D30, D90, and D180. These values follow the format Dn where n represents the number of days over which the report is aggregated.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

