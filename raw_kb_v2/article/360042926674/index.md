

Intro
-------

DoubleClick Campaign Manager simplifies advertising campaign management, from media planning to reporting. With the DoubleClick Campaign Manager Connector, you can run reports from the DoubleClick website and better allocate your digital marketing budget for a maximum ROI. To learn more about the DoubleClick Campaign Manager API, visit their page (

https://developers.google.com/double...k-advertisers/

).


 You connect to your DoubleClick Campaign Manager account in the Data Center. This topic discusses the fields and menus that are specific to the DoubleClick Campaign Manager connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your DoubleClick Campaign Manager account and create a DataSet, you must have the following:

 A Google API client ID
* A Google API client secret

You can create a Google API client ID and client secret by doing the following:

. Navigate to the

Google API Console

.
2. Select
 **Credentials**
 then click
 **Create Credentials**
 .
3. Select the OAuth Client ID from the drop-down list.
4. Choose Web application under Application type.
5. Enter the redirect URL:

https://oauth.domo.com/api/data/v1/oauth/providers/doubleclick-cm/exchange

.
6. Click
 **Create**
 .
7. A window will pop up giving you the newly created Client ID and Client Secret.

Before you can authenticate, you must also do the following:

. Enable access to the DCM/DFA Reporting and Trafficking API.
2. Register this redirect URL:

https://oauth.domo.com/api/data/v1/oauth/providers/doubleclick-cm/exchange

.

For more information, visit

https://developers.google.com/double...rs/authorizing

.


 Connecting to Your DoubleClick Campaign Manager Account
---------------------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the DoubleClick Campaign Manager Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your DoubleClick Campaign Manager account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Client ID
  |
 Enter your Google API client ID.
  |
|
 Client Secret
  |
 Enter your Google API client secret.
  |

For more information about obtaining these credentials and enabling authentication, see "Prerequisites," above.

Once you have entered valid DoubleClick Campaign Manager credentials, you can use the same account any time you go to create a new DoubleClick Campaign Manager DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


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
 Select a DoubleClick Campaign Manager report option. Currently only one option is available.


|  |  |
| --- | --- |
|
 Create And Run Report
  |
 Creates and runs a report.
  |
|
 Run Existing Report
  |
 Runs an existing DoubleClick Campaign Manager report.
  |
|
 Run Multiple Reports
  |
 Runs multiple reports.
  |

|
|
 User Profiles
  |
 Select the user profile you want to pull data for.
  |
|
 How would you like to select the DCM report?
  |
 Select how you would like to select the DCM report. Select 'Manual' if your report can't be found in the 'Prepopulated Dropdown.'
  |
|
 Scope
  |
 Select whether you want to pull data for all reports in your account (
 **All**
 ) or only your own reports (
 **Mine**
 ).
  |
|
 Type
  |
 Select the report type.
  |
|
 Report Name
  |
 Enter the report name.
  |
|
 Floodlight Config Id
  |
 Enter the floodlight ID to show the data in this report for. All advertisers associated with this ID will automatically be added.
  |
|
 Select the dimensions
  |
 Select the dimensions.
  |
|
 Select the metric
  |
 Select the metrics.
  |
|
 DCM Reports
  |
 Select the DCM report you want to pull from Google Campaign Manager.
  |
|
 Report Id
  |
 Enter the DCM Report Id you would like to run. This can be used if the report you want can't be found in the DCM Reports dropdown.
  |
|
 Report dates selection
  |
 Select the date to run the report on.
  |
|
 Custom Report Date

|
 Enter the custom date (in YYYY-MM-DD format.)
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

