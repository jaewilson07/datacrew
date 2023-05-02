

Intro
-------

Silent Passenger Telematics provides the status, performance data and whereabouts of your vehicles so you can maintain a more productive operation. It unifies all your fleet data in one easy-to-manage solution, including driver and vehicle details, incident detection, etc.


 With the Domo Silent Passenger Connector, you can receive reliable data about your divers and travel log details from any asset across your fleet, from vehicles and trailers to heavy equipment and generators. You get the real-time vehicle and asset data that you need to optimize your fleet, in one platform. Get the most reliable fleet tracking experience and vehicle data for better operational decision making. To learn more about the Silent Passenger API, visit their page (

https://api.silentpassenger.com/

).


 The Silent Passenger Connector is a "Cloud App" Connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the Connector page for this and other Cloud App Connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your Silent Passenger account in the Data Center. This topic discusses the fields and menus that are specific to the Silent Passenger Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Silent Passenger account and create a DataSet, you must have the following:

 The username and password associated with your Silent Passenger account.
* The client ID for your Silent Passenger account.

Connecting to Your Silent Passenger Account
---------------------------------------------

This section enumerates the options in the Credentials and Details panes in the Silent Passenger Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Silent Passenger account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Username
  |
 Enter the username you use to log into your Silent Passenger account.
  |
|
 Password
  |
 Enter the username you use to log into your Silent Passenger account.
  |
|
 Client ID
  |
 Enter your Silent Passenger client ID.
  |

Once you have entered valid Silent Passenger credentials, you can use the same account any time you go to create a new Silent Passenger DataSet. You can manage Connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

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
 Select the Silent Passenger report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Driver details
  |
 Retrieves all driver details
  |
|
 Driverlog details
  |
 Retrieves driver log details
  |

|
|
 Driver Detail Report
  |
 Select the driver.
  |
|
 Date Selection
  |
 Select the date format for your data.
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


**Days Back**


 field. Specify either today or 0, yesterday or 1, or today-7 or 7 to get data for 7 days into the past.
  |
|
 Date Range
  |
 Select the specific or relative date range.
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

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 What version of the Silent Passenger API does this Connector use?

This Connector uses version 3 of the Silent Passenger API (

https://api.silentpassenger.com/REST/v3

).

###
 Which endpoint(s) does each report call in this Connector?


|
 Report Name
  |
 Endpoint URL
  |
| --- | --- |
|
 Driver details
  |
 /eld/drivers
  |
|
 Driverlog details
  |
 /eld/driver-logs
  |


####
 What kind of credentials do I need to power up this Connector?

You need the username, password, and client ID associated with your Silent Passenger account.

###
 How often can the data be updated?

As often as needed.

###
 Are there any API limits that I need to be aware of?

No


 Troubleshooting
-----------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.


