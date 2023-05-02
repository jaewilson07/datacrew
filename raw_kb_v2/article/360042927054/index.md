

Intro
---------

Outbrain is an advertising platform whose content marketing module offers to help Internet publishers increase web traffic by presenting them with links to related and interesting articles and other trusted content. The Domo Outbrain connector integrates Domo with Outbrain to extract data from the Outbrain Amplify API. Use Domo's Outbrain connector to retrieve data on marketers, budgets, campaigns, promoted links, and performance reporting. For more information about the Outbrain Amplify API, visit their website. (

http://docs.amplifyv01.apiary.io/#

)


 The Outbrain connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your Outbrain account in the

Data Center

. This topic discusses the fields and menus that are specific to the Outbrain connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 | * Web marketing
* Campaign performance
 |
|
**Primary Metrics**
 | * Campaign clicks
* Promoted links
 |

Prerequisites
---------------

To connect to your Outbrain account and create a DataSet, you must have an Outbrain username and password. You must also be a registered beta user of Outbrain's Amplify API. For more information, see

http://developer.outbrain.com/home-page/amplify-api/apply/

.


 Connecting to Your Outbrain Account
-------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Outbrain Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Outbrain account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Username
  |
 Enter your Outbrain username.
  |
|
 Password
  |
 Enter your Outbrain password.
  |

Once you have entered valid Outbrain credentials, you can use the same account any time you go to create a new Outbrain DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a primary
 **Report**
 menu in which you select a report type. Depending on the report type you select, you may also have the option to specify the date range for the report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select an Outbrain report. The following reports are available:


|  |  |
| --- | --- |
|
 Budget Collection via Marketer
  |
 Returns a collection of all budgets for a given marketer.
  |
|
 Campaigns Collection via Budget
  |
 Returns a collection of all campaigns for a given budget.
  |
|
 Campaign Collections via Marketer
  |
 Returns a collection of all campaigns for a given marketer.
  |
|
 Marketers
  |
 Returns information about all marketers associated with the authenticated user.
  |
|
 Performance for a Campaign per Day
  |
 Returns performance statistics for a given campaign per day.
  |
|
 Performance for a Campaign per Month
  |
 Returns performance statistics for a given campaign per month.
  |
|
 Performance for a Campaign per PromotedLink
  |
 Returns performance statistics for a given campaign per PromotedLink.
  |
|
 Performance for a Marketer per Campaign
  |
 Returns performance statistics for a given marketer per campaign.
  |
|
 Performance for a Marketer per Day
  |
 Returns performance statistics for a given marketer per day.
  |
|
 Performance for a Marketer per Month
  |
 Returns performance statistics for a given marketer per month.
  |
|
 Performance for a Marketer per PromotedLink
  |
 Returns performance statistics for a given marketer per PromotedLink.
  |
|
 Performance for a PromotedLink per Day
  |
 Returns performance statistics for a given PromotedLink per day.
  |
|
 Performance for a PromotedLink per Month
  |
 Returns performance statistics for a given PromotedLink per month.
  |
|
 PromotedLinks Collection via Campaign
  |
 Returns a collection of all PromotedLinks for a given campaign.
  |


 |
|
 Start  Days
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

to get today's data.
  |
|
 End Days
  |
 Enter the number of the most recent day that should be represented in the report. Combine with
 **Start Days**
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

to get today's data.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------

Ensure you are a member of Outbrain's Amplify API beta program (see

Prerequisites

for more information).

