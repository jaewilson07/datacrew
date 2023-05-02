

Intro
-------

Loggly helps organizations that build and manage cloud-facing applications to solve operational problems faster. Use Domo's Loggly connector to return field names, return the count of a specified field, or perform a Loggly events search. To learn about the Loggly API, visit their website (

https://www.loggly.com/docs/api-overview/

).


 The Loggly connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 There is also a simplified version of this connector. This version does not contain as many configuration options as the advanced version. For information about this version, see

Loggly Connector

.


 You connect to your Loggly account in the

Data Center

. This topic discusses the fields and menus that are specific to the Loggly connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your company's Loggly instance and create a DataSet, you must have the following:

 Your Loggly username and password.
* Your company's Loggly base URL (for example,


 http://mycompany.loggly.com


 ).

Connecting to Your Loggly Account
-----------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Loggly Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your company's Loggly instance. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Username
  |
 Enter your Loggly username.
  |
|
 Password
  |
 Enter your Loggly password.
  |
|
 Base URL
  |
 Enter the URL of your company's Loggly instance. For example:


 http://mycompany.loggly.com


 |

Once you have entered valid Loggly credentials, you can use the same account any time you go to create a new Loggly DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a primary menu in which you select your Loggly report type. Other options may be available depending on the selected report type.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select a Loggly report. The following reports are available:


|  |  |
| --- | --- |
|
 Event Fields
  |
 Returns the names of all event fields. You can filter fields by metadata by entering the desired metadata in the
 **Search Query**
 field.
  |
|
 Search Events
  |
 Returns Loggly events based on a specified search. If you do not specify a query, all events are returned.
  |
|
 Unique Counts
  |
 Returns the count for a specified field.
  |


 |
|
 Search Query
  |
 Enter a search query to filter your data.
  |
|
 Field Name
  |
 Enter a field name to return data specific to that field.
  |
|
 Start Date/Time
  |
 Enter the start date and/or time for your Loggly report data. Pair with
 **End Date/Time**
 to create a range of data. The following formats are available (all are case-insensitive):
 * now
* -Xs

(for seconds)
* -Xm

(for minutes)
* -Xh

(for hours)
* -Xd

(for days)
* -Xw

(for weeks)


 For example:

-31d

(which would return data starting 31 days ago)
  |
|
 End Date/Time
  |
 Enter the end date and/or time for your Loggly report data. Pair with
 **Start Date/Time**
 to create a range of data. The following formats are available (all are case-insensitive):
 * now
* -Xs

(for seconds)
* -Xm

(for minutes)
* -Xh

(for hours)
* -Xd

(for days)
* -Xw

(for weeks)


 For example:

-31d

(which would stop returning data 31 days in the past)
  |
|
 Update Type
  |
 Select whether you want forced or smart updates.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

