

Intro
-------

Google Calendar is a time-management and scheduling calendar service that allows users to create and edit events. Use Domo's Google Calendar connector to find and view public calendar events and ACL Feeds. To learn more about the Google Calendar API, visit their page (

https://developers.google.com/google-apps/calendar/v3/reference

).


 You connect to your Google account in the Data Center. This topic discusses the fields and menus that are specific to the Google Calendar connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to a Google service account, you must have a Google service account JSON key. To generate a key, do the following:

. In the GCP Console, open the
 ********IAM & Admin********
 page.
2. Click
 ****************Service accounts****************
 in the left-hand navigation pane.
3. Select your project and click
 ****************Open****************
 .
4. Click
 ****************Create Service Account****************
 .
5. Enter a name and description for the service account.
6. Click
 ****************Create****************
 .
7. Select
 ****************Project Owner****************
 .
8. Click
 ****************Continue****************
 .
9. Click
 ****************Create key****************
 .
10. Select
 ****************JSON****************
 as the key type.
11. Click
 ****************Create****************
 .

A private key will be saved to your computer.


 Connecting to your Google Service account
-------------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Google Calendar Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials pane

This pane contains fields for entering credentials to connect to a Google service account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Service Account Key JSON
  |
 Copy and paste the JSON for your Google service account key. For information about creating a key, see "Prerequisites," above.
  |
|
 Service Account User
  |
 Enter the email address of the user the application is trying to impersonate in the service account flow.
  |

Once you have entered a valid key, you can use the same account any time you go to create a new Google Calendar Service DataSet. You can manage connector accounts in the
 ****************Accounts****************
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details pane

This pane contains two menus—one in which you select a report type and the other in which you select the IDs of calendars you want to import.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Google Calendar report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Calendar ACL
  |
 Returns the rules in the Access Control List for the calendar.
  |
|
 Calendar Events
  |
 Returns events from the selected calendar.
  |
|
 Calendar List
  |
 Returns calendars on the user's calendar list.
  |

|
|
 Calendar IDs
  |
 Select all of the calendars you want to include in your report.
  |


###
 Other panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

