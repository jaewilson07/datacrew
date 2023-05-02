

Intro
-------

Google Analytics MCF (Multi-Channel Funnels) is derived from conversion path data, which shows user interactions with various traffic sources over multiple sessions prior to converting. To learn more about the Google Analytics MCF API, visit their page (

https://developers.google.com/analyt...orting/mcf/v3/

).


 You connect to your Google account in the Data Center. This topic discusses the fields and menus that are specific to the Google Analytics connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in


 Adding a DataSet Using a Data Connector


 .


 Prerequisites
---------------

To connect to your Google account and create a Google Analytics MCF DataSet, you must have a Google username and password.


 Connecting to Google Analytics MCF
------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Google Analytics MCF Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in


 Adding a DataSet Using a Data Connector


 .

##
 Credentials Pane

The Domo Google Analytics MCF connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Google Analytics MCF accounts in Domo) to open the Google OAuth screen where you can enter your Google credentials. Once you have entered valid Google credentials, you can use the same account any time you go to create a new Google Analytics MCF DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Google when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Google.


###
 Details Pane

This pane contains a primary
 **Reports**
 menu, along with various other menus for configuring your report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Google Analytics report you want to run. Currently only a single report is available.


|  |  |
| --- | --- |
|
 Custom MCF (Multi-Channel Funnels)
  |
 Lets you build a custom Multi-Channel Funnel report in which you select the dimensions and metrics you want to appear.
  |

|
|
 Dimensions
  |
 Select up to 7 dimensions for your report.
  |
|
 Metrics
  |
 Select at least one metric for your report. You can select up to 10.
  |
|
 View (Profile)
  |
 Select all profiles you want to retrieve data for. Usually each website you maintain has one or more associated profiles.
  |
|
 Sampling Level
  |
 Select the sampling level for the report. (This only applies if the report is forced to use sampled data.)


 For more information about sampling in Google Analytics, see

https://developers.google.com/analyt...nceptsSampling

.
  |
|
 Filters
  |
 Enter any dimension and metric filters you want to apply to your report. Use commas (,) for OR cases and semicolons (;) for AND cases.


 For more information about utilizing Google Analytics filters, see

https://developers.google.com/analyt...erence#filters

.
  |
|
 Start Date
  |
 Enter the start date for your report using the date format

yyyy-MM-dd

. You can also use the relative keywords

today

or

yesterday

or specify offsets such as

yesterday-3

. This would set the start date to three days in the past, starting from yesterday's date.


 If you do not specify a start date, your report uses a default start date of 30 days.
  |
|
 End Date
  |
 Enter the end date for your report using the date format

yyyy-MM-dd

. You can also use the relative keywords

today

or

yesterday

or specify offsets such as

yesterday-3

. This would set the end date to three days in the past, starting from yesterday's date.


 If you do not specify an end date, your report uses a default start date of 30 days.
  |
|
 Backfill
  |
 Enter the number of past days you want to retrieve data for on the first run (based on the
 **End Date**
 value). Subsequent runs do not backfill data.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see


 Adding a DataSet Using a Data Connector


 .


 FAQs
------


#####
 Why do I keep getting the error "Selected dimensions and metrics cannot be queried together"?

Refer to the

Dimensions and Metrics Explorer

to understand what dimensions/metrics can actually be queried together because not all combinations are valid.

####
 Why am I limited to 10 metrics and 7 dimensions?

This is a limitation given by the Google Analytics API. There is no way to add more than 10 metrics and 7 dimensions to a report.

####
 Does the connector support backfilling?

Backfilling is supported in the Google Analytics MCF connector for the first attempt only. When you set the backfill value, the Google Analytics MCF connector pulls the data for the mentioned number of days before the start date, along with the data between the specified start and end dates. Backfill is set to 30 days by default.

