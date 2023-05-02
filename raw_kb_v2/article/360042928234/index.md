


**Important:**
 Montage Talent has changed its name to Modern Hire and so, the API endpoints also changed.


|
 Old Domain Name
  |
 New Domain Name
  |
| --- | --- |
|
 montagetalent.com
  |
 modernhire.com
  |
|
 montagetalent.com.au
  |
 modernhire.com.au
  |
|
 montagetalent.eu
  |
 modernhire.eu
  |

Intro
-------

Montage is an enterprise video and voice interviewing software company. The Domo Montage connector allows you to see your data related to clients, jobs, interviews, candidates and more. To learn more about the Montage API, visit their page (

https://reporting.moderhire.com/

).


 You connect to your Montage account in the Data Center. This topic discusses the fields and menus that are specific to the Montage connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Montage account and create a DataSet, you must have the following:

 The username and password for your Montage account
* Your Montage account API key

For information about obtaining an API key, reach out to your Montage representative.


 Connecting to Your Montage Account
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Montage Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Montage account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter the username for your Montage account.
  |
|
 Password
  |
 Enter the password for your Montage account.
  |
|
 API Key
  |
 Enter your Montage API key.
  |


 Once you have entered valid Montage credentials, you can use the same account any time you go to create a new Montage DataSet. You can manage connector accounts in the
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
 Select the Montage report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Candidates
  |
 Retrieves data about candidates for a given date or date range.
  |
|
 Clients
  |
 Retrieves data about clients.
  |
|
 Jobs
  |
 Retrieves data about jobs for a given date or date range.
  |
|
 Live Interviews
  |
 Retrieves data about live interviews for a given date or date range.
  |
|
 Meetings
  |
 Retrieves data about meetings for a given date or date range.
  |
|
 On Demand Interviews
  |
 Retrieves data about on-demand interviews for a given date or date range.
  |
|
 Users
  |
 Retrieves data about users for a given date or date range.
  |

|
|
 Report Duration
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


 FAQs
------


####
 I'm seeing new Domain values in the Credentials section. Why?

Montage Talent has changed its name to Modern Hire and so, the API endpoints also changed.


 Old Domain Name
  |
 New Domain Name
  |
| --- | --- |
|
 montagetalent.com
  |
 modernhire.com
  |
|
 montagetalent.com.au
  |
 modernhire.com.au
  |
|
 montagetalent.eu
  |
 modernhire.eu
  |


####
 How can I resolve the authentication issue when the old Montage Talent endpoints retire?

To run your old datasets after the Montage Talent endpoints retire, you need to create a new Domo account and provide Montage account credentials. Then, select your newly created Domo account and authenticate with it.

###
 What endpoint is the base URL for this Connector?

The base URL for the Montage Connector is

https://reporting.{

api\_domain}.

###
 Which endpoint(s) does each report call in this connector?


|
 Report Name
  |
 Endpoint URL(s)
  |
| --- | --- |
|
 Candidates
  |
 /v1/Extract/Candidates
  |
|
 Clients
  |
 /v1/Extract/Clients
  |
|
 Jobs
  |
 /v1/Extract/Jobs
  |
|
 Live Interviews
  |
 /v1/Extract/LiveInterviews
  |
|
 Meetings
  |
 /v1/Extract/Meetings
  |
|
 On Demand Interviews
  |
 /v1/Extract/OnDemandInterviews
  |
|
 Users
  |
 /v1/Extract/Users
  |


####
 What kind of credentials do I need to power up this connector?

You need the username, password, and API key of your Montage account.

###
 Can I use the same account to create multiple datasets?

Yes

###
 How often can the data be updated?

Datasets can be updated as often as once an hour.

###
 Are there any API limits that I need to be aware of?

No

