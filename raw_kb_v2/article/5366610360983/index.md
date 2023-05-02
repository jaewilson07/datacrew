

Intro
-------

Sansan is a service that manage business card management service from Japan. To learn more about these APIs, visit

https://docs.ap.sansan.com/en/api/.

Use of the Sansan Open API is subject to

Sansan API Terms of Use.

and use of the API that constitutes acceptance of the API Terms of Service.


 You can connect to your Sansan account in the Data Center. This topic discusses the fields and menus that are specific to the Sansan connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Sansan account and create a DataSet, you must have the following:

 The API Key for your Sansan Account.

To find your API Key, see

Steps for using Sansan APIs

.


 Connecting to Your Sansan Account
-----------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Sansan Connector page. The components of the other panes in this page, Scheduling and Name & Describe Your DataSet, are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


 Credentials Pane
------------------

This pane contains fields for entering credentials to connect to your Sansan account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 API Key
  |
 Enter your Sansan API Key.
  |

For information about obtaining these credentials, see
 **Prerequisites**
 above.


 Once you have entered valid Sansan credentials, you can use the same account any time you go to create a new Sansan DataSet. You can manage connector accounts in the Accounts tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


 Details Pane
--------------

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
 Select the report you want to run. The following reports are available:


|
 Business Cards
  |
 Returns the list of business cards accessible in your account.
  |
|
 Contact
  |
 Returns the list of report by contact type.
  |

|
|
 Updated
  |
 In the
 **Date selection**
 , select whether to use a single day or a date range when filtering the results by item update date.


|
 Single Date
  |
 Select the specific or relative single date.
  |
|
 Date range
  |
 Select the specific or relative date range.
  |
|
 Time period
  |
 Select the time period from
 **Time period**
 dropdown.
  |

|
|
 Updated - Date
  |
 In the
 **Date Type**
 , select from the following whether the report data is for a specific date or for a relative number of days back from today:


|
 Relative
  |
 Enter the number of days back that you would like to get data for in the
 **Days Back**
 field. Specify either today or 0, yesterday or 1, or today-7 or 7 to get data for 7 days into the past.
  |
|
 Specific
  |
 Select the specific date using the date selector in the
 **Date**
 field.
  |

|
|
 Updated - Start Date
  |
 In the
 **Date Type**
 , select the following:


|
 Relative
  |
 Enter the number of days back that you would like to get data from (start day). Combine with the
 **End Date**
 to create a range of represented days.

For example, if you entered 10 for
 **Start Date**
 and 5 for
 **End Date**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Specific
  |
 Select the first date in your date range using the date selector.
  |

|
|
 Updated - End Date
  |
 In the
 **Date Type**
 , select the following:


|
 Relative
  |
 Enter the number of days back that you would like to get data to (end day). Combine with the
 **Start Date**
 to create a range of represented days.

For example, if you entered 10 for
 **Start Date**
 and 5 for
 **End Date**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Specific
  |
 Select the last date in your date range using the date selector.
  |

|
|
 Updated - Time period
  |
 Select the time period for which you would like to receive data.
  |
|
 Contact type
  |
 Select the contact type.


 Following contact types are available:
 * Meeting
* Call
* Email
* BizCard Exchange
* Online Meeting
 |
|
 Category type
  |
 Select whether you want to use filters by
 **Category**
 .
  |

Other Panes
-------------

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

