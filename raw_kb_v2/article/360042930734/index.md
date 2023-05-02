

Intro
-------

Qualtrics software allows users to perform online data collection and analysis. Use Domo's Qualtrics connector to retrieve data about all of your surveys or about responses to a given survey. To learn more about the Qualtrics API, visit their website (

https://api.qualtrics.com

).


 The Qualtrics connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your Qualtrics account in the

Data Center

. This topic discusses the fields and menus that are specific to the Qualtrics connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 This connector is appropriate for the following use cases:
 * Viewing trends in surveys created
* Viewing the current number of active surveys
* Looking for trends in survey responses
* Looking for correlations in survey response percentage and the number of questions per survey
 |
|
**Primary Metrics**
 | * Number of responses per survey
* Number of active surveys
 |
|
**Primary Company Roles**
 |
 Marketing roles
  |
|
**Average Implementation Time**
 |
 ~15 minutes
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 2
  |

Prerequisites
---------------

To connect to your Qualtrics account and create a DataSet, you must have the following:

 Your Qualtrics API token. You can find this logging into your Qualtrics account and navigating to
 **Account Settings > Qualtrics IDs**
 . If you do not have an API token, click
 **Generate API Token**
 .
* Your Qualtrics API hostname.
* The username for your Qualtrics account (only required for 360 surveys and datasets created prior to April 2017)

Connecting to Your Qualtrics Account
--------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Qualtrics Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Qualtrics account and choosing a survey type. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 API Token
  |
 Enter your Qualtrics API token. For more information, see "Prerequisites" above.
  |
|
 API Hostname
  |
 Enter your Qualtrics hostname. This should be in the format https://
 *mycompany*
 .qualtrics.com.
  |
|
 Survey Type
  |
 Select whether the survey you want to retrieve data for is a standard survey or a 360 Survey.
  |
|
 Username
  |
 Enter your Qualtrics username (required
 *only*
 for 360 surveys and datasets created prior to April 2017)
  |

Once you have entered valid Qualtrics credentials, you can use the same account any time you go to create a new Qualtrics DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a primary menu from which you can select a report, along with other menus and fields that may appear depending on the selected report type.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select a Qualtrics report. The following reports are available:


|  |  |
| --- | --- |
|
 Contacts
  |
 Returns a list of contacts for the selected mailing list.
  |
|
 Distributions
  |
 Returns a list of distributions for the selected returned survey.
  |
|
 Survey Questions
  |
 Returns questions for a given survey (can be run using either append or replace mode).
  |
|
 Survey Response Choices
  |
 Returns all possible responses for each survey question.
  |
|
 Survey Responses
  |
 Returns responses for a given survey.
  |
|
 Surveys
  |
 Returns information about all surveys in your account.
  |
|
 Users
  |
 Returns a list of users in your Qualtrics account.
  |
|
 XM Directory Contacts
  |

Returns a list of contacts for the selected mailing lists from an XM Directory (only supported for XM Directory accounts).

|


 |
|
 Mailing List
  |
 Select the mailing list you want to retrieve data for.
  |
|
 Survey Selection
  |
 Select whether you want to retrieve data for all surveys in your account or for a specified survey.
  |
|
 Survey
  |
 Select the returned survey you want to retrieve data for.
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


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

