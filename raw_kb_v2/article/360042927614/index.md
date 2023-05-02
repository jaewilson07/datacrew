

Intro
---------

Webtrends provides web, social and mobile analytics, and a number of other software solutions related to digital marketing. Use Domo’s Webtrends connector to retrieve lists of profiles and spaces, profile reports, and key metrics. To learn more about the Webtrends API, visit their page (

http://help.webtrends.com/en/dxapi/

).


 Ben Green

Sep 29, 2016, 3:07 PM

The Webtrends connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your Webtrends account in the

Data Center

. This topic discusses the fields and menus that are specific to the Webtrends connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Webtrends account and create a DataSet, you must have the following:

 The username and password for your Webtrends account
* Your Webtrends account name

Connecting to Your Webtrends Account
--------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Webtrends Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Webtrends account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Account Name
  |
 Enter your Webtrends account name.
  |
|
 Username
  |
 Enter the username you use to log into your Webtrends account.
  |
|
 Password
  |
 Enter the password you use to log into your Webtrends account.
  |

Once you have entered valid Webtrends credentials, you can use the same account any time you go to create a new Webtrends DataSet. You can manage connector accounts in the

Accounts

tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a primary
 **Report**
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 |
 Select the Webtrends report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Profile Reports
  |
 Returns a list of reports for a specified profile.
  |
|
 Profiles
  |
 Returns a list of profiles that have been defined in the Webtrends web UI.
  |
|
 Profiles Keymetrics
  |
 Returns a list of key metrics for all profiles.
  |
|
 Report Data
  |
 Returns data for a given profile report within a given date range.
  |
|
 Report Definitions
  |
 Returns detail data about a given profile report.
  |
|
 Report Periods
  |
 Returns a list of valid date ranges for a given profile report.
  |
|
 Space Profiles
  |
 Returns a list of profiles that belong to a given space.
  |
|
 Spaces
  |
 Returns a list of spaces in the account.
  |
|
 Spaces Keymetrics
  |
 Returns a list of key metrics data for all spaces in the account.
  |


 |
|
 Profile
  |
 Select the Webtrends profile you want to retrieve data for.
  |
|
 Profile Report
  |
 Select the Webtrends profile report you want to retrieve.
  |
|
 Date Granularity
  |
 Select whether to return data as a single row for the entire date range or as a row of data per day.
  |
|
 Start Days
  |
 Enter the number of the farthest day back that should be represented in the report. Combine with
 **End Days**
 to create a range of represented days. For example, if you entered

10

for
 **Start Days**
 and

5

for
 **End Days**
 , the report would contain data for 10 days ago up until 5 days ago. Enter

0

for today.
  |
|
 End Days
  |
 Enter the number of the most recent day back that should be represented in the report. Combine with
 **Start Days**
 to create a range of represented days. For example, if you entered

10

for
 **Start Days**
 and

5

for
 **End Days**
 , the report would contain data for 10 days ago up until 5 days ago. Enter

0

for today.
  |
|
 Space
  |
 Select the Webtrends space you want to retrieve data for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

