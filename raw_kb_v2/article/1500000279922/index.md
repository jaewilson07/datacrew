

Intro
-------

Zoom is the leader in modern enterprise video communications, with an easy and reliable cloud platform for video and audio conferencing, chat, and webinars. Zoom provides a remote conferencing service that combines video conferencing, online meetings, chat, and mobile collaboration. Zoom Phone calling features have been designed to give you a flexible, mobile, and powerful cloud phone system. Use Domo's Zoom Phone connector to retrieve your Zoom phone data. To learn more about the Zoom API, visit their

API Documentation

.


 You connect to your Zoom account in the Data Center. This topic discusses the fields and menus that are specific to the Zoom Phone connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Zoom account in order to retrieve your Zoom phone details, you must first select your account type. Select the Account Type as Business and higher if your plan is Business, Education, VIP, API Partner or Enterprise otherwise select Pro.


 Once you select your account type, you need to sign into your Zoom account using your Zoom email address and password. Alternatively, you can connect to Zoom via Google, Facebook, or an SSO login.


 Connecting to Your Zoom Account
---------------------------------

This section enumerates the options in the
 ****Credentials****
 and
 ****Details****
 panes in the Zoom Phone Connector page. The components of the other panes in this page,
 ****Scheduling****
 and
 ****Name & Describe Your DataSet,****
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

In this pane, you need to select your Zoom account type. Select the Account Type as Business and higher if your plan is Business, Education, VIP, API Partner, or Enterprise otherwise select Pro. For more information, see the

Prerequisites

section.


 The Domo Zoom Phone connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 ****Connect****
 (or select
 ****Add Account****
 if you have existing Zoom accounts in Domo) to open the Zoom OAuth screen where you can enter your Zoom email and password. Once you have entered valid credentials, you can use the same account any time you go to create a new Zoom Phone DataSet. You can manage connector accounts in the
 ****Accounts****
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Zoom when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of your Zoom account.


###
 Details Pane

This pane contains a primary
 ****Reports****
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Zoom Phone report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Account Call Logs
  |
 Retrieve a list of active or inactive host report for a specified period of time.
  |
|
 Calling Plans
  |
 List all Zoom phone calling plans that are enabled for a Zoom account.
  |
|
 Phone Number Details
  |
 Retrieve details of a specific phone number in a Zoom account.
  |
|
 Phone Numbers
  |
 List all Zoom phone numbers in a Zoom account.
  |
|
 Phone Users
  |
 List all the users on an account who have been assigned Zoom phone licenses.
  |
|
 User Call Logs
  |
 Retrieve a Zoom phone user's call logs.
  |
|
 User Profile
  |
 Retrieve a user's Zoom phone profile.
  |
|
 User Recordings
  |
 Retrieve a user's Zoom phone recordings.
  |
|
 User Voicemails
  |
 Retrieve a user's Zoom Phone voicemails.
  |

|
|
 Call Log Type
  |
 Choose the call log type.
  |
|
 Phone Number
  |
 Select a phone number.
  |
|
 Phone Number Type
  |
 Choose the phone number type.
  |
|
 Extension Type
  |
 Choose the extension type.
  |
|
 Number Type
  |
 Choose the number type.
  |
|
 Pending Numbers
  |
 Choose whether to include or exclude pending numbers.
  |
|
 Site
  |
 Select a site.
  |
|
 User
  |
 Select a user.
  |
|
 Status
  |
 Choose the status.
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
 ****Days Back****
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
 ****************End Date****************
 to create a range of represented days.


 For example, if you entered 10 for
 ****************Start Date****************
 and 5 for
 ****************End Date****************
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 End Date - Relative
  |
 Enter the number of days back that you would like to get data to (end day). Combine with
 ****************Start Date****************
 to create a range of represented days.


 For example, if you entered 10 for
 ****************Start Date****************
 and 5 for
 ****************End Date****************
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Time Period
  |
 Specify the time period that you would like to receive data for.
  |
|
 Starting Day of the Week
  |
 Select the day you would like your week to start with.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

