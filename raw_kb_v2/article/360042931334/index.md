

Intro
-------

Strava is a website and mobile app used to track athletic activity via GPS. You can use Domo's Strava connector to compile reports about physical activities for yourself and your friends. To learn more about the Strava API, visit their page (

https://strava.github.io/api/

).


 The Strava connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your Strava account in the

Data Center

. This topic discusses the fields and menus that are specific to the Strava connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 Use this connector to measure your activity and progress over time, as well as compare to your Strava friends.
  |
|
**Primary Metrics**
 | * Miles travelled
* Elevation gained
* Activity time
* Max speed
* Average speed
* Segment performance
* Activity log
 |
|
**Primary Company Roles**
 |
 Appropriate for any role
  |
|
**Average Implementation Time**
 |
 Less than 1 (can probably be implemented in a few minutes)
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 2
  |

Best Practices
----------------

Use to create pages of exercise data and track exercise progress over time. This connector also powers the

Strava Quickstart

in the Appstore, and can be used to create relevant cards from varying reports with very little effort.


 Prerequisites
---------------

To connect to your Strava account and create a DataSet, you must have the following:

 The username or email address you use to log into Strava
* The password you use to log into Strava

You can also connect to your Strava account by signing into Facebook and indicating that you want to create a connection to Strava.


 Connecting to Your Strava Account
-----------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Strava Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Strava connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Strava accounts in Domo) to open the Strava OAuth screen where you can enter your Strava credentials or sign into Facebook and create a connection to Strava. Once you have connected to Strava and authorized Domo to connect to Strava, you can use the same account any time you go to create a new Strava DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Strava when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Strava.


###
 Details Pane

This pane contains a primary menu,
 **Report**
 , along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select a Strava report. The following reports are available:


|  |  |
| --- | --- |
|
 Friends
  |
 Returns information about users being followed by the authenticated user.
  |
|
 My Activities
  |
 Returns a list of activities for the authenticated user.
  |
|
 My Segments
  |
 Returns a list of segments (specific sections of road) for the authenticated user.
  |
|
 Friend Activities
  |
 Returns a list of activities for users being followed by the authenticated user.
  |
|
 Segment Leaderboards
  |
 Returns rankings of athletes on specific segments (sections of road).
  |


 |
|
 Time Frame
  |
 Select the time frame for the report. For example, if you selected
 **Month**
 , data for the last month would be imported.
  |
|
 Leaderboard Segments
  |
 Enter a comma-separated list of segments (sections of road) you want to retrieve information for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


1. Ensure that the credentials correspond to the account you want to connect to.
2. Verify that the data is updating as expected.


