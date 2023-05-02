

Intro
-------

Adobe Analytics helps you create a holistic view of your business by turning customer interactions into actionable insights. Domo's Adobe Analytics V2 connector allows you to retrieve data through prebuilt reports. You can then combine metrics with data from CRM, POS, or any other system to make faster, better-informed business decisions. To learn more about the Adobe Analytics API, visit their website (


 https://marketing.adobe.com/developer/en\_US/get-started/introduction/c-introduction


 ).

You connect to the Adobe Analytics API in the Data Center.

This topic discusses the fields and menus that are specific to the Adobe Analytics v2 connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to the Adobe Analytics API v2 and create a DataSet, you must have the Client ID and Client Secret associated with your Adobe Analytics v2 account.


 Visit

Adobe Oauth Connection

documentation to learn more about obtaining your Client ID and Client Secret.

##

Creating a new OAuth project in Adobe Developer Console

To create a new OAuth project in Adobe Developer Console, do the following:


 1. Log into

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


**OAuth**


 here.

6. Select the
 **Web**
 platform to configure the API.


 Enter the

*Default**

*redirect URI**


 as

*https://oauth.domo.com/api/data/v2/oauth/providers/adobe-analytics-oauth/exchange**


 Enter the
 **Redirect URI pattern**
 as
 **https://oauth/.domo/.com/api/data/v2/oauth/providers/adobe-analytics-oauth/exchange**

7. Click


**Save configured API**
 .


 Connecting to the Adobe Analytics API v2
-------------------------------------------

This section enumerates the options in the
 **Credentials**


 and
 **Details**


 panes in the Adobe Analytics v2 connector page. The components of the other panes in this page,


**Scheduling**
 and


**Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane

This pane contains fields for entering credentials to connect to the Adobe Analytics API v2. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Client ID
  |
 Enter the client id associated with your Adobe Analytics v2 account.
  |
|
 Client Secret
  |
 Enter the client secret associated with your Adobe Analytics v2 account.
  |

Once you have entered valid credentials, you can use the same account any time you go to create a new Adobe Analytics v2 DataSet. You can manage connector accounts in the


**Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##

Details Pane

This pane contains the information about the predefined Adobe Analytics v2 reports.


 Menu
  |
 Description
  |
| --- | --- |
|
 Predefined Report
  |
 Select the Adobe Analytics v2 report you want to run:


|  |  |
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

This will replace all of the data in your dataset, which may result in data loss if the dataset is in Append mode.
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
 Include Type
  |
 Include additional calculated metrics not owned by user. The “All” option takes precedence over “Shared.”
  |
|
 Report Suite ID
  |
 Select a report suite id.
  |
|
 Metrics
  |
 Select a metric from the available metrics.
  |
|
 Dimensions
  |
 Select a dimension.
  |


 Other Panes
--------------

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

FAQs
-------


####

Q: When should I use this connector?


 A: Connect your customer insight data to Domo using V2 of Adobe's API and authenticating using OAuth. This API provides the same functionality as the V1.4 of the API.


####
 Q: I successfully created an Adobe Analytics OAuth account, but about two weeks later I got an alert: "Account Adobe Analytics OAuth Account has been Deactivated". Why is this happening and what can I do about it?

A: Adobe Analytics OAuth has a refresh token that expires after two weeks (see

Adobe documentation

for details.) This causes Adobe OAuth to no longer authenticate after two weeks. This is an Adobe limitation. Older datasets use WSSE authentication (Username:Company, Password), but Adobe has deprecated WSSE authentication. Please contact Adobe support to request a resolution to this issue.

###
 Q: How can I migrate my reports from version 1.4 of the Adobe Analytics API to version 2?

A: Refer to the Adobe Analytic's

Migrating Guide

for details. Version 2 is designed to run smaller requests quickly, compared to version 1.4 which handle large requests slowly. This design change means that Domo cannot automatically migrate your datasets into version 2.

###
 Q: How does this connector differ from the other Adobe Analytics connectors?

A: The Adobe Analytics and Adobe Analytics Advanced connectors use version 1.4 of the Adobe Analytics API, while this connector uses version 2.

