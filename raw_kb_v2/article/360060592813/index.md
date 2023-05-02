

Intro
-------

Microsoft Teams is a unified communication and collaboration platform that combines persistent workplace chat, video meetings, file storage (including collaboration on files), and application integration. Webhooks are one of a few ways web applications can communicate with each other. Microsoft Teams Webhook is a simple way to connect your web services to channels and teams inside Microsoft Teams. Use Domo’s Microsoft Teams Webhook Connector to send real-time data from your web services to your Microsoft Teams’ channels and teams. To learn more about the Microsoft Teams API, visit

https://docs.microsoft.com/en-us/graph/teams-concept-overview

.


 You connect to your Microsoft Teams account in the Data Center. This topic discusses the fields and menus that are specific to the Microsoft Teams Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Microsoft Teams account and create a DataSet, you must have the following:

 An installed Microsoft Azure app.
* The Client ID and Client Secret for your Azure app.
* The Tenant ID for your Azure app. This is generated when you create your Azure app.


#####
********To find the Client ID:********


1. Go to

https://portal.azure.com

and sign in using your Microsoft credentials.
2. Select
 ****************Azure Active Directory > App registrations****************
 .
3. Find your app and click on it.
4. Locate the
 **Application ID**
 from the web app. This is your
 **Client ID**
 .


#####
********To generate a new Client Secret:********


1. Go to

https://portal.azure.com

and sign in using your Microsoft credentials.
2. Select
 ****************Azure Active Directory > App registrations****************
 .
3. Find your app and click on it.
4. Open
 ****************Certificates and secrets****************
 .
5. Click
 ****+New Client secret****
 in the Client secret section.


#####
**To obtain the Tenant ID**
 :


1. Log in to the Azure Portal (

https://protal.azure.com

).
2. Navigate to
 **Azure Active Directory >> Properties**
 .
3. Copy the
 **Directory ID**
 . The directory ID is your
 **Tenant ID**
 .


###
 Creating an Azure App for Enterprise OAuth

To create a Microsoft Azure app, do the following:


 1. Log into

https://portal.azure.com

.


 2. Click on
 ****************App registrations****************
 .

3. Click
 ****************New registration****************
 .


 4. Enter the application name, and select the supported account types for your application. Here, the supported accounts MUST be Multitenant.

5. Enter the Redirect URI for as


 https://oauth.domo.com/api/data/v1/oauth/providers/microsoft-teams-webhook/exchange

6. Click
 ****************Register****************
 .


 7. Once the application is registered, assign the required API permissions for your application.


 8. Click
 ****API Permissions > +Add a permission****
 .

9. Request API Permissions page appears displaying the commonly used Microsoft APIs.

10. Select the desired API, and add the Delegated and Application permissions as required.


 11. Click on
 ****Grant admin consent****
 , then click
 ****Yes****
 to allow the admin consent for your permissions.

The added permissions will appear in the
 ****Configured permissions****
 section with their details.

12. Now, click on
 ********Certificates & Secrets********
 . Certificates can be used as secrets to prove the application’s identity when requesting a token. Also, can be referred to as public keys.

13. Click on
 ********+ New Client Secret********
 button.

14. Specify the client secret description and the expiry period for your client secret, and click
 ****************Add****************
 .

15. Copy the value and paste it into the
 ****************Client Secret****************
 field in the Connector credentials section in Domo.


 Connecting to Your Microsoft Teams Account

Account
-------------------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Microsoft Teams Webhook

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most Connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your

Microsoft Teams

account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Client ID
  |
 Enter the client ID for your installed Azure web app. For more information, see

Prerequisites

.
  |
|
 Client Secret
  |
 Enter the client secret that was generated when you created your app. For more information, see

Prerequisites

.
  |
|
 Tenant ID
  |
 Enter your tenant ID. For more information, see

Prerequisites

.
  |


 Once you have entered valid

Microsoft Teams

credentials, you can use the same account any time you go to create a new

Microsoft Teams Webhook

DataSet. You can manage Connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

In this pane, you specify whether you want to expand the list in the response. The the data will update anytime the data in the Microsoft Teams app is updated, using the Append method by default. You can change the data update mode by clicking
 **Change update settings**
 .


 Menu
  |
 Description
  |
| --- | --- |
|
 Enable Flattening
  |
 Select the checkbox to expand the list in the response.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

