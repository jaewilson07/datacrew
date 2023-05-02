

Intro
-------

*What is happening?**


 At Domo we take pride in providing the industry leading, best time to value solution, with an eco-system of over 500 connectors. We regularly review our connector offerings and make enhancements to provide a more robust experience for our customers.


 On November 26, 2018, to improve the efficiency and extensibility of the Mixpanel connector, we will be updating the parsing logic of the Raw Data report of the Mixpanel connector. This change will only affect DataSets with duplicate (case sensitive) columns. All other DataSets without duplicate columns will not be affected.


**Example:**
 A current DataSet may have the column $brand and $Brand. $Brand would have been considered a duplicate column so '1' was added to the column name, leaving you with $brand and $Brand1. However, with the update the new columns may be $brand\_1 and $Brand, where $brand\_1 is the old $brand column and $Brand is the $Brand1 column.


**When is this hange happening?**


 November 26, 2018


**How does this impact me?**


 You will only be impacted if you have DataSets with duplicate (case sensitive) columns.


**What do I have to do?**

Should you have DataSets with duplicate (case senstive) column, you will have to remap your columns to the new column names.

Mixpanel is a business analytics service that tracks user interactions with web and mobile applications. To learn more about the Mixpanel API, visit their page (

https://mixpanel.com/docs/api-docume...ata-export-api

).


 The Mixpanel connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your Mixpanel account in the Data Center. This topic discusses the fields and menus that are specific to the Mixpanel connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 This connector is appropriate for the following use cases:
 * Tracking how many users start an app and then continue to use it
* Tracking how many users reach each portion of an app
* Tracking how many users use the app for multiple days after first using it.
 |
|
**Primary Metrics**
 | * Number of app users
* Number of uses who continue to use the app
* Number of users who reached specific events in the app
 |
|
**Primary Company Roles**
 |
 Marketing roles
  |
|
**Average Implementation Time**
 |
 ~5 hours
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 6
  |

Prerequisites
---------------

To connect to your Mixpanel account and create a DataSet, you must have the following:

 S

elect the region your server is hosted on
* A Mixpanel API secret

To find these credentials, do the following:

. Log in to Mixpanel.
2. Click your name in the top right corner.
3. Select
 **Account**
 .
4. Click
 **Projects**
 .

The API key and secret are displayed in the window.


 Connecting to Your Mixpanel Account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Mixpanel Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Mixpanel account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Server Region
  |
 Select the region your server is hosted on.
  |
|
 API Secret
  |
 Enter your Mixpanel API secret.
  |


 For information about obtaining these credentials, see "Prerequisites," above.


 Once you have entered valid Mixpanel credentials, you can use the same account any time you go to create a new Mixpanel DataSet. You can manage connector accounts in the
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
 Select the Mixpanel report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Common Events
  |
 Retrieves a list of the most common events for the specified time period.
  |
|
 Engage
  |
 Retrieves information about user engagement.
  |
|
 Engage with Limited Columns
  |
 Return Events with custom filters, and choose which columns to return.
  |
|
 Event Information
  |
 Return the data from a single Event.
  |
|
 Event Property Information
  |
 Return the property information of a single Event.
  |
|
 Funnel Information
  |
 Returns data about a single Funnel.
  |
|
 Funnel List
  |
 Returns the list of Funnels.
  |
|
 JQL Query
  |
 Returns the data by executing the JavaScript Query Language (JQL).

See Mixpanel Documentation for more information.
  |
|
 Raw Data
  |
 Returns the raw data from Mixpanel.
  |
|
 Retention
  |
 Returns customer retention based on Birth.
  |
|
 Segmentation
  |
 Returns a segment of the data from an Event.
  |
|
 Segmentation (average)
  |
 Returns the average segment of the data from an Event.
  |
|
 Segmentation (numeric)
  |
 Returns a particular number of segments of data from an Event.
  |
|
 Segmentation (sum)
  |
 Returns the total number of segments from the data of an Event.
  |
|
 Top Events
  |
 Returns the most used Events.
  |
|
 Top Properties
  |
 Returns the Properties of the most used Events.
  |
|
 Top Property Values
  |
 Returns the top Properties of the most used Events.
  |

|
|
 Type
  |
 Select the type of data to be retrieved, either
 **Average**
 ,
 **General**
 , or
 **Unique**
 .
  |
|
 Where
  |
 Enter an expression to filter returned Events by. For example:


`Where = number(properties["time"])>=2000`
 |
|
 Columns List
  |
 Enter a comma-separated list of columns you want to retrieve.
  |
|
 Event Name
  |
 Select the Event you want to retrieve data for.
  |
|
 Unit
  |
 Select the time unit you want the report data to be broken down by. For example, if you select
 **Month**
 , data will be broken down by month.
  |
|
 Unit Count
  |
 Enter the number of units of data you want to pull.
  |
|
 Funnel Name
  |
 Select the Funnel you want to retrieve data for.
  |
|
 Past Days
  |
 Enter the number of days of data that should appear in the report. This value can be entered as

X

,

XDay

or

XDays

, where

X

is a positive integer. For example:

30Days
  |
|
 Days Back to End
  |
 Enter the number of days back the report data should end at. This value can be entered as

X

,

XDay

or

XDays

, where

X

is a positive integer. For example:

30Days
  |
|
 Backfill
  |
 Backfill is a one-time retrieval of data on the first run. Subsequent runs will not backfill data. Enter the number of days to retrieve data in the past (based on the
 **Past Days**
 value).
  |
|
 On
  |
 Enter the property expression to segment the event on. (For
 **Retention**
 reports, the second event will be segmented.)


 For example:


`ON = properties["mp_country_code"]`
 |
|
 Retention Type
  |
 Select the Retention type, either
 **Compounded**
 or
 **Birth**
 .
  |
|
 Born Event
  |
 Enter the first Event a user must do to be counted in a birth retention cohort. For example:

event integration

.
  |
|
 Born Where
  |
 Enter an expression to filter Born Events by. For example:

properties["signedup"]

|
|
 Retention Event Name
  |
 Enter the name of an Event that will count towards Retention.
  |
|
 Buckets
  |
 Enter the number of Buckets that data will be grouped into.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


 WHERE

clauses can be tricky. When writing

WHERE

clauses, ask yourself the following questions:

 Are all of the words spelled correctly?
* Is the property, event or column being referenced spelled correctly and does it exist?
* Is the Where clause punctuated correctly (examples are in the tooltips)?

Other questions to ask when using this connector include:

 Are the listed columns valid columns that are returned by the "Engage" report?
* Is the value in the
 **Past Days**
 field a valid format?


