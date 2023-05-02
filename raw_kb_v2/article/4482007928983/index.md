

Intro
-------

Talkdesk is a cloud-based contact center and artificial intelligence software provider. With its AI-driven platform, it is a dedicated call center solution. It provides all the tools to manage call center agents either virtually or onsite. Talkdesk is a global customer experience leader for customer-obsessed companies.


 By combining your global customer experience metrics with Domo, you can create powerful visualizations and reports to analyze the call details. Combine your Talkdesk data with all your information on Domo and plan for future business demands. Upgrade your global customer experience by monitoring and analyzing the call details, survey logs, evaluation analysis, ring attempts and much more. To learn more about the Talkdesk API, visit their page (

https://support.talkdesk.com/hc/en-us/articles/115001284103-Talkdesk-APIs

).


 The Talkdesk Connector is a "Cloud App" Connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the Connector page for this and other Cloud App Connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your Talkdesk account in the Data Center. This topic discusses the fields and menus that are specific to the Talkdesk Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Talkdesk account and create a DataSet, you must have the following:

 Your Talkdesk account name
* The client ID and client secret provided by Talkdesk

Connecting to Your Talkdesk Account
-------------------------------------

This section enumerates the options in the Credentials and Details panes in the Talkdesk Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Talkdesk account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Talkdesk Account Name
  |
 Enter your Talkdesk account name.
  |
|
 Client ID
  |
 Enter the client ID provided by Talkdesk.
  |
|
 Client Secret
  |
 Enter the client secret provided by Talkdesk.
  |
|
 Region
  |
 Select the region for your Talkdesk account.
  |

Once you have entered valid Talkdesk credentials, you can use the same account any time you go to create a new Talkdesk DataSet. You can manage Connector accounts in the
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


 Report
  |
 Description
  |
| --- | --- |
|
 Calls
  |
 Provides a raw log of calls, call metadata, and call recordings for voice interactions.
  |
|
 Contacts
  |
 Provides details on each contact within an interaction.
  |
|
 Feedback
  |
 Provides a raw log of survey responses, channels and interactions associated with the responses and other response metadata.
  |
|
 Outbound Dialer Calls
  |
 Provides metrics related to the calls dialed via a campaign of the Outbound Dialer Calls.
  |
|
 QM Evaluation Analysis
  |
 Provides all the information collected during an interaction evaluation.
  |
|
 Ring Attempts
  |
 Provides detailed information regarding ring attempts.
  |
|
 Studio Flow Execution
  |
 Contains, at the step level, all the information related to the interaction.
  |
|
 User Status
  |
 Provides a raw log of agent status changes occurring in Talkdesk.
  |

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


**Days Back**


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
 ********End Date********
 to create a range of represented days.


 For example, if you entered 10 for
 ********Start Date********
 and 5 for
 ********End Date********
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 End Date - Relative
  |
 Enter the number of days back that you would like to get data to (end day). Combine with
 ********Start Date********
 to create a range of represented days.


 For example, if you entered 10 for
 ********Start Date********
 and 5 for
 ********End Date********
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
 What kind of credentials do I need to power up this Connector?

You need your Talkdesk account name, and the client ID and client secret provided by Talkdesk.

###
 Are there any API limits I should be aware of?

No

###
 Can I use the same account to create multiple datasets?

Yes


 Troubleshooting
-----------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.


