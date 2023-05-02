

Intro
-------

Greenhouse Software provides a recruiting software as a service that lets companies create a uniform interview procedure so candidates can be judged based on the same rubric. To learn more about the Greenhouse API, visit their page (

https://www.greenhouse.io/features/use-powerful-apis

).


 You connect to your Greenhouse account in the Data Center. This topic discusses the fields and menus that are specific to the Greenhouse connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Greenhouse account and create a DataSet, you must have a Greenhouse API token. This token is provided by Greenhouse. If you do not have an API token, contact your Greenhouse customer service rep.


 Connecting to Your Greenhouse Account
---------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Greenhouse Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Greenhouse account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Token
  |
 Enter your Greenhouse API token. This token is provided by Greenhouse. If you do not have an API token, contact your Greenhouse customer service rep.
  |


 Once you have entered a valid Greenhouse API token, you can use the same account any time you go to create a new Greenhouse DataSet. You can manage connector accounts in the
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
 Select the Greenhouse report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 All Job Coordinators
  |
 Lists all job coordinators.
  |
|
 All Job Hiring Managers
  |
 Lists all job hiring managers.
  |
|
 All Job Openings
  |
 Lists all job openings.
  |
|
 All Job Recruiters
  |
 Lists all job recruiters.
  |
|
 All Job Sources
  |
 Lists all job sources.
  |
|
 Applications
  |
 Lists all applications.
  |
|
 Candidates
  |
 Lists all candidates for an organization.
  |
|
 Candidate Activity Feed
  |
 Retrieves a specific candidate's activity feed.
  |
|
 Departments
  |
 Lists all departments.
  |
|
 Interviews
  |
 Lists all job interviews.
  |
|
 Job Posts
  |
 Lists all job postings.
  |
|
 Job Posts for a Job
  |
 Lists all job posts for a specified job.
  |
|
 Job Stages
  |
 Lists all job stages.
  |
|
 Jobs
  |
 Lists all jobs.
  |
|
 Offers
  |
 Lists all offers.
  |
|
 Offers for an Application
  |
 Lists all offers for a specific application.
  |
|
 Offices
  |
 Lists all offices.
  |
|
 Rejection Reasons
  |
 Lists all possible reasons for rejection.
  |
|
 Scheduled Interviews
  |
 Lists all scheduled interviews for a specific application.
  |
|
 Scorecard Attributes
  |
 Lists all attributes of available scorecards.
  |
|
 Scorecard Questions
  |
 Lists all scorecard questions.
  |
|
 Scorecards for Application
  |
 Lists all scorecards for a specific application.
  |
|
 Sources
  |
 Lists all sources.
  |
|
 Users
  |
 Lists all users.
  |

|
|
 Application Updated After
  |
 Select the date to filter results by. The report will return only those applications updated
 *after*
 the selected date.
  |
|
 Candidate ID
  |
 Enter the ID of the candidate you want to retrieve information for.
  |
|
 Interview Updated After
  |
 Select the date to filter results by. The report will return only those interviews updated
 *after*
 the selected date.
  |
|
 Job ID
  |
 Enter the ID of the job you want to retrieve information for.
  |
|
 Application ID
  |
 Enter the ID of the application you want to retrieve information for.
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

