

Intro
-------

When you select
 **Activity Logs**
 in the tab menu in Admin Settings, you can view audit logs for all users in this instance. You can quickly filter the logs using any of four commonly used Quick Filters. Or, if you want to dig deeper into the logs to single out a specific log or pinpoint a small range of logs, you can create customized combinations of filters. You can also refresh the logs appearing in the tab or export the logs as a CSV file.


 You can only view activity logs if you have an "Admin" default security role or a custom role with "View Activity Logs" enabled. For more information about default roles, see

Managing Custom Roles

.

This article provides information about viewing Activity Logs in the following topics:

 Filtering the logs
* Refreshing the logs
* Exporting to CSV
* Tracked events

Filtering the Logs
----------------------

There are dozens of filter options available in the
 **Activity Logs**
 screen; fortunately you can apply the most commonly used filters with one click of your mouse. These "quick filters" are found in the top right of the
 **Activity Logs**
 screen and are as follows:


 Filter
  |
 Description
  |
| --- | --- |
|
 Cards Created
  |
 All cards created by users in this instance in the past week, together with the time of creation, the user, the name of the card, and the description of the action.
  |
|
 Logins
  |
 All logins by users in this instance in the past week, together with the time of login, the user, and his/her IP address and device name.
  |
|
 Card Views
  |
 All card views by users in this instance in the past week, together with the time of viewing, the user, the name of the card, and the description of the action.
  |
|
 Page Views
  |
 All page views by users in this instance in the past week, together with the time of viewing, the user, the page name, and the description of the action.
  |

You can also set custom filters. These can be used singly or in combinations with each other or with the quick filters described above. These custom filters appear as buttons above the log lists and are as follows:


 Filter
  |
 Description
  |
| --- | --- |
|
 Time
  |
 Lets you filter data using three predefined time filters (past 24 hours, past 7 days, or past 180 days) or set a custom date and time range.
  |
|
 Person
  |
 Lets you filter data for a specified user in your Domo instance.
  |
|
 Event
  |
 Lets you filter data for a selected Domo event. These are organized by Domo component; click any component in the list to drill down to events associated with that component. For instance, if you were to click
 **Card**
 in the list, a menu of selectable card-related events would open, such as
 **Added**
 ,
 **Favorited**
 , etc. Selecting an event would then filter the data to show only rows for that event.
  |
|
 Object
  |
 Lets you filter data for a selected Domo object. These are organized by Domo component; click any component in the list to drill down to objects associated with that component. For instance, if you were to click
 **PDP Policy**
 in the list, a menu of selectable PDP policies would open. Selecting a policy would then filter the data to show only rows for that policy.
  |

Refreshing the Logs
-----------------------

You can refresh the logs in the
 **User Logs**
 tab by clicking the
 **Refresh**
 button in the top right corner of the tab. When you do this, any new logs since you opened the tab appear.


 Exporting to CSV
--------------------

You can export all of the logs in your Domo instance to a CSV file by clicking the
 **Export CSV**
 button in the top right corner of the tab. This download process may take a few seconds to several minutes, depending on the number of logs in your instance.


 Tracked Events
------------------


**Note:**
 If images on pages (including background images) are stored through the API, "Downloaded a file version" will appear under the Event category.

This section provides a list of all Domo objects and their associated actions that are tracked in the activity logs.


 Domo Object
  |
 Action(s) Tracked
  |
| --- | --- |
|
 Access Token
  | * Assigned
* Created
* Deleted
* Unassigned
 |
|
 Activity Log
  | * Viewed
 |
|
 Activity Log CSV
  | * Downloaded
 |
|
 ADC Filter
  | * Added
 |
|
 ADC Policy
  | * Added
* Created
* Deleted
* Removed
* Updated
 |
|
 Agent
  | * Created
* Updated
 |
|
 Alert
  | * Added
* Created
* Deleted
* Removed
* Updated
 |
|
 Alert Subscriber
  | * Deleted
 |
|
 App
  | * Connected
* Deployed
* Resubmitted
* Submitted
* Undeployed
 |
|
 Authority
  | * Added
* Deleted
 |
|
 Beast Mode Formula
  | * Created
* Deleted
* Renamed
* Updated
 |
|
 Card
  | * Access Changed
* Access Granted
* Access Revoked
* Access Granted
* Access Revoked
* Added
* Created
* Deleted
* Duplicated
* Emailed
* Embed Viewed
* Exported
* Favorited
* Linked
* Manually Sent
* Owner Changed
* Public Embed Setting Changed
* Removed
* Shared
* Unshared
* Updated
* Viewed
 |
|
 Channel (Buzz)
  | * Access Changed
* Created
* Deleted
* Invited To
* Permission Granted
* Permission Revoked
 |
|
 Connector
  | * Created
 |
|
 Container View (Cards in Scheduled Reports)
  | * Created
* Updated
 |
|
 DataFlow Type
  | * Created
* Deleted
* Killed
* Manually Ran
* Owner Changed
* Restored
* Updated
 |
|
 DataSet
  | * Connected
 |
|
 Data Lineage
  | * Viewed
 |
|
 DataSet Schedule
  | * Updated
 |
|
 Datasource
  | * Access Changed
* Added
* Configuration Change
* Connected
* Created
* Decrypt Data
* Deleted
* Disabled PDP
* Enabled PDP
* Exported
* Manually Run
* Name Changed
* Owner Changed
* Updated
 |
|
 Decrypt Data
  | * Decrypt Filed
* Decrypt Locked Out
 |
|
 Direct Chat
  | * Created
 |
|
 Drill View
  | * Add Drill View
 |
|
 Easy Invite Link
  | * Created
 |
|
 Email Address
  | * Created
 |
|
 File
  | * Created
* Deleted
 |
|
 Group
  | * Access Changed
* Access Granted
* Access Revoked
* Added
* Created
* Deleted
* Permission Granted
* Permission Revoked
* Updated
 |
|
 Group Chat
  | * Access Changed
* Created
* Permission Granted
* Permission Revoked
 |
|
 Huddle
  | * Access Changed
* Created
* Deleted
* Permission Granted
* Permission Revoked
 |
|
 Job (Workbench)
  | * Created
* Deleted
* Updated
 |
|
 License Page
  | * Viewed
 |
|
 Name
  | * Name Changed
 |
|
 Page
  | * Access Changed
* Access Granted
* Access Revoked
* Assigned
* Created
* Deleted
* Duplicated
* Locked
* Manually Sent
* Moved
* Owner Changed
* Promoted
* Reordered Cards On
* Shared
* Unlocked
* Unshared
* Updated
* Viewed
 |
|
 Page Cards Owner
  | * Updated
 |
|
 Page Collection
  | * Created
* Deleted
* Reordered Cards On
* Updated
 |
|
 Project
  | * Added
* Created
* Deleted
* Moved To
* Removed From
* Updated
 |
|
 Project List
  | * Archived
* Created
* Moved To
* Removed From
* Updated
 |
|
 Project Task
  | * Archived
* Assigned
* Created
* Liked
* Moved To
* Removed From
* Unarchived
* Unliked
* Updated
 |
|
 Project Task Attachment
  | * Created
* Deleted
 |
|
 Project Task Owner
  | * Created
 |
|
 Publication (Slideshow)
  | * Updated
 |
|
 Publication Group
  | * Updated
 |
|
 Public URL
  | * Public Embed Settings Changed
 |
|
 Report
  | * Created
* Deleted
* Unsubscribed
* Updated
 |
|
 Report Schedule
  | * Created
* Deleted
* Emailed
* Email Failure
* Updated
 |
|
 Role
  | * Added
* Created
* Deleted
* Updated
 |
|
 Schedule
  | * Deleted
* Updated
 |
|
 SSO Page
  | * Viewed
 |
|
 User
  | * Access Changed
* Access Granted
* Access Revoked
* Account Locked
* Added
* Added Direct Report
* Added Reports To
* Add Drill View
* Apply
* Approved
* Archived
* Assigned
* Cancelled
* Changed Direct Sign-On Note
* Changed Direct Sign-On State
* Changed Role
* Configuration Change
* Connected
* Created
* Decrypt Data
* Delegated
* Deleted
* Denied
* Deployed
* Disabled PDP
* Downloaded
* Duplicated
* Edited
* Emailed
* Email Failure
* Embed Viewed
* Enabled PDP
* Exported
* Exp Token Refresh
* Failed Login
* Failed Login Two Factor
* Favorited
* Fully Approved
* Invited
* Invited To
* Killed
* Liked
* Linked
* Locked
* Logged In
* Logged In SSO
* Logged In Two Factor
* Logged Out
* Manually Ran
* Manually Run
* Manually Sent
* Moved
* Owner Changed
* Permission Granted
* Permission Revoked
* Promoted
* Proxy Logged In
* Publication Group Login
* Public Embed Setting Changed
* Remove
* Removed
* Removed Direct Report
* Removed Reports To
* Renamed
* Reordered Cards On
* Reset Password
* Restored
* Resubmitted
* Sent Back
* Shared
* Submitted
* Unarchived
* Unassigned
* Undeployed
* Unliked
* Unlocked
* Unshared
* Unsubscribed
* Updated
* Viewed
 |
|
 User Achievement
  | * Created
 |
|
 User State
  | * Updated
 |
|
 User Template
  | * Apply
* Remove
 |


**Video - Activity Log Overview**


