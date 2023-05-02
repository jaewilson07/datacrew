

Intro
-------

DomoStats gives you the freedom to explore how your team is using Domo. Because DomoStats is powered by a live Domo DataSet with no configuration, you can easily build cards, alerts, and workflows around the metrics you want to see as well as use the pre-built dashboard.


 This DomoStats app provides key insights into your organization's DataSets and DataFlows. Make sure your data is always fresh and contains the most relevant and up-to-date information. With this DomoStat's app, watch your DataSet and DataFlow success rates, get notified when DataSets fail to run, and see which DataSets are orphaned, duplicated, or broken to keep your Domo instance clean.

####


**Video - DomoStats DataSets and DataFlows Overview**

Requirements
--------------

You must have Admin level access to download from the Appstore.


 Using the DomoStats App
-------------------------

You can use the pre-built dashboard or build any of your own content using the DomoStats DataSets in the Data Center. When you first download the app, a new page is created titled DomoStats - DataSets and DataFlows. You'll need to power up the dashboard with the following steps:

. Navigate to the
 ****DomoStats - DataSets and DataFlows****
 page.
2. Select
 ****Connect Data****
 .
3. In the drop-down, select
 ****Connect****
 to connect the page to the DomoStats DataSets or select
 ****Assign****
 if you want to assign another Domo user to set up the data.
4. In the last window, select
 **Connect**
 .

The Dashboard
---------------


###
 Data

The following data is included in the download of the DomoStats - DataSets and DataFlows app and can be found in the Data Center as a 'DomoStats' type DataSet.


 DataFlows include:

 DomoStats - DataSets & DataFlows with Owners v3
* DomoStats - DataSet and DataFlow History with DataSet Names and Owners v3
* DomoStats - DataSets with Owners v3


**Note:**
 All DataSets powering the app run once a day. Runtime is every 24 hours from when the app is first deployed. While the run frequency cannot be changed, you can edit the runtime in the DataSet settings. For more information on how to schedule DataSets, see

DataSet Scheduling

.


###
 Cards

The following cards are included in the pre-built dashboard.

  |  |  |
| --- | --- | --- |
| **Collection**  | **Card**  | **Description**  |
|
 Data Quality
  |
 Avg Object Health
  |
 Shows the average object health score across your Domo instance.
  |
|
 Unhealthy Objects
  |
 Displays DataSets below 100% health. Each DataSet begins with a score of 100%. For each point in each health category, the DataSet's health score is reduced by 10%.

*Note:**
 For more information on the point system for this card, please refer to the card description once downloaded.


 |
|
 Broken Objects
  |
 Displays the number of DataSets and DataFlows with a broken or not broken classification when last run.
  |
|
 Behind Schedule Objects
  |
 The number of DataSets and DataFlows that did not update within the scheduled window. These objects may appear to be running successfully, but in reality, they are behind schedule and need attention.
  |
|
 Orphaned Objects
  |
 The number of DataSets and DataFlows that have an owner assigned vs those that do not have an owner assigned.
  |
|
 Duplicate Names
  |
 The number of DataSets and DataFlows that share duplicate names in your instance.
  |
|
 Data Availability
  |
 Priority Broken DataSets
  |
 Displays DataSets that threw an "ERROR" or "INVALID" status when last run sorted by the number of cards the DataSet is powering.
  |
|
 % Broken by Owner
  |
 Lists the DataSet and DataFlow owners with the percentage of their total DataSets that have a current "ERROR", "INVALID", "NOT\_RUNNABLE", "CANCELLED", "FAILED", or "REJECTED" status.
  |
|
 Broken Objects by Schedule Type
  |
 Displays the number of DataSets and DataFlows for a given schedule type as well as the percentage of those objects that created an "ERROR", "INVALID", "NOT\_RUNNABLE", "CANCELLED", "FAILED", or "REJECTED" status when last run.
  |
|
 Broken DataSets by Connector Type
  |
 Displays DataSets that generated an "ERROR", "INVALID", "NOT\_RUNNABLE", "CANCELLED", "FAILED", or "REJECTED" status when they last tried to run grouped by DataSet connector type.
  |
|
 Broken Obejcts Trend
  |
 Shows DataSets or DataFlows that are reporting an "ERROR", "INVALID", "NOT\_RUNNABLE", "CANCELLED", "FAILED", or "REJECTED" status grouped by their scheduled run type and plotted by the last run date.
  |
|
 Data Updates
  |
 Scheduled Updates
  |
 Shows the times of day that DataSets and DataFlows have initiated updates over the last 7 days. The date range may need to be adjusted in Analyzer to include all of the data for the current day.
  |
|
 Update Trends
  |
 The percentage of DataSet and DataFlow updates that were successful over time.
  |
|
 Update Details
  |
 Provides the history of update details for all DataSets and DataFlows in the selected date range sorted by Start Time.
  |
|
 Connector Run Times
  |
 Displays the range of run times (in minutes) for DataSets of each data import type. Includes a breakdown of the fastest, slowest, and median run times for all DataSets of each import type.
  |
|
 Object Run Times
  |
 Displays the number of minutes used to run each DataSet and DataFlow. Includes a breakdown of the fastest, slowest, and median run times for each DataSet and DataFlow.
  |
|
 Data Ownership and Expertise
  |
 Inactive User Ownership
  |
 The number of objects owned by Domo users that have not logged in for more than 30 days.
  |
|
 Top 20 Object Owners
  |
 Shows the number of DataSets and DataFlows owned by each of the top 20 DataSet owners.
  |
|
 Owner by Connector Type
  |
 The number of DataSets each user has created by DataSet connector type.
  |
|
 Ownership by Department
  |
 The number of objects owned by each department.
  |
|
 Department by Connector Type
  |
 The number of DataSets each department has created by DataSet type.
  |
|
 Ownership by Role
  |
 Shows the number of objects owned by users of each role.
  |
|
 Role by Connector Type
  |
 The number of DataSets each role has created by connector type.
  |
|
 Objects and Owners
  |
 Shows the details of all DataSets and DataFlows stored in the instance.
  |
|
 Data Creation
  |
 DataSet Creation Trend
  |
 The number of DataSets created in each department by day.
  |
|
 Top Connectors
  |
 The number of existing objects by connector import type.
  |
|
 DataSets Running Total
  |
 Displays a running total of all DataSets created in your instance.
  |
|
 DataSet Rows Updated
  |
 Shows the number of rows updated on DataSets over time.
  |
|
 Creators This Week
  |
 The number of DataSets of each type that have been created per DataSet owner this week.
  |
|
 New Department DataSets
  |
 Shows the number of DataSets of each type that have been created by each department this week.
  |


