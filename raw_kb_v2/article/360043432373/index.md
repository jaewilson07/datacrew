

Intro
-------

Seismic is sales and marketing enablement software that lets teams find the right sales content and optimize the sales process. From user-centric product design to deep support resources, Seismic’s platform solution is designed from the ground to help clients get results, fast. Use Domo's Seismic connector to combine Seismic data with other key sales and marketing data, and get a real-time view of your data for your entire team. To learn more about Seismic API, visit


 https://developer.seismic.com/seismicsoftware/reference

.

You connect to your Seismic account in the Data Center. This topic discusses the fields and menus that are specific to the Seismic connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Seismic account and create a DataSet, you must have the following:

 Your Seismic tenant
* Your Seismic username and password

To obtain your Seismic tenant, contact your Domo administrator.


 Connecting to Your Seismic Account
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Seismic

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane

The Domo Seismic connector uses OAuth to connect, so there is no need to enter credentials within Domo. After entering the Seismic Tenant, click
 ****Connect****
 (or select
 ****Add Account****
 if you have existing Seismic accounts in Domo) to open the Seismic OAuth screen where you can enter your Seismic credentials. T

he following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Tenant
  |
 Enter your Seismic tenant.
  |

Once you have entered valid Seismic credentials, you can use the same account any time you go to create a new Seismic DataSet. You can manage connector accounts in the
 ****Accounts****
 tab in the Data Center. For more information about this tab, see

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
 Select the Seismic report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Content Property Assignments
  |
 Provides data on content property assignments.
  |
|
 Content Usage History
  |
 Provides data on users usage/deliveries of content sourced from the Library.
  |
|
 Content View History
  |
 Provides data on users views of content.
  |
|
 Library Contents
  |
 Provides a list of content in the ControlCenter Library.
  |
|
 Livesend Link Contents
  |
 Provides a list of content contained in Livesend links.
  |
|
 Livesend Link Members
  |
 Provides a list of email recipients for each Livesend link.
  |
|
 Livesend Links
  |
 Provides a list of all Livesend links created by all users from all applications.
  |
|
 Livesend Page Views
  |
 Provides a timeline of page views for all Livesend content viewed.
  |
|
 Search History
  |
 Provides data on searches in the platform.
  |
|
 Users
  |
 Provides a list of users in the system, including deleted users.
  |
|
 WorkSpace Contents
  |
 Provides a list of content in WorkSpace for all users.
  |
|
 Teamsites
  |
 Provides the full list of teamsites in a tenant, regardless of user access.
  |

|
|
 Duration
  |
 Select whether you want to pull data for a single date (e.g. January 23) or a date range (e.g. January 23-January 31).
  |
|
 Report Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today. If you choose
 ********Specific********
 , the report will always pull data for the selected date whenever it runs. If you choose
 ********Relative********
 , the report will pull data for the entered number of back days whenever it runs. For example, if you selected
 ********Relative********
 and entered 7 for the number of days back, each time the report ran it would pull data for the last 7 days.
  |
|
 Select Specific Date
  |
 Select the report date you want to pull data for using the date selector.
  |
|
 Date Utilization
  |
 Select how to use your selected date(s) to filter your data.
  |
|
 Days Back
  |
 Enter the number of days back that you would like to get data for. Specify either today or 0, yesterday or 1, or today-7 or 7 to get data for 7 days into the past.
  |
|
 Start Date
  |
 Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in
 ********End Date.******** |
|
 End Date
  |
 Specify whether the last date in your date range is a specific or relative date. You select the first date in your range in
 ********Start Date.******** |
|
 Select Specific Start Date
  |
 Select the first date in your date range using the date selector.
  |
|
 Select Specific End Date
  |
 Select the last date in your date range using the date selector.
  |
|
 Days Back to Start From
  |
 Enter the number of days back that you would like to get data from (start day). Combine with
 ********Days Back to End At********
 to create a range of represented days.


 For example, if you entered 10 for
 ********Days Back to Start From********
 and 5 for
 ********Days Back to End At********
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Days Back to End At
  |
 Enter the number of days back that you would like to get data to (end day). Combine with
 ********Days Back to Start From********
 to create a range of represented days.


 For example, if you entered 10 for
 ********Days Back to Start From********
 and 5 for
 ********Days Back to End At********
 , the report would contain data for 10 days ago up until 5 days ago.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

