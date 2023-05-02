

Intro
-------

Workday Adaptive Planning provides powerful, secure, and collaborative plans for your business agility. Upgrade your planning, modeling, budgeting, and forecasting to make better and faster decisions. With the Workday Adaptive Planning Writeback connector you can export your data from a Domo DataSet to your Workday Adaptive Planning account.

To learn more about the Adaptive Insights API, log into Adaptive Insights and go to

*Product Documents > Integration Guide**

.

You configure your Domo-Workday Adaptive Planning connection in the Data Center. This topic discusses the fields and menus that are specific to the Workday Adaptive Planning Writeback Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this Connector, you must have the following:

 Your Domo Developer account credentials (Client ID and Client Secret)
* Your Workday

Adaptive Planning username and password
* Your

Workday

Adaptive Planning instance.


 Find your instance code in
 **Admin -> System -> General Setup -> Setup Information -> Code**


####
 To obtain your Domo Client ID and Client Secret:


1. Log into the

Domo developer account

.
2. In the top right corner under
 **My Account**
 click
 **New Client**
 .
3. Enter the application name and description.
4. Provide the application scope by selecting the checkboxes for
 **Data**
 and
 **User**
 .
5. Click
 **Create**
 .

Once you have created a client, you can manage the client by clicking on
 **Manage Client**
 .


 Configuring the Connection
----------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Workday Adaptive Planning Writeback Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most Connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##

Credentials Pane


 This pane contains fields for entering credentials to connect to your Domo developer account as well as the Workday Adaptive Planning account where you want your data to be copied to. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Domo Client ID
  |
 Enter your Domo client ID.
  |
|
 Domo Client Secret
  |
 Enter your Domo client secret.
  |
|
 Adaptive Planning Username
  |
 Enter your Adaptive Planning username.
  |
|
 Adaptive Planning Password
  |
 Enter your Adaptive Planning password.
  |
|
 Adaptive Planning Instance
  |
 Enter your Adaptive Planning instance code.

Find your instance code in
 **Admin -> System -> General Setup -> Setup Information -> Code**
 |

For more information about obtaining these credentials, see "Prerequisites," above.

Once you have entered valid credentials, you can use the same account any time you go to set up a new Domo-Workday Adaptive Planning connection. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a number of fields for specifying your data and indicating where it's going.


 Menu
  |
 Description
  |  |
|
 DataSet ID
  |
 Enter the DataSet ID (GUID) for the DataSet you want to copy to

Workday Adaptive Planning

. You can find the ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following

datasources/

. For example, in the URL

https://mycompany.domo.com/datasources/845305d8-da3d-4107-a9d6-13ef3f86d4a4/details/overview

, the DataSet ID is

845305d8-da3d-4107-a9d6-13ef3f86d4a4.

|  |
|
 Data Types
  |
 Select the data type (plan/actuals).
  |  |
|
 Type of data to export
  |
 Specify whether you want to export version or sheet.
  |  |
|
 Delete existing data prior to import?
  |
 Select this checkbox if you want to delete the existing data before the import.
  |  |
|
 Date Selection
  |
 Select date range to delete data.
  |  |
|
 Filter By
  |
 Select the filter by option.
  |  |
|
 Delete Cell Notes?
  |
 Specify whether you want to delete cell notes.
  |  |
|
 Map dataset fields and Adaptive Planning fields
  |
 Select whether to use automated mapping (if your dataset fields match Adaptive Planning Fields) or

to define the mapping manually.


 For manual mapping, match the desired Adaptive Planning fields and dataset columns.


 Generating the mapping automatically only works if the Adaptive Planning Fields and dataset Fields are an exact match.

|  |
|
 Dimensions
  |
 Update dimensions inside Adaptive Planning.
  |  |
|
 Cube Sheet Data
  |
 Write Cube Data inside Adaptive Planning.
  |  |
|
 Modeled Sheet Data
  |
 Write Modeled Data inside Adaptive Planning.
  |  |
|
 Standard Account Data
  |
 Write Standard Account Data inside Adaptive Planning.
  |  |
|
 Date Selection
  |
 Select the date format for your data.
  |  |
|
 Single Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today.
  |  |
|
 Specific Date
  |
 Select the specific date using the date selector.
  |  |
|
 Relative Date
  |
 Enter the number of days back that you would like to get data for in the


**Days Back**


 field. Specify either today or 0, yesterday or 1, or today-7 or 7 to get data for 7 days into the past.
  |  |
|
 Date Range
  |
 Select the specific or relative date range.
  |  |
|
 Start Date - Specific
  |
 Select the first date in your date range using the date selector.
  |  |
|
 End Date - Specific
  |
 Select the last date in your date range using the date selector.
  |  |
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
  |  |
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
  |  |
|
 Time Period
  |
 Specify the time period that you would like to receive data for.
  |  |
|
 Starting Day of the Week
  |
 Select the day you would like your week to start with.
  |  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####

What kind of credentials do I need to power up this Connector?

You need your Domo Developer account credentials (client id and client secret), the username and password associated with your Adaptive Planning account, and your Adaptive Planning instance.

###
 Where can I find my Domo client id and client secret?


1. Log into the

Domo developer account

.
2. In the top right corner under
 **My Account**
 click
 **New Client**
 .
3. Enter the application name and description.
4. Provide the application scope by selecting the checkboxes for
 **Data**
 and
 **User**
 .
5. Click
 **Create**
 .

Once you have created a client, you can manage the client by clicking on
 **Manage Client**
 .

###
 Where can I find my Adaptive Planning instance?

You can find your instance code in
 **Admin -> System -> General Setup -> Setup Information -> Code**
 .

###
 How frequently will my data update?

As often as needed.

