

Intro
-------

Zoom provides a remote conferencing service that combines video conferencing, online meetings, chat, and mobile collaboration. Using

Domo's

Zoom connector, you can access data associated with your Zoom usage including the number of meetings attended and time spent on zoom calls. As an Admin Zoom user, you can access activity data for all users within your Zoom account. To learn more about the Zoom API, visit their

API Documentation

.


 You connect to your Zoom account in the Data Center. This topic discusses the fields and menus that are specific to the Zoom connector user interface. General information for adding

DataSets

, setting update schedules, and editing

DataSet

information is discussed in

Adding a

DataSet

Using a Data Connector

.


 Prerequisites
---------------

To connect to your Zoom account and create a

DataSet

, you must have the following:

 Your Zoom email address
* Your Zoom password

or connect to Zoom via Google, Facebook, or an

SSO

login.

*Important:**
 Each account can only be used once to authenticate to Zoom.


 Connecting to Your Zoom Account
---------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Zoom Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your

DataSet


 ,**
 are universal across most connector types and are discussed in greater length in

Adding a

DataSet

Using a Data Connector

.

##
 Credentials Pane

The Domo Zoom connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Zoom accounts in Domo) to open the Zoom OAuth screen where you can enter your Zoom email and password. Once you have entered valid credentials, you can use the same account any time you go to create a new Zoom

DataSet

. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Zoom when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Zoom.


###


###
 Details Pane

This pane contains a primary
 **Reports**
 menu, along with various other menus which may or may not appear depending on the report type you select.


**Important:**
 Some reports require you to be an Admin user within Zoom to access the data.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Zoom report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Active Hosts Report
  |
 Retrieve a list of all active or inactive host reports for a specified period of time.
  |
|
 Activity Report
  |
 Retrieve a list of activity logs of users under a Zoom account.
  |
|
 All Meetings Report
  |
 Retrieve reports on a past meeting of the users for a specified period.
  |
|
 All Meetings Participants Report
  |
 Retrieve reports on all participants of a meeting for a specified period.
  |
|
 All Meetings Details Report
  |
 Retrieve reports on all meetings for a specified period.
  |
|
 All Past Meetings Report
  |
 Retrieve reports on all past meetings for a specified period.
  |
|
 Billing Invoice Report
  |
 Get billing invoices reports for a specific billing period.
  |
|
 Billing Report
  |
 Get billing reports of a Zoom account.
  |
|
 Cloud Recordings Report
  |
 Retrieve cloud recordings report for a specified period.
  |
|
 Cloud Recording Usage Report
  |
 Retrieve cloud recording usage report for a specified period.
  |
|
 Daily Usage Report
  |
 Retrieve daily reports to access the account-wide usage of Zoom services for each day in a given month.
  |
|
 Dataflow Daily Usage Report
  |
 Retrieves the daily usage report for a data flow.
  |
|
 Meeting Details Report
  |
 Get a detailed report for a past meeting.
  |
|
 Meeting Participant Report
  |
 Get participant reports for a past meeting.
  |
|
 Meeting Poll Report
  |
 Retrieve a report of poll results for a past meeting.
  |
|
 Meeting Productivity Report
  |
 Retrieves the meeting usage data for a data flow.
  |
|
 Meeting Registrants Report
  |
 Get the registrant's report for a past meeting.
  |
|
 Meeting Report
  |
 Retrieve report on a past meeting for a specified period of time.
  |
|
 Operation Logs Report
  |
 The report allows you to audit admin and user activity, such as adding a new user, changing account settings, and deleting recordings.
  |
|
 Rooms Report
  |
 Retrieve a list of all existing rooms in the Zoom account.
  |
|
 Telephone Report
  |
 Allows you to view who dialed into meetings via phone (Audio Conferencing or SIP Connected Audio) and which number they dialed into and other details.
  |
|
 Users Report
  |
 Retrieve a user report.
  |
|
 Webinar Details Report
  |
 Retrieve a report containing past webinar details.
  |
|
 Webinar Participant Report
  |
 Get a detailed report on each attendee of a webinar.
  |
|
 Webinar Poll Report
  |
 Retrieve a report on past webinar poll.
  |
|
 Webinar Registrants Report
  |
 Retrieve a list of all the users that have registered for a webinar.
  |
|
 Webinar Q&A Report
  |
 The Question & Answer (Q&A) feature for webinars allows attendees to ask questions during the webinar and for the panelists, co-hosts, and hosts to answer their questions.
  |


 |
|
 Billing Id
  |
 Select a Billing Id

*Note:**
 Required for the Billing Invoice Report only


 |
|
 User Id
  |
 Select a User Id

*Note:**
 Required only for the following reports:


* Meeting Details Report
* Meeting Poll Report
* Meeting Productivity Report
* Meeting Report
* Webinar Details Report
* Webinar Participant Report
* Webinar Poll Report
* Webinar Registrant Report
* Webinar Q&A Report

|
|
 Meeting Id
  |
 Select a meeting Id

*Note:**
 Required only for the following reports:


* All Meetings Participants Report
* Meeting Details Report
* Meeting Poll Report
* Meeting Participant Report
* Meeting Registrants Report
* Meeting Productivity Report

|
|
 Webinar Id
  |
 Select a Webinar Id

*Note:**
 Required only for the following reports:


* Webinar Details Report
* Webinar Participant Report
* Webinar Poll Report
* Webinar Registrants Report
* Webinar Q&A Report

|
|
 Active Inactive Host
  |
 Choose the status of the host to filter by


**Note:**
 Required for the Active Hosts Report only


* Active Hosts Report


 |
|
 Date Selection
  |
 Select the date range for the report

*Note:**
 Required for the following reports:


* Active Hosts Report
* Activity Report
* All Meeting Report
* All Meeting Participant Report
* Cloud Recordings
* Cloud Recording Usage Report
* Daily Usage Report
* Dataflow Daily Usage Report
* Meeting Productivity Report
* Meeting Report
* Meeting Registrants Report
* Operation Logs
* Rooms Report
* Telephone Report
* Webinar Registrants Report

|


###


**Note:**
 The time range for the report is limited to a month, and the month should fall within six months period.


**Important:**
 Meetings and webinars are returned only if they have two or more unique participants..


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a

DataSet

Using a Data Connector

.


 FAQs
------


#####
 Why is the Zoom connector failing to pull data for some reports and not others?

Some reports require that you are an Admin user within Zoom. Make sure you are an Admin by logging in and navigating to your profile. If you are an Admin, you will have access to an Admin section in your profile menu.


