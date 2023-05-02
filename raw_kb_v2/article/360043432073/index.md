

Intro
-------

Urban Airship helps engage mobile users and build high-value relationships. With the Urban Airship Connector, you'll get device and response data so you can be sure your mobile engagement strategy is on point. To learn more about the Urban Airship API, visit their page (

https://docs.urbanairship.com/api/ua/

).


 You connect to your Urban Airship account in the Data Center. This topic discusses the fields and menus that are specific to the Urban Airship connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Urban Airship account and create a DataSet, you must have the following:

 An Urban Airship app key
* An Urban Airship app master secret
* The URL of your Urban Airship instance (e.g.

https://go.urbanairship.com

)

For information about finding your credentials, visit

https://support.urbanairship.com/hc/...or-App-Secret-

.


 Connecting to Your Urban Airship Account
------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Urban Airship Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Urban Airship account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 App Key
  |
 Enter your Urban Airship app key.
  |
|
 App Master Secret
  |
 Enter your Urban Airship app master secret.
  |
|
 Urban Airship URL
  |
 Enter the URL of your Urban Airship instance (e.g.

https://go.urbanairship.com

).
  |

For information about finding your credentials, visit

https://support.urbanairship.com/hc/...or-App-Secret-

.

Once you have entered valid Urban Airship credentials, you can use the same account any time you go to create a new Urban Airship DataSet. You can manage connector accounts in the
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
 Select the Urban Airship report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Devices Report
  |
 Returns an app’s opted-in and installed device counts broken out by device type.
  |
|
 Push Report
  |
 Returns the number of pushes you have sent within a specified time period.
  |
|
 Response Report
  |
 Returns the number of direct and influenced opens of your app.
  |
|
 Response Listing Report
  |
 Returns listing of all pushes, plus basic response information, in a given time frame.
  |
|
 Apps Open Report
  |
 Returns the number of users who have opened your app within the specified time period.
  |
|
 Time In App Report
  |
 Returns the average amount of time users have spent in your app within the specified time period.
  |
|
 Opt-in Report
  |
 Returns the number of opted-in Push users who have accessed the app within the specified time period.
  |
|
 Opt-Out Report
  |
 Returns number of opted-out Push users who have accessed the app within the specified time period.
  |
|
 Statistics Report
  |
 Returns the hourly counts for pushes sent for this application.
  |
|
 Post Body Report
  |
 Returns all the message and engagement detail for the notification, with iOS and Android results broken out separately.
  |

|
|
 Date From Offset
  |
 Enter the number of days back for which you want to start pulling data.
  |
|
 Date Offset
  |
 Enter the number of days back for which you want to stop pulling data.
  |
|
 Select Granularity
  |
 Select whether you want your report data to be broken down by hour, by day, or by month.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

