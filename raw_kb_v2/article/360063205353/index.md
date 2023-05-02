

Intro
-------


 Adobe Analytics helps you create a holistic view of your business by turning customer interactions into actionable insights. With the Domo Adobe Analytics API v2 connector with JWT authentication and Partition support, you can retrieve data about customers, various metrics, dimensions, and segments to see the big web engagement picture. Adobe Analytics delivers virtually anything you need to understand and measure your visitors’ online behavior. With Domo, you can easily access Adobe's web analytics metrics and combine them with data from CRM, POS, finance, and any other system to make faster, better-informed decisions. With your data in Domo, you can snapshot how your web presence develops over time and get instant notifications when Adobe Analytics metrics hit thresholds that you determine. This connector supports partitioning and uses custom reports.

To learn more about the Adobe Analytics API, visit their website (

https://marketing.adobe.com/developer/en\_US/get-started/introduction/c-introduction

).


 You connect to the Adobe Analytics API in the Data Center.

This topic discusses the fields and menus that are specific to the Adobe Analytics API v2 Connector with JWT authentication and Partition support user interface.


 General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in


 Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------


 To connect to Adobe Analytics v2 and create a dataset, you must create an Adobe Analytics Service Account (JWT) project in the Adobe Developer Console and provide the following:


* Client ID (API Key)
* Client Secret
* Technical Account ID
* Organization ID
* Private Key for your Adobe integration in PEM format


**Note:**
 To generate the key, you must be a user with the Admin role in Adobe Analytics in order for the connector to work correctly.

##

Creating a new project in Adobe Developer Console with JWT authentication

To create a new project in Adobe Developer Console, do the following:

. Log into

https://console.adobe.io/projects

.
2. Click
 **Create new project**
 button.


 3. Click on
 **Add API**
 to start using the Adobe services.

4. The APIs available to you will be listed in the
 **Add an API**
 window. Select
 **Adobe Analytics**
 .

5. Now, you need to select the authentication type. Select


**Service Account (JWT)**
 here.

6. Select


**Generate a key pair**


 and click


**Generate Keypair**
 .

7. A new key pair will be generated and downloaded to your system. The public key will be uploaded to your JWT project. The private key will be downloaded.

8. Unzip the file "config.zip", open the directory "config", and open the file "private.key" with a basic text editor. This is the


**Private Key**


 you will paste into Domo, in Credentials section.


 9. Now, click


**Next**
 .


 10. Select the desired product profiles, then click


**Save Configured API**
 .


 11. This takes you to the


**Project APIs and Services**


 page. If you scroll down, you will see the


**Client ID, Client Secret, Technical Account ID**


 and


**Organization ID**
 that you will use to create the Adobe Analytics JWT account in Domo.

12. (Optional) Rename the project to something you will recognize later. Navigate to the


**Project Overview**


 page, then click


**Edit Project**
 .


 Connecting to Your Adobe Analytics API v2 Account
----------------------------------------------------


 This section enumerates the options in the

*Credentials**

and

*Details**

panes in the Adobe Analytics API v2 Connector with JWT authentication and Partition support page.


 The components of the other panes in this page,

*Scheduling**

and

*Name & Describe Your DataSet**

, are universal across most connector types and are discussed in greater length in


 Adding a DataSet Using a Data Connector


 .


###
 Credentials Pane


 This pane contains fields for entering credentials to connect to the Adobe Analytics API v2. The following table describes what is needed for each field:


|
 Field
  |
 Description
  |
| --- | --- |
|
 Client ID (API Key)
  |
 Enter your client ID.
  |
|
 Client Secret
  |
 Enter your client secret.
  |
|
 Technical Account ID
  |
 Enter your technical account ID.
  |
|
 Organization ID
  |
 Enter your organization ID.
  |
|
 Private Key
  |
 Paste the private key for your Adobe integration here, in PEM format. To generate the key, you must be a user with the Admin role in Adobe Analytics in order for the connector to work correctly.
  |


 Once you have entered valid credentials, you can use the same account any time you go to create a new Adobe Analytics API v2 Connector with JWT authentication and Partition support DataSet.

You can manage Connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
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

Select the Adobe Analytics API v2 Connector with JWT authentication and Partition support report you want to run. The following reports are available:

  |  |
| --- | --- |
|
 Calculated Metrics
  |
 This report returns a list of calculated metrics.
  |
|
 Collections
  |
 This report returns a list of report suites.
  |
|
 Dimensions
  |
 This report returns a list of dimensions for a given report suite.
  |
|
 Metrics
  |
 This report returns a list of metrics for a given report suite.
  |
|
 Report

Data
  |
 This report returns reporting data for the requested metric and dimension for the given date range.
  |
|
 Reset Data
  |
 Select this checkbox to reset the data if needed. Run the data once with this box checked, and then uncheck it to continue normally.

This will replace all of the data in your dataset, which may result in data loss if the dataset is in
 **Append**
 mode.
  |
|
 Segments
  |
 This report returns a list of segments.
  |
|
 Users
  |
 This report returns a list of users for the company.
  |

|
|
 Global Company ID
  |
 Select the company.
  |
|
 Report Suite id
  |
 Select the Report Suite id.
  |
|
 Metrics
  |
 Select a metric from the available metrics.
  |
|
 Dimensions
  |
 Select the dimensions in drill order.
  |
|
 Segments
  |
 Select a segment if you want to filter the data by segment.
  |
|
 Anomaly Detection Report
  |
 Check the box to include anomaly detection.
  |
|
 Report Dates
  |
 Select the report dates.
  |
|
 Include Type
  |
 Include additional calculated metrics not owned by user. The “All” option takes precedence over “Shared”
  |
|
 Single Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today.
  |
|
 Specific Date
  |
 Select the specific date using the date selector.
  |
|
 Relative Date
  |
 Enter the number of days back that you would like to get data for in the
 ****Days Back****
 field. Specify either today or 0, yesterday or 1, or today-7 or 7 to get data for 7 days into the past.
  |
|
 Date Range
  |
 Select the specific or relative date range.
  |
|
 Start Date - Specific
  |
 Select the first date in your date range using the date selector.
  |
|
 End Date - Specific
  |
 Select the last date in your date range using the date selector.
  |
|
 Start Date - Relative
  |
 Enter the number of days back that you would like to get data from (start day). Combine with
 ****************End Date****************
 to create a range of represented days.


 For example, if you entered 10 for
 ****************Start Date****************
 and 5 for
 ****************End Date****************
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 End Date - Relative
  |
 Enter the number of days back that you would like to get data to (end day). Combine with
 ****************Start Date****************
 to create a range of represented days.


 For example, if you entered 10 for
 ****************Start Date****************
 and 5 for
 ****************End Date****************
 , the report would contain data for 10 days ago up until 5 days ago.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 When should I use this connector?

Connect your customer insight data to Domo using V2 of Adobe's API and authenticating using JWT. This API provides the same functionality as the V1.4 of the API.

###

I successfully created an Adobe Analytics JWT account, but later got an alert: "Account Adobe Analytics JWT Account has been Deactivated". Why is this happening and what can I do about it?

When you create your JWT token, you set the expiration period for it. Please check if the expiration period for your JWT is over. Adobe Analytics suggests to have a very short lived token (a few minutes) - such that it expires soon after it has been exchanged for an IMS access token. Hence, every time a new access token is required, one such JWT is signed and exchanged. This is a secure approach. For more details, see

Claims for Service Account JWT

.


####

What's the difference between the Adobe Analytics v2 OAuth and Adobe Analytics v2 JWT connectors?

The Adobe Analytics v2 connector uses the OAuth authentication whereas the Adobe Analytics API v2 Connector with JWT authentication uses the JWT authentication. Adobe recommends that you use JWT authentication, as you will have to refresh the OAuth account every two weeks because the OAuth refresh token expires.

###

What version of the Adobe Analytics API does this connector use?

This connector uses the version 2 of the Adobe Analytics API (

https://analytics.adobe.io/api/2

).

###

Which endpoint(s) does each report call in this connector?


|
 Report Name
  |
 Endpoint URL(s)
  |
| --- | --- |
|
 Calculated Metrics
  |
 /calculatedmetrics
  |
|
 Collections
  |
 /collections/suites
  |
|
 Dimensions
  |
 /dimensions
  |
|
 Metrics
  |
 /metrics
  |
|
 Report
  |
 /reports
  |
|
 Segments
  |
 /segments
  |
|
 Users
  |
 /users
  |


####

What kind of credentials do I need to power up this connector?

You need the Client ID (API Key), Client Secret, Technical Account ID, Organization ID, and Private Key associated with your Adobe Analytics v2 JWT project.

###

Are there any API limits that I need to know?

In order to run a report with multiple dimensions in Adobe Analytics API 2.0, Domo gets the data in multiple small API calls. If getting data for many dimensions or over a long time period, the dataset might timeout after 24 hours. To prevent this, pull a smaller amount of data or fewer dimensions.

###

Which Adobe Analytics connector should I use?

Adobe recommends that you use Adobe Analytics v2 with JWT authentication. Adobe OAuth refresh tokens expire after two weeks, which requires you to refresh your account.

Troubleshooting
-----------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.


