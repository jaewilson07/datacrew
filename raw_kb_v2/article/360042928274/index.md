

Intro
-------


 SmartRecruiters Talent Acquisition Platform is recruiting software that puts all your recruiting solutions, people, and vendors at your fingertips.

To learn more about the SmartRecruiters API, visit their page (

https://dev.smartrecruiters.com/customer-api/live-docs/customer-api-2/

).


 You connect to your SmartRecruiters account in the Data Center. This topic discusses the fields and menus that are specific to the SmartRecruiters connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your SmartRecruiters account and create a DataSet, you must have a SmartRecruiters API key. For information about obtaining an API key, see the following page:

https://dev.smartrecruiters.com/cust...ation/api-key/

Connecting to Your SmartRecruiters Account
--------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the SmartRecruiters Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your SmartRecruiters account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your SmartRecruiters API key.
  |


 Once you have entered valid SmartRecruiters credentials, you can use the same account any time you go to create a new SmartRecruiters DataSet. You can manage connector accounts in the
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
 Select the SmartRecruiters report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Company Details
  |
 Returns information about your company.
  |
|
 List Applications
  |
 Returns a list of applications.
  |
|
 List Candidate Properties
  |
 Returns candidate properties and their configuration.
  |
|
 List Candidate Source-Types
  |
 Returns a list of candidate source-types with subtypes.
  |
|
 List Departments
  |
 Returns a list of departments.
  |
|
 List Hiring Process
  |
 Returns hiring process information.
  |
|
 List Hiring Team
  |
 Lists the members of your hiring team.
  |
|
 List Interviews
  |
 Returns a list of interviews.
  |
|
 List Job Fields
  |
 Returns a list of job fields.
  |
|
 List Job Positions
  |
 Returns a list of job positions.
  |
|
 List Job Properties
  |
 Returns a list of job properties.
  |
|
 List Jobs
  |
 Returns a list of jobs.
  |
|
 List Offer Properties
  |
 Returns a list of available offer properties.
  |
|
 List Rejection Reasons
  |
 Returns a list of rejection reasons.
  |
|
 List Users
  |
 Returns a list of users in your company.
  |
|
 List Withdrawal Reasons
  |
 Returns a list of withdrawal reasons.
  |
|
 My User Details
  |
 Returns details for your user.
  |
|
 Search Candidates
  |
 Returns candidates for a specific date or number of days back.
  |
|
 Search Jobs
  |
 Returns jobs with a particular status for a specific date or number of days back.
  |
|
 Search Offers
  |
 Returns offers with a particular status for a given timeframe.
  |

|
|
 Posting Status
  |
 Select the posting status you want to pull data for.
  |
|
 Status
  |
 Select the status you want to pull data for.
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

a DataSet Using a Data Connector

.

