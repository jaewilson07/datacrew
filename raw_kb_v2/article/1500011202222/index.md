

Intro
-------

Google Ads, formerly Google Adwords, is an online advertising service where advertisers pay to display brief ads to web users. Use the Google Ads connector to retrieve performance reports about your accounts, ads, campaigns, budgets, and many more for the specified manager account. For more information about the Ads API, see

https://developers.google.com/google-ads/api/docs/start

.


 This topic discusses the fields and menus that are specific to the Google Ads OAuth connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Google Ads data using this connector, you must have the following:

 The ID of the manager account you want to retrieve data for.
* Your Google credentials (email address and password).

Connecting to Your

Google Ads

Account
---------------------------------------------

This section enumerates the options in the Credentials and Details panes in the

Google Ads

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

Google Ads

account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Manager Account Customer ID
  |
 Enter the client customer ID of the manager account you want to retrieve data.

The client customer ID is the account number of the Google Ads client account you want to manage with the Ads API, usually in the form 123-456-7890.

|


 Once you have entered a valid Manager Account Customer ID, c


 lick

*Connect**

(or select

*Add Account**

if you have existing Google Ads accounts in Domo) to open the Google OAuth screen where you can select the account you want to connect to. After selecting an account, specify the password for that account. After you have entered a valid password, you can use the same account in Domo any time you create a Google Ads DataSet.

For more information about this tab, see

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

Select the Google Ads report you want to run. The following reports are available:

  |  |
| --- | --- |
|
 Customer
  |
 Returns customer details.
  |
|
 Ad
  |
 Returns Ad details.
  |
|
 Ad Group
  |
 Returns Ad group details.
  |
|
 Age Range View
  |
 Returns age range view details.
  |
|
 Campaign Budget
  |
 Returns campaign budget details.
  |
|
 Keywords
  |
 Returns keywords details.
  |
|
 Campaign
  |
 Returns campaign details.
  |
|
 Managed Placement View
  |
 Returns placement view details.
  |
|
 Search Term View
  |
 Returns search term view details.
  |
|
 Geographic View
  |
 Returns geographic view details.
  |
|
 Gender View
  |
 Returns gender view details.
  |
|
 Dynamic Search Ads Search Term View
  |
 Returns dynamic search ads search term details.
  |
|
 Shopping Performance View
  |
 Returns shopping performance details.
  |
|
 Product Group View
  |
 Returns product group details.
  |
|
 Bidding Strategy
  |
 Returns bidding strategy details.
  |
|
 Campaign Audience View
  |
 Returns campaign audience view details.
  |
|
 Ad Group Audience View
  |
 Returns Ad group audience view details.
  |

|
|
 Customer Selection
  |
 Specify whether you want to retrieve data for specific clients or all clients available for the mentioned manager account.
  |
|
 Customer IDs
  |
 Enter a comma-separated list of the Customer ID you want to retrieve data for. Customer IDs must be for your Google Ads advertiser accounts not for a manager account.
  |
|
 Metrics
  |
 Select the metrics you want to retrieve.
  |
|
 Segments
  |
 Select the segments to breakdown the data.
  |
|
 Attributes
  |
 Select the attributes.
  |
|
 Date Type
  |
 Specify whether you want to retrieve the data for a specific date or a date range.
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
 ********Days Back********
 field. Specify either today or 0, yesterday or 1, or today-7 or 7 to get data for 7 days into the past.
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
 ********************************End Date********************************
 to create a range of represented days.


 For example, if you entered 10 for
 ********************************Start Date********************************
 and 5 for
 ********************************End Date********************************
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 End Date - Relative
  |
 Enter the number of days back that you would like to get data to (end day). Combine with
 ********************************Start Date********************************
 to create a range of represented days.


 For example, if you entered 10 for
 ********************************Start Date********************************
 and 5 for
 ********************************End Date********************************
 , the report would contain data for 10 days ago up until 5 days ago.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

