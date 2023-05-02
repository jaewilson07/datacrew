

Intro
-------

Pipedrive is a tool for visually depicting the status of your sales pipeline. Use Domo's Pipedrive connector to compile reports about users, products, activities, deals, assignments, and the like. To learn more about the Pipedrive API, visit their website (

https://developers.pipedrive.com/docs/api/v1/

).


 The Pipedrive connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your Pipedrive account in the

Data Center

. This topic discusses the fields and menus that are specific to the Pipedrive connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 Tracking and monitoring your entire sales pipeline.
  |
|
**Primary Metrics**
 | * Sales
* Leads
* Sales conversion rates
 |
|
**Primary Company Roles**
 |
 Analytics and sales roles
  |
|
**Average Implementation Time**
 |
 Less than 1 hour
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 4
  |

Best Practices
----------------

Using reports that do NOT require specific IDs will generally make life easier.


 Prerequisites
---------------

To connect to your Pipedrive account and create a DataSet, you must have a Pipedrive API key. You can find the API key for your account by doing the following:

. Log into Pipedrive using your username and password.
2. Click your username in the top right corner and select
 **Settings**
 .
3. Select
 **API**
 .

Your API token appears on the screen.


 Connecting to Your Pipedrive Account
--------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Pipedrive Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains a single field in which you can enter your Pipedrive API token. For more information about finding your token, see "Prerequisites," above.


 Once you have entered a valid API token, you can use the same account any time you go to create a new Pipedrive DataSet. You can manage connector accounts in the

*Accounts**

tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a

Report

menu in which you can select a Pipedrive report type. Other menus and fields may appear, depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select a Pipedrive report. The following reports are available:


|  |  |
| --- | --- |
|
 All Activities (New)
  |
 Returns all the activities
  |
|
 All Deal Fields
  |
 Returns data about all fields deals can have.
  |
|
 All Deals
  |
 Returns all the deals
  |
|
 All Organizations
  |
 Returns all the organizations.
  |
|
 All Persons
  |
 Returns all persons
  |
|
 All Products
  |
 Returns data for all the products
  |
|
 All Pipelines
  |
 Returns data for all the pipelines
  |
|
 All Stages
  |
 Returns data for all the stages
  |
|
 All Users
  |
 Returns data about all the users in the company
  |
|
 Deals (Company Productivity)
  |
 Returns data about the deals metrics which is internal to the company.
  |
|
 Get Activity Details
  |
 Returns details of a specific activity.
  |
|
 Get Deal Field
  |
 Returns data about a specific deal field.
  |
|
 Get Deals Conversion Rates in Pipeline
  |
 Returns all stage-to-stage conversion and pipeline-to-close rates for given time period.
  |
|
 Get Deals in Pipeline
  |
 Lists deals in a specific pipeline across all its stages.
  |
|
 Get Pipeline Details
  |
 Returns data about a specific pipeline.
  |

|
|
 Activity Subject
  |
 Enter the subject heading for the activity you want to retrieve information for.
  |
|
 Deal Title
  |
 Enter the title of the deal you want to retrieve information for.
  |
|
 End Days
  |
 Enter the number of the most recent day back that should be represented in the report. Combine with
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

for today.
  |
|
 File Name
  |
 Enter the name of the file you want to retrieve information for.
  |
|
 Filter Name
  |
 Enter the name of the filter you want to retrieve information for.
  |
|
 Goal Name
  |
 Enter the name of the goal you want to retrieve information for.
  |
|
 Note Content
  |
 Enter the content for the note you want to retrieve information for.
  |
|
 Organization Field
  |
 Enter the name of the organization field you want to retrieve information for.
  |
|
 Organization Name
  |
 Enter the name of the organization you want to retrieve information for.
  |
|
 Permission Set Name
  |
 Enter the name of the permission set you want to retrieve information for.
  |
|
 Person Name
  |
 Enter the name of the customer you want to retrieve information for.
  |
|
 Pipeline Name
  |
 Enter the name of the pipeline you want to retrieve information for.
  |
|
 Product Name
  |
 Enter the name of the product you want to retrieve information for.
  |
|
 Push Notification Name
  |
 Enter the name of the push notification you want to receive information for.
  |
|
 Role Name
  |
 Enter the name of the role you want to retrieve information for.
  |
|
 Search Term
  |
 Enter the search term you want to retrieve data for.
  |
|
 Stage Name
  |
 Enter the name of the stage you want to retrieve information for.
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

for today.
  |
|
 Username
  |
 Enter the name of the user you want to retrieve information for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------

Double-check to make sure you are using the right report type.

