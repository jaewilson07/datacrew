

Intro
-------

Cloudability is a cloud cost management platform that improves visibility, optimization, governance and more across cloud environments. Get data about budgets, business mapping, containers, vendors, cost, and estimates for better cloud management and team empowerment with Domo's Cloudability V3 Connector.


 Domo connects directly to Cloudability and delivers the information you need in real-time visualizations that make analysis easier. Combine your Cloudability data with all your information on Domo to ensure you have all the analytical data available at fingertips that you need to drive your strategic growth plans. To learn more about the Cloudability API, visit their page (

http://developers.cloudability.com/

).


 You connect to your Cloudability account in the Data Center. This topic discusses the fields and menus that are specific to the Cloudability V3 Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Cloudability account and create a DataSet, you must have a Cloudability API key. To find your API key, do the following:

. Log into your Cloudability account.
2. Navigate to
 **Account > Preferences**
 .
3. Click
 **Enable Access**
 at the bottom of the page.

You should then be able to find your API key on this page.


 Connecting to Your Cloudability Account
-----------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Cloudability V3 Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Cloudability account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your Cloudability API key. For information about finding your API key, see "Prerequisites," above.
  |


 Once you have entered valid Cloudability credentials, you can use the same account any time you go to create a new Cloudability V3 DataSet. You can manage connector accounts in the
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
 Select the Cloudability V3 report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Anomalies
  |
 This report returns a list of anomalies.
  |
|
 Anomalies Subscriptions
  |
 This report returns a list of anomalies subscriptions.
  |
|
 Budgets
  |
 This report returns a list of budgets.
  |
|
 Budget Subscriptions
  |
 This report returns a list of budget subscriptions.
  |
|
 Business Mappings
  |
 This report returns a list of business mappings.
  |
|
 Containers Allocations
  |
 This report returns a list of containers allocations.
  |
|
 Containers Clusters
  |
 This report returns a list of containers clusters.
  |
|
 Containers Counts
  |
 This report returns a list of containers counts.
  |
|
 Containers Labels
  |
 This report returns a list of containers labels.
  |
|
 Containers Usage
  |
 This report returns a list of containers usage.
  |
|
 Cost Sharing Result Report
  |
 This report returns a list of cost sharing result report.
  |
|
 Estimates
  |
 This report returns a list of estimates.
  |
|
 Forecasts
  |
 This report returns a list of forecasts.
  |
|
 Vendors
  |
 This report returns a list of vendors.
  |
|
 Vendors AWS Accounts
  |
 This report returns a list of vendors having AWS accounts.
  |
|
 Views
  |
 This report returns a list of views
  |

|
|
 Containers Metrics
  |
 Select the metrics to calculate allocations for.
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

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 What version of the Cloudability API does this connector use?

This connector uses version 3 of the Cloudability API (

https://api.cloudability.com/v3

).

###
 What endpoint does each report call in this connector?


|
 Report Name
  |
 Endpoint URL
  |
| --- | --- |
|
 Anomalies
  |
 /anomalies
  |
|
 Anomalies Subscriptions
  |
 /anomalies/subscriptions
  |
|
 Budgets
  |
 /budgets
  |
|
 Budget Subscriptions
  |
 /budget-subscriptions
  |
|
 Business Mappings
  |
 /business-mappings
  |
|
 Containers Allocations
  |
 /containers/allocations
  |
|
 Containers Clusters
  |
 /containers/clusters
  |
|
 Containers Counts
  |
 /containers/counts
  |
|
 Containers Labels
  |
 /containers/labels
  |
|
 Containers Usage
  |
 /containers/usage
  |
|
 Cost Sharing Result Repor
  |
 /internal/reporting/cost-sharing
  |
|
 Estimates
  |
 /estimate
  |
|
 Forecasts
  |
 /forecast
  |
|
 Vendors
  |
 /vendors
  |
|
 Vendors AWS Accounts
  |
 /vendors/AWS/accounts
  |
|
 Views
  |
 /views
  |


####
 What kind of credentials do I need to power up this connector?

You need the API key of your Cloudability account.

###
 Where can I find the API key?

To obtain the API key:

. Log into your Cloudability account.
2. Navigate to Account > Preferences.
3. Click Enable Access at the bottom of the page.


 You should find your API key on this page.


####
 How often can the data be updated?

As often as needed.

###
 Are there any API limits that I need to be aware of?

No

