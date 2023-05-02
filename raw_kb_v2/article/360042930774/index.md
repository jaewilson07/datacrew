

Intro
-------

SurveyMonkey is a cloud-based company that provides free, customizable surveys, as well as a suite of paid back-end programs that include data analysis, sample selection, bias elimination, and data representation tools. To learn more about the SurveyMonkey API, visit their website. (

https://developer.surveymonkey.com/api/v3/

).


 The SurveyMonkey connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your SurveyMonkey account in the

Data Center

. This topic discusses the fields and menus that are specific to the SurveyMonkey connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 Survey and response analysis
  |
|
**Primary Metrics**
 | * Number of people who responded to a survey
* Response counts
* Number of completed surveys
 |
|
**Primary Company Roles**
 | * Marketing roles
* HR roles
 |
|
**Average Implementation Time**
 |
 1 hour
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 2
  |

Best Practices
----------------

Use this connector to pull historical data, then append new data via a recursive DataFlow. For more information, see

Creating a Recursive/Snapshot Magic ETL DataFlow

.


 Prerequisites
---------------

To connect to your SurveyMonkey account and create a DataSet, you must have the username and password you use to log into your SurveyMonkey account.


 Connecting to Your SurveyMonkey Account
-----------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the SurveyMonkey Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo SurveyMonkey connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing SurveyMonkey accounts in Domo)


 to open the SurveyMonkey OAuth screen where you can enter your SurveyMonkey username and password. Once you have entered valid SurveyMonkey credentials, you can use the same account any time you go to create a new SurveyMonkey DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a primary

*Report**

menu, along with various other menus which may or may not appear depending on the report version you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select a SurveyMonkey report. The following reports are available:


|  |  |
| --- | --- |
|
 All Survey Details
  |
 Returns details about a selected survey for a given time period.
  |
|
 Collector List
  |
 Returns data about collectors for a selected survey for a given time period.
  |
|
 Responses
  |
 Returns response data for a selected survey for a given time period.
  |
|
 Domo Sample Survey Data
  |
 Returns sample survey data.
  |
|
 Survey Details
  |
 Returns details for a selected survey.
  |
|
 Survey List
  |
 Returns a list of completed surveys for a given time period.
  |
|
 User Details
  |
 Returns account information about the authenticated user.
  |


 |
|
 All or New Data
  |
 Select how much data to retrieve. If you select
 **All data**
 , the report retrieves all data within the given
 **Start Days**
 and
 **End Days**
 range. If you select
 **Since last successful run**
 , the report retrieves all data since the last successful update. If this is a new DataSet, the run retrieves data for the number of days specified in
 **Start Days**
 .
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
 , the report would contain data for 10 days ago up until 5 days ago. Use

0

for today.
  |
|
 End Days
  |
 Enter the number of the most recent day back that should be represented in the report. Combine with
 **Start Days**
 to create a range of represented days. For example, if you entered
 `10`
 for
 **Start Days**
 and

5

for
 **End Days**
 , the report would contain data for 10 days ago up until 5 days ago. Use

0

for today.
  |
|
 Survey
  |
 Select the survey for which you want to retrieve data.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

