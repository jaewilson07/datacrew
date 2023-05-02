

Intro
-------

Real-Time allows you to monitor activity as it happens on your site or app. The reports are updated continuously and each hit is reported seconds after it occurs.  To learn more about the Google Analytics API, visit their website (

https://developers.google.com/analyt...g/realtime/v3/

).


 You connect to your Google account in the Data Center. This topic discusses the fields and menus that are specific to the Google Analytics Real Time connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in


 Adding a DataSet Using a Data Connector


 .


 Prerequisites
---------------

To connect to the Google Analytics Real Time API and create a DataSet, you must have a Google email address and password.


 Connecting to Your Google Account
-----------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Google Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in


 Adding a DataSet Using a Data Connector


 .

##
 Credentials Pane

The Domo Google Analytics Real Time connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Google accounts in Domo) to open the Google OAuth screen where you can enter your Google email address and password. Once you have entered valid Google credentials, you can use the same account any time you go to create a new Google Analytics Real Time DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Google when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Google.


###
 Details Pane

This pane contains three menus from which you select your profile, metrics, and dimensions.


 Menu
  |
 Description
  |
| --- | --- |
|
 View (Profile)
  |
 Select the profile you want to retrieve data for. Usually each website you maintain has one or more associated profiles.
  |
|
 Dimensions
  |
 Select up to 7 dimensions for your report.
  |
|
 Metrics
  |
 Select at least one metric for your report.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see


 Adding a DataSet Using a Data Connector


 .


 FAQs
------


#####
 What can I do with this connector?


* Display active viewers of a page and create a sense of urgency for users looking at an item with finite inventory.
* Display the most popular content such as the top 10 active pages.
* Create and display a real time dashboard.


#####
 Why does my data appear incorrect?

If your data looks incorrect, check which filters are being applied to the "View" field. It is best to use an unfiltered view when debugging the tracking code implementations. Changes made to views may take up to two hours to reflect in the Google Analytics Realtime connector.

####
 Why am I limited to 7 dimensions?

This is a limitation given by the Google Analytics API. There is no way to add more than 7 dimensions to a report.

####
 What is the difference between this connector and the Google Analytics Connector?

The Google Analytics Real Time connector uses the real-time reporting API and returns real-time data. The Google Analytics connector uses the reporting API and returns historical data.

