

Intro
-------

Citrix GoToMeeting is an online meeting, desktop sharing, and video conferencing software application. To learn more about the GoToMeeting API, visit their page (

https://goto-developer.logmeininc.co...g-api-overview

).


 You connect to your GoToMeeting account in the Data Center. This topic discusses the fields and menus that are specific to the GoToMeeting connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your GoToMeeting account and create a DataSet, you must have the following:

 The email address you used when you signed up for a GoToMeeting account
* Your GoToMeeting account password

You may also sign in with Facebook, Google, or LinkedIn credentials, or a company login if Enterprise Sign-In has been enabled for your organization.


 Connecting to Your GoToMeeting Account
----------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the GoToMeeting Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo GoToMeeting connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing GoToMeeting accounts in Domo) to open the GoToMeeting OAuth screen where you can enter your login credentials. Once you have entered valid credentials, you can use the same account any time you go to create a new GoToMeeting DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into GoToMeeting when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of GoToMeeting.


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
 Select the GoToMeeting report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Groups
  |
 Returns a list of all groups for the account.
  |
|
 Historical Meetings
  |
 Returns a list of historical meetings for the current authenticated organizer.
  |
|
 Organizers
  |
 Returns a list of organizers for the account.
  |
|
 Upcoming Meetings
  |
 Returns upcoming meetings for the current authenticated organizer.
  |

|
|
 Start Days
  |
 Enter the number of past days you want to begin pulling in report data for. Pair with
 **End Days**
 to create a range of days for the report. For example, if you entered

14

for
 **Start Days**
 and

7

for
 **End Days**
 , each time your report ran it would pull data from the past 14 days until the past 7 days.
  |
|
 End Days
  |
 Enter the number of past days you want to stop pulling in report data for. Pair with
 **Start Days**
 to create a range of days for the report. For example, if you entered

14

for
 **Start Days**
 and

7

for
 **End Days**
 , each time your report ran it would pull data from the past 14 days until the past 7 days.
  |
|
 Organizer Email Address
  |
 Enter the organizer email address you want to retrieve data for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

