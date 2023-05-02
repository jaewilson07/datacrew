

​Intro
--------

Fitbit produces wireless-enabled wearable devices that measure personal metrics such as the number of steps walked, amount of sleep, food consumed, and so on. The Domo Fitbit Connector integrates Domo with Fitbit to extract data from the Fitbit API. The connector allows you to compile reports about a variety of health-related metrics. To learn more about the Fitbit API, visit their site (

https://dev.fitbit.com/docs/

).


 The Fitbit connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your Fitbit account in the

Data Center

. This topic discusses the fields and menus that are specific to the Fitbit connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 Health tracking, exercise tracking, weight loss, etc.
  |
|
**Primary Metrics**
 | * Activity metrics
* Food consumption
* Badges received
* Amount of sleep
 |
|
**Primary Company Roles**
 | * HR roles
* Anyone who owns a Fitbit and wants to track their health metrics
 |
|
**Average Implementation Time**
 |
 Fewer than 10 minutes
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 2
  |

Prerequisites
---------------

To connect to your Fitbit account and create a DataSet, you must have the email address and password you use to log into your Fitbit account.


 Connecting to Your Fitbit Account
-----------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Fitbit Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Fitbit connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Fitbit accounts in Domo)


 to open the Fitbit OAuth screen you can enter the email address and password you use to log into your Fitbit account. Once you have entered valid Fitbit credentials, you can use the same account any time you go to create a new Fitbit DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a primary
 **Report

s**
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select a Fitbit report. The following reports are available:


|  |  |
| --- | --- |
|
 Activity Goals
  |
 Returns data about the user's daily or weekly activity goals.
  |
|
 Activity Stats
  |
 Returns the user's best and lifetime activity statistics.
  |
|
 API Subscriptions
  |
 Returns a list of the user's subscriptions.
  |
|
 Badges
  |
 Returns a list of all of the user's badges. This includes all badges for the user as seen on the Fitbit website badge locker (both activity and weight related).
  |
|
 Body Measurement (deprecated)
  |
 Returns body measurements such as BMI, waist, neck, etc.
  |
|
 Body Weight Goal
  |
 Returns the user's current body weight goal.
  |
|
 Body Fat Goal
  |
 Returns the user's current body fat goal.
  |
|
 Browse Activities
  |
 Returns data about public Fitbit activities and private activities created by the user.
  |
|
 Blood Pressure (deprecated)
  |
 Returns the user's current blood pressure.
  |
|
 Devices
  |
 Returns a list of all of the user's Fitbit devices.
  |
|
 Fat
  |
 Returns a list of all of the user's body fat log entries for a given day.
  |
|
 Favorite Activities
  |
 Returns a list of the user's favorite activities.
  |
|
 Frequent Activities
  |
 Returns a list of the user's frequently performed activities. A frequent activity record contains the distance and duration values recorded the last time the activity was logged.
  |
|
 Foods
  |
 Returns nutritional information for given foods.
  |
|
 Food Goals
  |
 Returns a list of the user's food goals.
  |
|
 Food Units
  |
 Returns a list of food units.
  |
|
 Frequent Foods
  |
 Returns a list of the user's most frequently eaten foods.
  |
|
 Favorite Foods
  |
 Returns a list of the user's favorite foods.
  |
|
 Friends
  |
 Returns a list of the user's friends.
  |
|
 Friend Invites
  |
 Returns a list of friends this user has invited.
  |
|
 Friend Leaderboard
  |
 Returns the user's friend leaderboard.
  |
|
 Glucose (deprecated)
  |
 Returns the user's current glucose level.
  |
|
 Heart Rate (deprecated)
  |
 Returns the user's current heart rate.
  |
|
 Meals
  |
 Returns a list of meals the user has created in his food log.
  |
|
 Recent Activities
  |
 Returns a list of the user's recent activities. A recent activity record contains the distance and duration values recorded the last time the activity was logged.
  |
|
 Recent Foods
  |
 Returns a list of the user's recently eaten foods.
  |
|
 Search Foods
  |
 Returns information for a specified food.
  |
|
 Sleep
  |
 Returns a list of a user's sleep log entries as well as minute by minute sleep entry data for a given day, including naps.
  |
|
 Total Calories by Day
  |
 Returns the user's total calories by day.
  |
|
 Total Distance by Day
  |
 Returns the total distance the user has traveled by day.
  |
|
 Total Floors by Day
  |
 Returns the user's total floors by day.
  |
|
 User Activities
  |
 Returns a list of the user's activities.
  |
|
 User Activities Steps
  |
 Returns the user's number of steps.
  |
|
 User
  |
 Returns the user's profile information.
  |
|
 Weight
  |
 Returns the user's body weight.
  |
|
 Water
  |
 Returns a list of the user's water log entries for a given day.
  |
|
 Water Goal
  |
 Returns the user's current water goal.
  |


 |
|
 User ID
  |
 Enter the ID of the user you want to retrieve data for.
  |
|
 Date
  |
 Enter the date you want to retrieve data for, in the format

yyyy-MM-dd

. If you do not enter a date, the current date is used.
  |
|
 Activity Goals Frequency
  |
 Select a daily or weekly activity goals frequency.
  |
|
 Number of Days
  |
 Select the number of days of data to retrieve.
  |
|
 Search
  |
 Enter the food you want to retrieve data for.
  |
|
 Period
  |
 Specify whether to retrieve data for a specific date or a given number of past days.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 Do I need a certain kind of account to use this connector?

Any valid Fitbit account should be able to power up the connector.

###
 How do I know my Fitbit credentials are secure?

This connector uses the OAuth login process, so your credentials are never stored anywhere and are secure. You can revoke Domo's access to your account at any time.

###
 How frequently does my data update?

Your data can be retrieved every day. You may be able to retrieve some data for today's date, but the most accurate data will be from the day before or earlier.

###
 Are there any API limits I should be aware of?

Fitbit allows each user to make up to 150 API requests per hour. Note that a single DataSet run may require multiple API calls.


 Troubleshooting
-----------------

Ensure that you have the correct Fitbit username and password.

