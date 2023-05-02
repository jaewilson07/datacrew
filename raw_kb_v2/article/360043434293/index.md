

Intro
-------

PlayVox is a free collaboration platform designed to manage and motivate people at call centers

. Use Domo's PlayVox connector to retrieve user analytics, communication analytics, poll votes, activities, and so on. For more information about integrating PlayVox, visit their website. (

https://docs.playvox.apiary.io/

)

The PlayVox connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.

You connect to your PlayVox account in the Data Center. This topic discusses the fields and menus that are specific to the PlayVox connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
----------------


 To connect to your PlayVox account and create a DataSet, you must have the following:


* Your PlayVox User ID.
* Your PlayVox API Key.

To obtain your User ID and API Key, do the following:

. Go to

https://my.playvox.com/login

and log in using your domain, username, and password.
2. Click on
 **Settings**
 (the Gear icon)
 **> Integrations**
 .
3. Click
 **API**
 .
4. Copy and paste the User ID and API Key into the correct fields in Domo.


 Connecting to Your PlayVox Account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the PlayVox Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your PlayVox account. For information about obtaining these credentials, see "Prerequisites," above.


 The following table describes what is needed for each field:


|

*Field**

|

*Description**

|
| --- | --- |
|

User ID

|

Enter the User ID for your PlayVox account.

|
|

API Key

|

Enter your PlayVox API Key.

|


 Once you have entered valid PlayVox credentials, you can use the same account any time you go to create a new PlayVox DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###

Details Pane


 This pane contains a primary
 **Report**
 menu in which you select a report type, along with other menus which may appear depending on the selected report type.


|

*Menu**

|

*Description**

|
| --- | --- |
|

Report

|

Select a PlayVox report. The following reports are available:

  |  |
| --- | --- |
|

Activity Analytics

|

Retrieves a summary of total posts created by type, post comments, and recognitions.

|
|
 Achieved Recognition Analytics
  |
 Retrieves total achieved recognitions grouped and filtered by the desired fields.
  |
|
 Coaching Analytics
  |
 Retrieves a summary of coaching stats.
  |
|
 Communication Analytics
  |
 Retrieves total messages grouped and filtered by the desired fields.
  |
|
 Get Poll Votes
  |
 Retrieves the total votes and votes by answer associated with a poll activity.
  |
|
 List Activities
  |
 Retrieves a list of activities.
  |
|
 List Activity Comments
  |
 Retrieves a list of comments associated with an activity.
  |
|
 List Activity Likes
  |
 Returns a list of users who liked an activity.
  |
|
 List Comment Likes
  |
 Retrieves a list of users who liked a comment.
  |
|
 Management Users Analytics
  |
 Returns total users grouped by and filtered by the parameters specified in the requests.
  |
|
 Management Users Metrics Analytics
  |
 Returns daily user interaction stats by different PlayVox clients.
  |
|
 Quality Analytics
  |
 Retrieves a summary with total evaluations, achieved evaluations, average score, effectiveness goal, and different error stats.
  |


 |
|

Group By

|
 Lets you group analytics by a field or a combination of fields separated by commas. For example:

created\_at

,

assigned\_to

, etc.


 You can find Group By fields in PlayVox's API documentation at

http://docs.playvox.apiary.io/

. For example, to find the Group By fields for "Coaching," you would do the following:
 1. Go to the PlayVox API at the above URL.
2. Click on the reference link for
 **Coaching**
 .
3. Click the
 **Get coaching stats**
 box.
4. Under the parameters section, expand the
 **group\_by**
 label to see the possible values to use. For "Coaching" this would be

created\_at

,

campaign\_id

,

coach\_id

,

trainee\_id

, and

follow\_up

.
 |
|
 Query
  |
 Lets you add more complex filters.
  |
|
 Enter Poll ID
  |
 Enter the ID of the poll you want to retrieve information for.
  |
|
 Enter Fields
  |
 Enter any fields that should be returned by the report, separated by commas.
  |
|
 Enter Activity ID
  |
 Enter the ID of the activity you want to retrieve information for.
  |
|
 Enter Comment ID
  |
 Enter the ID of the comment you want to retrieve information for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

a DataSet Using a Data Connector

.

