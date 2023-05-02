

Intro
-------

The Domo Sprinklr V2 connector allows you to bring in data from your Sprinklr installation. This allows you to aggregate insights across multiple social media channels. The Domo Sprinklr V2 connector supports custom query reports. Use this connector to instantly connect, visualize, and get insights from your Sprinklr data. For more information about the Sprinklr API, visit their website. (

https://developers.sprinklr.com/

).


 You connect to your Sprinklr account in the Data Center. This topic discusses the fields and menus that are specific to the Sprinklr V2 connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Sprinklr account and create a DataSet, you must have a Sprinklr client ID and client secret.


 To get access to the API, you must submit an application and be approved by Sprinklr. Steps to complete this application process can be found here:

https://developers.sprinklr.com/page/Create\_an\_APP

You must also set up a redirect\_uri to


 https://oauth.domo.com/api/data/v1/oauth/providers/sprinklr/exchange

when creating the API key

.


 Once access is confirmed, you will be able to authenticate using your client ID and client secret.


 Connecting to Your

Sprinklr

Account
-------------------------------------------

This section enumerates the options in the Credentials and Details panes in the

Sprinklr V2

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your

Sprinklr

account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Environment
  |
 Select the Sprinklr environment you want to connect to, either sandbox or production.
  |
|
 Client ID
  |
 Enter your Sprinklr client ID.
  |
|
 Client Secret
  |
 Enter your Sprinklr client secret.
  |

Once you have entered valid

Sprinklr

credentials, you can use the same account any time you go to create a new

Sprinklr V2

DataSet. You can manage Connector accounts in the
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
 Select the

Sprinklr V2

report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Campaign By External Campaign
  |
 Returns campaign by external campaign details and the data corresponding to an External Campaign ID, and other related objects.
  |
|
 Campaign By ID
  |
 Returns the data corresponding to a Campaign ID and other related objects.
  |
|
 Case By Case Number
  |
 Returns details about the passed case number.
  |
|
 Custom Query
  |
 Returns the reporting data which will help you analyze your business on the web. You can use the data to understand traffic, analyze patterns, find out how popular a specific content is, or compile information to make future strategies for the business.
  |
|
 Custom Query Advanced
  |
 Enter a query definition taken from the Sprinklr UI to duplicate the behavior of a Sprinklr report.
  |
|
 Message By Message ID
  |
 Returns data about a message using the message ID.
  |
|
 Profile By Profile ID
  |
 Returns the profile details and other related objects for the passed profile ID.
  |
|
 Profile Details
  |
 Returns profile using snType and snUserID via this API call. You will get the profile details and other related objects.
  |
|
 Profile Search
  |
 Returns the profile details and other related objects.
  |
|
 URL Shorteners
  |
 Returns the available URL shorteners and their IDs. Also, can check the availability of VanityUrl for an ID.
  |
|
 User
  |
 Returns details about a user through user ID via this API call.
  |

|
|
 External Source ID
  |
 Enter the ID of the external source. (Example: 1234)
  |
|
 External Source Name
  |
 Enter the name of the external source. (Example: abc)
  |
|
 Campaign ID
  |
 Enter the Campaign ID that you want to fetch the details for. (Example: 11\_1)
  |
|
 Case Number
  |
 Enter the Case Number of the case you want to fetch. (Example: 11)
  |
|
 Reporting Engine
  |
 Enter the copied value from the UI payload. (Example: INBOUND\_MESSAGE)
  |
|
 Report Name
  |
 Enter the copied value from the UI payload. (Example: INBOUND\_MESSAGE)
  |
|
 GroupBy Heading
  |
 Enter the copied value from the UI payload. (Example: INBOUND\_MESSAGE)
  |
|
 GroupBy Dimention Name
  |
 Enter the name of the dimension. This should match the "group by" field from UI payload.
  |
|
 GroupBy Types
  |
 Enter the copied value from UI payload. Enter comma-separated values for multiple entries. (Example: FIELD)
  |
|
 Projections Heading
  |
 Enter any string value which defines the data. Enter comma-separated values for multiple entries. (Example: totalCount\_UNIFIED\_MESSAGE\_ID\_0)
  |
|
 Projections Measurement Name
  |
 Enter exact value for measurement field from UI payload.
  |
|
 Projections Aggregate Functions
  |
 Enter the copied value from UI payload. Enter comma-separated values for multiple entries. (Example: SUM)
  |
|
 Filter Dimension Name
  |
 Enter exact value of UI "filter" fields.
  |
|
 Filter Filter Type
  |
 Enter the type of the filter applied. The value should exactly match the UI payload filterType.
  |
|
 Filter Values
  |
 Enter the copied value from UI payload.
  |
|
 Date Selection
  |
 Select the date format for your data.
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
|
 Time Period
  |
 Specify the time period that you would like to receive data for.
  |
|
 Starting Day of the Week
  |
 Select the day you would like your week to start with.
  |
|
 Select Time Zone
  |
 Select the time zone.
  |
|
 Columns To Flatten
  |
 Enter comma-separated list to columns to be flattened. (Example: profileLists,customProperties)
  |
|
 Message ID
  |
 Enter the message ID of the message. It is a combination of sourceType, sourceId, snCreatedTime, & umId. (Example: messageId = sourceType + "" + sourceId + "" + "snCreatedTime" + "\_" + umId.)
  |
|
 Profile ID
  |
 Enter the Profile Id of the profile you want to fetch. (Example: 1234)
  |
|
 Query
  |
 Enter the desired query.
  |
|
 Channel Types
  |
 Enter the Channel Type for the profile. (Example: FACEBOOK)
  |
|
 User ID
  |
 Enter the User Id you want to fetch. (Example: 1234)
  |
|
 User Name
  |
 Enter the unique User name of the profile. (Example: abc)
  |


####

Custom Query Report-Taking the payload from the UI and mapping it to the Connector fields

1. Log into the

RWP Extraction Tool

with the user credentials of the Sprinklr Environment from which you want to fetch the API Payload of existing widgets.


 2. Select the environment from the drop-down menu. If you are unsure about the environment, please reach out to your Success Manager or Sprinklr Support.


**Note:**
 If TFA (Two-Factor Authentication) is enabled for your partner, then you need to enter the OTP (One-Time Password) received either on mobile or email.

3. Click
 **Submit**
 .


 4. Click
 **Reporting**
 in the top right corner.

5. Select the Dashboard Type and API Version.

6. Based on your Dashboard Type selection, all the dashboards will appear.


 7. Select the dashboard containing the widget whose API payload you need.


 8. Select the widget from the drop-down menu whose API payload you want to generate and click
 **Generate Payload**
 .


 9. You will get the complete API Payload of that widget. You can even download the API Payload as a text file.

10. The values in the payload can be mapped to the UI fields with similar name.

  |  |
| --- | --- |
|
**Connector UI field**
 |
**Corresponding to payload value**
 |
|
 REPORTING ENGINE
  |
 reportingEngine
  |
|
 REPORT NAME
  |
 report
  |
|
 TIMEZONE
  |
 timeZone
  |
|
 GROUPBY HEADING


 GROUPBY DIMENSION NAME


 GROUPBY GROUP TYPES


 |
 groupBys [{


 Heading


 dimensionName


 groupType


 }]
  |
|
 PROJECTIONS HEADING


 PROJECTIONS MEASUREMENT NAME


 PROJECTIONS AGGREGATE FUNCTIONS
  |
 projections [{


 Heading


 measurementName


 aggregateFunction


 }]
  |
|
 FILTER DIMENSION NAME


 FILTER FILTER TYPE


 FILTER VALUES
  |
 filters [{


 dimensionName


 filterType


 Values: []


 }]
  |


####

Custom Query Report Example

You can provide single as well as multiple values as the query input for the Custom Query report. Let's consider the following values to test the Custom Query report:


 Single value query inputs:

 Reporting engine: INBOUND\_MESSAGE
* Report: INBOUND\_MESSAGE
* GroupBy Heading: UNIFIED\_MESSAGE\_ID\_0
* GroupBy Dimension Name: UNIFIED\_MESSAGE\_ID
* GroupBy Group Type: FIELD
* Projections Heading: totalCount\_UNIFIED\_MESSAGE\_ID\_0
* Projections Measurement Name: UNIFIED\_MESSAGE\_ID
* Projections Aggregate Function: CARDINALITY
* Filters Filter Type: IN
* Filters Dimension Name: CAMPAIGN\_ID\_DIMENSION
* Filters Values: 1000004845\_-98


 Multiple values query inputs:

 Filters Filter Type: IN,IN
* Filters Dimension Name: CAMPAIGN\_ID\_DIMENSION,CAMPAIGN\_ID\_DIMENSION
* Filters Values: 1000004845\_-98, 1000004845\_1


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

FAQs
-------

###

How does backfill work?

On the first run, the Connector will bring in data corresponding to the filter 'Start Date' to 'End Date'.  After that, the Connector will set the 'Start Date' to the next day after it was last run, and will use the current date as the value for the 'End Date'.

###

What's the behavior difference between the Replace and Append modes in Sprinklr V2 connector?


* Replace – The Replace mode has the standard behavior for all reports, means the old data will be replaced by the new data after the dataset run.
* Append – The Append mode has the standard behavior for all reports except the "Custom Query" report. The subsequent runs in the Custom Query report with Append mode will only get the data since the last time the connector ran.


####
 What version of the Sprinklr API does this Connector use?

This connector uses version 2 of the Sprinklr API.


 Sandbox API URL:

https://api2.sprinklr.com/sandbox/api/v2/

Production API URL:

https://api2.sprinklr.com/api/v2/


####
 Which endpoint(s) does each report call in this Connector?


|
 Report Name
  |
 Endpoint URL(s)
  |
| --- | --- |
|
 Campaign By External Campaign
  |
 /campaign/{externalSource}/{externalId}
  |
|
 Campaign By ID
  |
 /campaign/{campaignId}
  |
|
 Case By Case Number
  |
 /case/case-numbers
  |
|
 Custom Query
  |
 reports/query
  |
|
 Message By Message Id
  |
 /message/byMessageId
  |
|
 Profile By Profile ID
  |
 /profile/{profileId}
  |
|
 Profile Details
  |
 /profile
  |
|
 Profile Search
  |
 /profile/search
  |
|
 URL Shorteners
  |
 /link/shorteners
  |
|
 User
  |
 /scim/{userId}
  |


####
 What kind of credentials do I need to power up this Connector?

You need to know if your Sprinklr instance is Production or Sandbox. (Production is the most common.) You also need to create an application to connect to Domo and provide the Client ID and Secret associated with that application.

###
 Are there any API limits I should be aware of?

Sprinklr limits calls to Production instances to 5 calls per second and 500 per hour.


 Calls to Sandbox instances are limited to 2 calls per second and 100 per hour.


 Note that a single dataset run may require multiple calls.


 Troubleshooting
-----------------

The most commonly occurring issue with this connector relates to filters. Each report in Sprinklr is filtered and run on a separate query that cleans the Sprinklr data displayed in the reports on the Sprinklr website. When setting up the connector, you
 *must*
 use these same filters; otherwise, data will be duplicated or missing. To do this, you must use the API call that is in the backend of a Sprinklr Report.


 To access this code or to find the filters and backend report to pull from the connector, do the following:

. Open the Chrome browser.
2. Right-click in the browser and select
 **Inspect**
 .
3. In the developer screen, navigate to the
 **Network**
 tab.
4. Refresh your screen on the Sprinklr report page.


 This causes several elements to appear under the
 **Name**
 column.
5. Search through the queries and find the corresponding report or data you want to replicate.
6. Select the query and search under
 **requests**
 to find all the inputs you need to enter into the Domo Connector.
7. Connect to the Sprinklr connector to Domo using your credentials.
8. Select the report used in the Sprinklr report.


 In Sprinklr this is found under
 **requests >**
**parameter**
 . In the sample it is called “Post Insights.”
9. For
 **Aggregation Function**
 , select the function used in the Sprinklr report.


 In Sprinklr this is found under
 **groupBys >**
**p**
**rojections**
 . In the sample it is called
 **SUM**
 .
10. For
 **Measurement**
**Name**
 , select the function used in the Sprinklr report.


 In Sprinklr this is found under
 **groupbys > projections > measurement**
 .  In the sample it is called
 **TOTAL\_ENGAGEMENT**
 .
11. For
 **Group By Options,**
 enter the
 **groupby**
 fields found in the Sprinklr report under the
 **Requests**
 dropdown menu in the
 **Network**
 tab, using the syntax (columnName,dimensionName,groupType,detail=value).


 For example, if I had the “Client\_ID” field listed in the group, I would use the following syntax for
 **Group By Options**
 : (Client\_ID,Client\_ID, field).


 We also recommend you use a date group by even though the Sprinklr report may not contain that information, so the Domo cards will render the data in the needed format. For example: (date,DATE\_HISTOGRAM,interval=1h) or (POST\_PUBLISHED\_DATE,FIELD)
12. For
 **Filters**
 , enter the filters used in the Sprinklr report.


 In Sprinklr these are found under
 **requests > filters**
 .  Use the syntax under ? that you find by the
 **Filters**
 box.
13. (Conditional) If the query code in the Sprinklr report states that
 **Columns to Expand**
 and
 **Measurement**
**Options**
 are being used, enter the info that is included in the “request” data.
14. When configuring the time frame, use the time frame stated in the actual Sprinklr report/graph or the one needed for your card visualization. For most Sprinklr reports in Domo, no time frame is provided in the actual Sprinklr report . You can see in the backend that the time stated in the
 **Time**
 filter is in a format that is not database friendly or recognizable as a date.


