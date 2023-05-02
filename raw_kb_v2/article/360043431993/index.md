

Intro
-------

Sprinklr is a company that develops and markets a social software platform, also called Sprinklr, that provides social media marketing, social advertising, content management, collaboration, advocacy and social media monitoring for large enterprises. Use Domo's Sprinklr connector to retrieve information about post insights, bootstrap info, profiles, and more. For more information about the Sprinklr API, visit their website. (

https://developer.sprinklr.com/

).


 The Sprinklr connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your Sprinklr account in the Data Center. This topic discusses the fields and menus that are specific to the Sprinklr connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 Sprinklr allows an organization to aggregate their various social platform accounts into one place and track social media KPIs.
  |
|
**Primary Metrics**
 | * Engagements (ie, Facebook Likes, Twitter Loves, LinkedIn Shares)
* Reach
* Impressions
 |
|
**Primary Company Roles**
 |
 Social marketers
  |
|
**Average Implementation Time**
 |
 Application process to access the API could take 2 weeks. Actual implementation time once authenticated takes about 5 hours.
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 7
  |

Best Practices
----------------

Many of the report options require manual configuration. More information about these options can be found in the API documentation. For example, the "Account Insights," "Post Insights," and "Paid Ad Stats Insights" reports require you to fill in a

groupby

field. Whatever you enter in this field becomes the dimensions in the report. Available columns that can be used in the

groupby

are listed in the API documentation. The connector tool tips demonstrate the appropriate format that is required for each configuration step.


 Prerequisites
---------------

To connect to your Sprinklr account and create a DataSet, you must have a Sprinklr client ID and client secret.


 To get access to the API, you must submit an application and be approved by Sprinklr. Steps to complete this application process can be found here:

https://developer.sprinklr.com/apps/myapps

You must also set up a redirect\_uri to


*https://oauth.domo.com/api/data/v1/oauth/providers/sprinklr/exchange*


 when creating the API key.


 Once access is confirmed, you will be able to authenticate using your client ID and client secret.


 Connecting to Your Sprinklr Account
-------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Sprinklr Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


**Credentials Pane**


 This pane contains fields for entering credentials to connect to your Sprinklr account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Environment
  |
 Select the Sprinklr environment you want to pull data from, either production or sandbox.
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

For more information about authentication, see "Prerequisites," above.


 Once you have entered valid Sprinklr credentials, you can use the same account any time you go to create a new Sprinklr DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a primary
 **Report**
 menu in which you select a report type, along with various other menus and fields which may appear depending on the selected report type.


**Menu**
 |
**Description**
 |
| --- | --- |
|
 Report
  |
 Select a Sprinklr report. The following reports are available:


|  |  |
| --- | --- |
|
 Account Insights
  |
 Returns account-level information.
  |
|
 Bootstrap Info
  |
 Returns static data for various resources.
  |
|
 Custom Metric Information
  |
 Returns information about user-defined custom metrics.
  |
|
 Dashboard Column
  |
 Returns details on the requested monitoring dashboard column.
  |
|
 Paid Ad Stat Insights
  |
 Returns statistics about paid ads.
  |
|
 Post Insights
  |
 Returns insights for the published brand posts.


 For a list of acceptable columns for this report, see

https://developer.sprinklr.com/docs/read/developr/objects/reports/Post\_Insights\_Report

.
  |
|
 Profile Conversion Data
  |
 Returns messages in a conversation for a given user ID.
  |
|
 Profile Details
  |
 Returns the profile details of the requested social profile.
  |
|
 Listening Stream
  |
 Returns the message stream associated with each messag.e
  |
|
 Listening Topic Configuration
  |
 Returns the list of all available configured topic groups and topics. The API returns the minimal information on topic groups and topics.
  |
|
 Listening Widget
  |
 Returns information about a single widget. (Widgets are graphs or charts intended to show listening data and analytics.)
  |
|
 Stream Feed
  |
 Returns the messages for the requested
 **Stream ID**
 . Note that since the column can be defined with various filtering options, the API returns only the filtered messages if the column was configured with filters. The Stream Feed API is generic where the column can represent different types of feed including inbox, workflow or outbound messages.
  |

|
|
 Aggregate Function
  |
 Select how you would like the data in the report to be aggregated.
  |
|
 Measurement Names
  |
 Select all the measurements you want to retrieve data for.
  |
|
 Group By Options
  |
 Enter the desired

groupby

options in the format

(columnName,dimensionName,groupType,detail=value)

.


 For example:

("MyAccountId",ACCOUNT\_ID,FIELD),(date,DATE\_HISTOGRAM,interval=1w)

|
|
 Filter Options
  |
 Enter the desired filter options in the format

(dimensionName,filterType,[value1,value2],detail=value).

For example:

(SN\_TYPE,IN,[FACEBOOK]),(CLIENT\_ID,IN,[62]),(ACCOUNT\_ID,IN,[3051,553,565])

|
|
 Measurement Options
  |
 Select measurement options for additional result calculations.
  |
|
 Duration
  |
 Select whether you want to pull data for a specific date or a date range.
  |
|
 Report Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today.
  |
|
 Select Specific Date
  |
 Select the date for the report.
  |
|
 Days Back
  |
 Enter the number of past days that should appear in the report.
  |
|
 Start Date
  |
 Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in
 **End Date**
 .
  |
|
 End Date
  |
 Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in
 **Start Date**
 .
  |
|
 Select Specific Start Date
  |
 Select the first date in your date range.
  |
|
 Select Specific End Date
  |
 Select the second date in your date range.
  |
|
 Days Back to Start From
  |
 Enter the number of the farthest day back that should be represented in the report. Combine with
 **Days Back to End At**
 to create a range of represented days.


 For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Days Back to End At
  |
 Enter the number of the most recent day back that should be represented in the report. Combine with
 **Days Back to Start From**
 to create a range of represented days.


 For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Select Resources
  |
 Select all resources you want to retrieve data for.
  |
|
 Select Reports
  |
 Select all reports you want to retrieve custom metric information for.
  |
|
 Dashboard Name
  |
 Enter the dashboard name (e.g.

AutoDashboard

).
  |
|
 Column Name
  |
 Enter the column name (e.g.

fbinbox

).
  |
|
 Channel Type for the Profile
  |
 Enter the channel type for the profile (e.g.

FACEBOOK

).
  |
|
 Profile ID of Social Channel
  |
 Enter the unique profile ID of the social channel (e.g.

215244391952058

).
  |
|
 Stream
  |
 Enter the ID for the stream you want to retrieve data for.
  |
|
 Widget Type
  |
 Select the type of listening widget you want to retrieve data for (distribution, trend, etc.).
  |
|
 Columns to Expand (Optional)
  |
 Enter a comma-separated list of columns you want to expand into multiple columns. These are columns normally returned as "List" or "Object."
  |
|
 Dimension
  |
 Select the first dimension you want to show in your "Listening Widget" report.
  |
|
 Custom Field Name
  |
 Enter the custom field name for your selected dimension.
  |
|
 Other Dimension
  |
 Select the second dimension you want to show in your "Listening Widget" report.
  |
|
 Subtype
  |
 Select the subtype of users you want to retrieve data for in your "Listening Widget" report.
  |
|
 Expand Lists
  |
 Choose whether you want to expand columns that contain lists. If you choose this option, your DataSet may contain multiple rows for a single post.
  |

The following screenshot shows an example configuration for the "Post Insights" report:


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


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
 tab, using the syntax

(columnName,dimensionName,groupType,detail=value).

For example, if I had the “Client\_ID” field listed in the group, I would use the following syntax for
 **Group By Options**
 :

(Client\_ID,Client\_ID, field)

.


 We also recommend you use a date group by even though the Sprinklr report may not contain that information, so the Domo cards will render the data in the needed format. For example:

(date,DATE\_HISTOGRAM,interval=1h)

or

(POST\_PUBLISHED\_DATE,FIELD)
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

Building Drilldown
--------------------

To create drilldown in your Sprinklr data, design or find the type of drilldown you wish to see in your card and create a new Sprinklr DataSet that shows that data. For the drilldown to work, you will need to pull or rename the same field names in a DataFlow that correspond with the top level Sprinklr data source.


 FAQs
------


#####
 How often can the data be updated?

DataSets should be set to update once a day.

####
 Are there any API limits I should be aware of?

Sprinklr limits calls to Production instances to 5 calls per second and 500 per hour. Calls to Sandbox instances are limited to 2 calls per second and 100 per hour. Note that a single DataSet run may require multiple calls.

