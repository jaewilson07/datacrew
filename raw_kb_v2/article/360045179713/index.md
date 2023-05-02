

Intro
-------

Spreaker provides you with all the tools you need to start a podcast and distribute it on Apple Podcasts, Spotify and more. Use Domo's Spreaker Connector to receive details about episodes, shows, statistics, and more. To learn more about the Spreaker API, visit their page

https://developers.spreaker.com/api/

.


 You connect to your Spreaker account in the Data Center. This topic discusses the fields and menus that are specific to the Spreaker Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Spreaker account and create a DataSet, you must have the following:

 Client ID (The client ID of your OAuth2 application)
* Client Secret (The client secret of your OAuth2 application)

The Client ID and Client Secret are provided to you upon your account creation in Spreaker.


 Connecting to Your Spreaker Account
-------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Spreaker Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most Connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Spreaker Connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Spreaker account in Domo) to open the Spreaker OAuth screen where you can enter your Client ID and Client Secret. Once you have entered valid Spreaker credentials, you can use the same account any time you go to create a new Spreaker DataSet. You can manage Connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Spreaker when you connect in Domo, you are authenticated automatically when you click
 **Add account.**
 If you want to connect to an account that is different from the one you are logged into, you must first log out of Spreaker.


###


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
 Select the Spreaker report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Demographic Statistics
  |
 Returns demographic information about people who listen to a specific show, or shows owned by the authenticated user.
  |
|
 Device Statistics
  |
 Returns information about devices used to listen to a specific show, episode, or the authenticated user.
  |
|
 Episodes
  |
 Returns a list of episodes in a specific show or owned by a specific user.
  |
|
 Followers Statistics
  |
 Returns statistics about the authenticated user's followers.
  |
|
 Geographic Statistics
  |
 Returns geographic information about listeners of a specific show or shows owned by the authenticated user.
  |
|
 Likes Statistics
  |
 Returns the number of times listeners have liked a specific show, episode, or shows owned by the authenticated user.
  |
|
 Operating System Statistics
  |
 Returns statistics about the operating systems used to listen to a specific show, episode, or shows owned by the authenticated user.
  |
|
 Overall Statistics
  |
 Returns general statistics about a specific show, episode, or the authenticated user.
  |
|
 Play Statistics
  |
 Returns statistics about how many times a specific show or episode was played, or how many times shows owned by the authenticated user were played.
  |
|
 Show
  |
 Returns a list of shows owned by a specific user.
  |
|
 Source Statistics (Details)
  |
 Returns detailed information about the sites and apps used to listen to a specific show, episode, or shows owned by the authenticated user.
  |
|
 Source Statistics (Overall)
  |
 Returns general information about the sites and apps used to listen to a specific show, episode, or shows owned by the authenticated user.
  |
|
 User Information
  |
 Returns details about a specific user.
  |


 |
|
 Object Type
  |
 The type of object to report on.
  |
|
 Show ID
  |
 The ID or name of the show to report on. This can be found in the
 ****Shows****
 report or in the URL of the show's Spreaker information.

Example:

https://www.spreaker.com/show/

***this-week-in-tech\_1**** |
|
 Precision
  |
 The number of decimal places that should be returned for percentage values.
  |
|
 Single Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today.
  |
|
 Date Range
  |
 Select the specific or relative date range.
  |
|
 Time Period
  |
 The time period for which you would like to receive data.
  |
|
 Group
  |
 The time period that will be used to aggregate statistics in the report.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

