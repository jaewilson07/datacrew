---
title: DomoStats Connector
url: https://domo-support.domo.com/s/article/360043433813
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/4577793742615](https://domo-support.domo.com/s/article/4577793742615)', '[https://domo-support.domo.com/s/article/360043439413](https://domo-support.domo.com/s/article/360043439413)', '[https://domo-support.domo.com/s/article/360043433813](https://domo-support.domo.com/s/article/360043433813)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003534
views: 2,809
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:40:00
---



Intro
-----


The DomoStats Connector gives you the freedom to explore how your team is using Domo. Dive in to your team's activities, Projects and Tasks, DataSets, Buzz conversations, and more to find insights and shape your company’s Domo experience. 


You must have an Admin security role to access the DomoStats Connector or to connect to the DomoStats apps. However, once the DataSets have been created or the app has been deployed, they can be shared with anyone in your organization.   


You import DomoStats DataSets in the **Data Center**. This topic discusses the fields and menus that are specific to the DomoStats Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").





Prerequisites
-------------


To pull in DomoStats DataSets using this Connector, you must have Admin security access. No credentials are required for connecting. 


Connecting to DomoStats DataSets
--------------------------------


This section enumerates the options in the **Details** pane in the DomoStats Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most Connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


#### Details Pane


This pane contains a single **Report** menu from which you select your desired DomoStats DataSet.




| **Report** | **Description** |
| Accounts | Returns information about the Accounts that are in the instance. |
| Accounts with Permissions | Returns information about the Accounts that are in the instance and what users have access to them. |
| Activity Log | Returns information about team member activities within Domo such as logins, card creation, card viewing, DataSet creation, etc.
See [Activity Log](#h_01GFXVP48VFC7W9QG1G95APXPR)[DataSet](#h_01GFXVP48VFC7W9QG1G95APXPR) below. |
| AutoML Training Jobs | Included with data science package. |
| Beast Modes used in Cards  | Returns information about which Beast Modes are currently in use in cards. |
| Buzz | Returns information about Buzz usage within Domo such as conversation participants, number of messages posted, etc. |
| Card Datasource | Returns the DataSets that power a card. |
| Card Pages | Returns the dashboards where a card displays. |
| Card Permissions | Returns information about card permissions.See [Card Permissions DataSet](#h_01GFXVN3Z6690WHEX6M3METE8B) below. |
| DataFlow Input DataSources | Returns the IDs of inputs to DataFlows. |
| DataFlow Output DataSources | Returns the IDs of outputs from DataFlows.  |
| DataFlows | Returns information about DataFlows within your Domo instance, such as DataFlow name, type, status, last updated date, etc.
 
See [DataFlows DataSet](#h_01GFXVWY0Z9AMWNQQ8GACG52HH) below. |
| DataFlows History | Returns DataFlow run history information for your Domo instance, such as DataFlow name, run start and end time, whether runs were successful, etc.
See [DataFlows History DataSet](#h_01GFXVYB1A90A8P3TRBEMSK51A) below.
 
**Note:** This report may have up to a 24-hour window without data. For example, if your report ran at 1 a.m. on 10/10, the report may not pull anything more recent than 1 a.m. on 10/09. |
| DataSet Access | Returns which users or groups have access to which DataSets and what permission level they have. |
| DataSet Tags | Returns which tags are assigned to which DataSets. |
| DataSets | Returns information about DataSets within your Domo instance, such as DataSet name, owner, connector, last run date, etc.
See [DataSets DataSet](#h_01GFXVRGE2XND3QNJTPJ0DRE93) below. |
| DataSets Execution Error | Returns DataSets with errors. |
| DataSets History | Returns DataSet run history information for your Domo instance, such as DataSet name, run start and end time, whether runs were successful, etc.
See [DataSets History DataSet](#h_01GFXVVABHEGEQRSM9A3VA7Y26) below. |
| ML Inference Jobs | Included with data science package. |
| Mobile Activity | Returns a user ID, the user's mobile device, and their session start date and time.   |
| OKR Key Results (included with Domo Goals) | Returns information about the key results/metrics that have been created in Domo Goals.
See [OKR Key Results DataSet](#h_01GFXW1J754XRQDN9EDGSBDXMA) below. |
| OKR Objectives (included with Domo Goals) | Returns information about the objectives/goals that have been created in Domo Goals.
See [OKR Objectives DataSet](#h_01GFXW0B3FACRHR3FVB6H545QV) below. |
| Pages | Returns information regarding Pages. |
| Pages with Multiple Owners | Returns information of each owner of a Page broken out per row. |
| People | Returns information about users in your Domo instance, such as user name, security role, contact information, last login date, etc.
See [People DataSet](#h_01GFXW4R08P911NZ09MB3P6NSP) below. |
| Project Stages | Returns information about project stages in your Domo instance.
See [Project Stages DataSet](#h_01GFXW7P62J3S3QR63NQTMSGKC) below. |
| Projects | Returns information about projects in your Domo instance, such as project name, owner, associated tasks, etc.
See [Projects DataSet](#h_01GFXW7BYK78ZSKFN72PCXZSZ4) below. |
| Publish | Included with Domo Everywhere. |
| Publish Event Logs | Included with Domo Everywhere. |
| Task Owners | Returns information about task owners in your Domo instance.
See [Task Owners DataSet](#h_01GFXW9KJ212HAM4B9TPQN3YRB) below. |
| Tasks | Returns information about tasks in your Domo instance, such as task name, parent project, assignees, etc.
See [Tasks DataSet](#h_01GFXW99XH0WTGPG7M124AWHYE) below. |
| User Activity | Returns User Activity, similar to the Activity Log in the Admin section. |
| Variables  | Returns information about existing Variables in your instance. |
| Variables used in Beast Modes | Returns information about which Variables are currently in use in a Beast Mode. |
| Workbench | Returns information about Workbench job statuses, last run times, which machines are running the jobs, what DataSets are powered by the jobs, and schedule type.
See [Workbench DataSet](#h_01GFXWAWJWQRF5GKX9RBT3ZAVN) below. |


 


#### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").




 


#### Locating DomoStats DataSets


After a DataSet is created, you can locate the DataSet through filters and tagging. This helps keep DataSets organized and accessible. 


 


1. In the navigation header, select **Data**. 


2. Select **DataSets** from the ![Screen_Shot_2022-07-19_at_2.16.07_PM.png](Screen_Shot_2022-07-19_at_2.16.07_PM.png) navigation rail.  


3. In the **Search** bar, type the name of your DataSet. You can also locate DataSets using filters. 


3. In the **Search** bar, select **Add Filter**. 


4. Choose **Type** and enter **DomoStats**.


A list of DomoStats DataSets will generate. Choose your DataSet from the list. 


 


#### Tagging a DomoStats DataSet


Locating and organizing your DataSets is made possible by tagging. Tagging groups the DataSets in collections that can be found using the **Tag** filter. 


 


1. Locate the DataSet in Domo. (See the previous section, Locating DomoStats DataSets, for a step-by-step guide.) 


2. Select **+ Add Tag** under the DataSet's name. 


![2022-07-19_14-30-16.png](2022-07-19_14-30-16.png)


3. Choose from the list of available tags, or create a new tag using the search feature. 


![2022-07-19_14-34-09.png](2022-07-19_14-34-09.png)


4. Select **+** next to **Create new tag.** 


5. Select **Save.** ![2022-07-19_14-37-14.png](2022-07-19_14-37-14.png)


The DataSet is now tagged and can be found using the Tags filter. 


![Screen_Shot_2022-07-19_at_2.38.27_PM.png](Screen_Shot_2022-07-19_at_2.38.27_PM.png)


DataSet Fields
--------------




This section gives field-by-field descriptions for certain DomoStats reports DataSets.


 


#### Activity Log DataSet




| **Field** | **Description** |
| Object\_Name | The name of the object that received an action. |
| User\_ID | The ID of the person or thing that performed an action. |
| Source\_ID | The ID of the type. For a simplified example, let's say a user added a card to a page. You would get these two actions on an event, and both would be returned on the DataSet.* "User updated page." This returns the following in the DataSet:
	+ UserId: user\_id
	+ Type: USER
	+ Source\_Id: userId
	+ action: updated
	+ object\_type: page
	+ object\_id: page\_id
* "Card added to page." This returns the following in the DataSet:
	+ UserId: user\_id
	+ Type: CARD
	+ Source\_Id: card\_id
	+ action: added\_to
	+ object\_type: page
	+ object\_id: page\_id
 |
| Name | The name of the object that performed an action. |
| Action | The event that took place. The following actions may be logged here:


|  |  |
| --- | --- |
| LOGGEDIN | Logged when someone successfully logs in from the login page using their password. Mobile logins are recorded when a person logs out of the app and back into the app. If a person opens and closes the app, that is not counted toward logins. |
| LOGGEDIN\_SSO | Logged when someone successfully logs in from the login page using SSO. |
| LOGGEDIN\_TWO\_FACTOR | Logged when a two-factor code is successfully used to login. |
| PAGE VIEW | Counted each time a page renders. |
| CARD VIEW | Counted only if a user clicks into the Details view for a Card. |

 |
| Object Type | Clarifies what the object is. |
| Object ID | The ID of the object. |
| Type | The type of person or thing that performed an action. |
| Event Time | The time at which the event occurred. The audit endpoint records/returns it in UTC, but the connector converts it to the user's time zone. |


 


#### Card Permissions DataSet




| **Field** | **Description** |
| cardId | The ID of the card to check permissions for. |
| entity type | The entity (user or group) for whom permissions exist. |
| entityId | The user or group ID of the entity for whom permissions exist. |
| permission mask | A numerical representation of the set of permissions granted to a user or group. |
| Permission | A permission mask followed by a visual breakdown of the permissions granted to a user or group.R = ReadW = Write
D = DeleteS = Share
A = Admin |


 


#### DataFlows DataSet


 




| **Field** | **Description** |
| Current Version | Returns the version number of the DataFlow. |
| ID | Returns the DataFlow ID number. |
| Description | Returns the description for the DataFlow if one has been specified. |
| Type | The type of DataFlow. |
| Status | The status for the DataFlow. The following statuses may appear here:


|  |  |
| --- | --- |
| Success | The DataFlow was executed successfully. |
| Not Runnable/Rejected | There is a problem with the DataFlow definition; please view the DataFlow details. |
| Canceled | A user manually canceled the execution of the DataFlow. |
| Enabled | The DataFlow has been built but not yet run. |
| Failed | There was an internal problem executing the DataFlow. |
| Running | The DataFlow is currently being executed. |
| Success | Executed successfully. |

 |
| Owner ID | Returns the user ID of the DataFlow owner. This ID is the same as the User ID in the DomoStats People DataSet. |
| Display Name | Returns the current name of the DataFlow. |
| Last Executed Date | Returns a timestamp for the time of the last execution. |
| Last Updated Date | Returns a timestamp for the time when the DataFlow was last updated. |
| Last Updated By | Returns the user ID of the last person to edit the DataFlow. |


 


#### DataFlows History DataSet


 




| **Field** | **Description** |
| ID | An ID for a specific run of the DataFlow. |
| DataFlow ID | The ID number for the DataFlow. |
| Display Name | The name of the DataFlow. |
| Type | Returns the DataFlow type, either ETL, MYSQL, or REDSHIFT. |
| Status | Returns the status for the DataFlow run, either CANCELLED, FAILED, REJECTED, or SUCCESS. |
| Execution Type | Returns the type of execution, either DATA\_UPDATE, MANUAL, RETRY, or SCHEDULED. |
| Start Time | A timestamp for the time the DataFlow started executing. |
| End Time | A timestamp for the time the DataFlow stopped executing. |


 


#### DataSets DataSet




| **Field** | **Description** |
| Status | The status for the DataSet. The following statuses may appear here:


|  |  |
| --- | --- |
| Error | Error during the import. |
| Idle | A stream has been created but the DataSet has not yet been executed. |
| Success | The import completed successfully. |
| Active (or blank) | The import is in process. |
| Invalid | There may be another execution still running and this has been deactivated until the previous one is complete. |

 |
| ID | The unique identifying value for the DataSet. |
| Owner\_User\_ID | The unique identifying value for the person who owns the DataSet.  A DataSet owner is either the person who created the DataSet or the person whom ownership was assigned to. |
| Created\_Date | The date on which the DataSet was run for the first time. |
| Last\_Run\_Date | The date on which the DataSet last successfully completed a run. |
| Name | The current name given to the DataSet. |
| Schedule | The schedule option that has been configured for this DataSet. The following options may appear here:


|  |  |
| --- | --- |
| Manual | The schedule has been set so that it only updates when you manually go in and run the DataSet. |
| Day | The DataSet is set to run once per day. |
| Minute | The DataSet is set to run within the given minute interval. |
| Hour | The DataSet is set to run once per hour. |
| Blank | The DataSet has been created but no schedule has been set. |

 |
| Import\_Type | The source for the DataSet. Could be a Connector, DataFlow, API, etc. |
| Source\_Type | UNDER CONSTRUCTION |


 


#### DataSets History DataSet


 




| **Field** | **Description** |
| Stream ID | A Domo-specific ID to map to the stream. |
| Execution ID | The ID for a specific run of the DataSet.   |
| Datasource ID | A Domo-specific datasource ID |
| Status | The status for the DataSet history item. The following statuses may appear here:


|  |  |
| --- | --- |
| Success | Data was imported successfully. |
| Error | Error during the import. |
| Invalid | There may be another execution still running and this has been deactivated until the previous one is complete.
  |

 |
| Execution Type | The type of execution. The following execution types may appear here:


|  |  |
| --- | --- |
| Manually | The import was executed manually. |
| Automated | The import was executed on a schedule. |
| Retry | The import failed and Domo automatically tried to execute it again. |
| Replay | A previously imported DataSet was rerun. |
| Batch | Data was imported in batches. |
| Extended | The data import continued into the next scheduled run. |

 |
| Start Time | The time the DataSet started running. |
| End Time | The time the DataSet finished running, went into an error state, or became invalid. |


#### OKR Objectives DataSet


The fields in this section use "Objectives" and "Key Results". Your organization may refer to them as goals, metrics, or something else depending on your Goals Admin Settings. For more information about using the DomoStats Connector with Goals, see [Accessing Goals Data](/s/article/4577793742615). 




| **Field** | **Description** |
| ID | The unique identifier of the objective. |
| Name | The name of the objective. |
| Description | The description of the objective. |
| State | The current state of the objective. Possible states are listed below: 
 
OPEN: The objective's expiration date has not elapsed and the objective has not been marked complete. 
 
EXPIRED: The objective's expiration date has elapsed. 
 
CLOSED: The objective has been marked complete. |
| Owner ID | The ID of the individual user or group that owns the objective. When multiple individuals or groups own an objective, the ID of the first owner is populated in this field. |
| Owner Type | Indicates whether or not the objective owner is an individual user or group. Possible types are listed below: 
 
USER: A Domo user 
 
GROUP: A Domo group |
| Type | The type of objective. Possible values are:
 PERSONAL 
TEAM 
COMPANY |
| Team ID | The ID of the Domo group that is assigned to the objective. 
(For Team-type objectives) |
| Parent ID | The ID of the parent objective, if applicable. |
| Parent IDs | The IDs of the parent objectives if the objective has multiple parents, if applicable.  |
| Multiple Parents | Indicates whether or not the objective has multiple parents. |
| Period ID | The ID of the period that the objective is active (based on Start and expiration date). |
| Period IDs | The IDs of periods *if*an objective is active for multiple periods.  |
| Company ID | The ID of the organization that is assigned to the objective. 
(For Company-Type objectives) |
| Company IDs | The ID of each Company-type objective *if* linked to multiple Company-type objectives.  |
| Self Assessment | The optional self assessment submitted when marking an objective complete. |
| Confidence | A numerical value based on the objective status. Values with their associated status are listed below:
 
1: ON TRACK 
0.5: NEEDS ATTENTION 
0: AT RISK |
| Likes | The number of likes the objective has received. |
| Dislikes | The number of dislikes the objective has received. |
| Subscriptions | The number of users who have subscribed to the objective. |
| Company Objective | Indicates if the objective is a Company-type objective. |
| Start Date | The start date of the objective. |
| Expire Date | The end date of the objective.  |
| Impact Start Date | *(DEPRECATED)* The date when the impact of the achieved objective is expected to begin. |
| Impact End Date | *(DEPRECATED)* The date when the impact of the achieved objective is expected to end |
| Tags | A list of tags associated with the objective. This list is separated by commas.  |
| Tag Categories | A list of tag categories associated with items in the Tags field. This list is separated by commas.  |
| Created Date | The date the objective was created. |
| Creator ID | The ID of the user who created the objective. |
| Modified Date | The date/time the objective was last modified. If the objective has not been modified, this will be the date and time the objective was originally created. |
| Modifier ID | The ID of the user who modified the objective. If the objective has not been modified, this will be the ID of the user who created the objective. |
| Owners | A comma-separated list of the ID and Type of the user or group that owns the objective. 
For example, if user ID 12345678 owns the objective, the field will contain the value 12345678:USER. 
If group 54231564 owns the objective then the field will contain the value 54231564:GROUP. |
| Assigned Team IDs | A comma-separated list of the Domo group IDs that the objective has been assigned to. |
| \_BATCH\_ID\_ | An incremental batch number representing each DataSet update. |
| \_BATCH\_LAST\_RUN\_ | The date and time that the DataSet was last run. |


 


#### OKR Key Results DataSet


The fields in this section use "Objectives" and "Key Results". Your organization may refer to them as goals, metrics, or something else depending on your Goals Admin Settings. For more information about using the DomoStats Connector with Goals, see [Accessing Goals Data](/s/article/4577793742615). 




| **Field** | **Description** |
| ID | The unique identifier of the key result. |
| Name | The name of the key result. |
| Description | The description of the key result.  |
| State | The current state of the key result. Possible states are listed below: 
 
OPEN: The key result's expiration date has not elapsed and the key result has not been marked complete.
 
EXPIRED: The key result's expiration date has elapsed.
 
CLOSED: The objective that the key result belongs to has been marked complete.  |
| Owner ID | The ID of the individual user or group that owns the key result. When multiple individuals or groups own a key result, the ID of the first owner is populated in this field. |
| Owner Type | Indicates whether or not the key result owner is an individual user or group. Possible types are listed below: 
 
USER: A Domo user 
GROUP: A Domo group |
| Objective ID | The ID of the objective that the key result belongs to. |
| Card ID | The ID of the card that the key result is linked to (for automatic/card-based key results).  |
| Alert ID | A unique ID generated for each key result that is linked to a card. |
| Completion | A percentage representing the progress of the key result as measured by the relationship of the actual value to the target value. 
 
The completion is calculated in the following ways: 
 
Automatic, card-based key results: Progress is driven based on values in the card relative to a target. 
 
Manual/percent completion-based key results: Value is determined based on the percent completion specified in the key result slider bar.
 
Manual/choose your own value key results: Progress is determined based on the actual value of the key result divided by the target of the key result.
 
 Projects and Tasks-based key results: Progress is determined by how many projects/tasks have been completed completed in the Projects and Tasks feature.  |
| Pacing | When enabled, this field shows the completion of the key result as a percentage compared to the percentage of time that the key result has been open (time between start and end date). |
| Start Value | The initial value of the key result. |
| Current Value | The current value of the key result. |
| Target Value | The target value of the key result |
| Weight | (NOT USED) |
| Fixed Weight | (NOT USED) |
| Manual Type | For manually-managed key results, this field indicates the type of the key result. 
 
Possible values are listed below: 
 
VALUE: Key result measured with a single value.
SCALE: Key result measured using a percent completion scale.
PROJECT\_AND\_TASK: Key result associated to a Domo project. |
| Unit Type  | The data type of the key result's value and target. Possible values include: 
 
NUMERICAL 
PERCENT |
| Project ID | The ID of the project that is linked to the key result (only applicable to Projects and Tasks-based key results).  |
| Likes | The number of likes the key result has received. |
| Dislikes | The number of dislikes the key result has received. |
| Start Date | The start date of the key result. |
| Expire Date | The end date of the key result. |
| Cure Period | Indicates when changes to the key result will no longer be tracked.  |
| Tags | A comma-separated list of tags associated with objective. |
| Tag Categories | A comma-separated list of tags associated with objective. |
| Created Date | The date the objective was created. |
| Creator ID | The ID of the user who created the objective. |
| Modified Date | The date/time the objective was last modified. If the objective has not been modified, this will be the date and time the objective was originally created. |
| Modifier ID | The ID of the user who modified the key result. If the objective has not been modified, this will be the ID of the user who created the it. |
| Owners | A comma-separated list of the ID and Type of the user or group that owns the key result. 
For example, if user ID 12345678 owns the objective, the field will contain the value 12345678:USER. 
If group 54231564 owns the key result, the field will contain the value 54231564:GROUP. |
| \_BATCH\_ID\_ | An incremental batch number representing each DataSet update. |
| \_BATCH\_LAST\_RUN\_ | The date and time that the DataSet was last run. |
|  |  |
|  |  |


 


#### People DataSet


If any of the "personal information" fields (name, email, location, etc.) return blank in this DataSet, you can fill in the missing information in the user's Profile page or their page in **Admin Settings > People**. For more information, see [Specifying Your Personal Profile Information](/s/article/360043439413 "Specifying Your Personal Profile Information").




| **Field** | **Description** |
| Department | The user's department within your organization. |
| Display Name | The name used to represent the user within Domo. |
| Role | The user's role within your organization. |
| Title | The user's title within your organization. |
| Email | The user's email address. |
| Alternate Email | The user's alternate email address. |
| Phone Number | The user's personal phone number. |
| Desk Phone Number | The user's desk phone number. |
| Employee Number | The user's employee number within your organization. |
| Location | The company location the user has been assigned to.  |
| Locale | UNDER CONSTRUCTION |
| Timezone | The user's time zone. |
| Role ID | A Domo-generated ID for a specific role. |
| User ID | A Domo-generated user ID for each person. |
| Last Login | A timestamp for the last time this user logged in. Login is measured by any regular, SSO, or mobile login. To count as a login for mobile, a person must actually log out of the instance and log back in. Opening and closing the app does not count as a login. |
| Password Created | A timestamp for when a user's password was created. This gets updated when the password is updated. |
| Account Locked | Returns a "True" value if the account is locked. |
| Profile Picture | Returns a "True" value if a profile picture has been added in the user's Profile page or on his/her page in **Admin Settings > Governance > People**. |
| Org Chart | Returns a "True" value if the user has been added as a report on their company org chart in the Profile page.  |
| Two Factor Enabled | Returns a "True" value if the company has enabled two-factor authentication as an option in **Admin Settings > Authentication > Authentication** and the user has chosen to have two-factor enabled in their Settings menu (available via clicking the Gear menu under their profile picture). |
| Created Date | A timestamp for the date the user was added to the system. |
| Last Updated Date | A timestamp for the date the user's information was last updated. |


 


#### Project Stages DataSet


 




| **Field** | **Description** |
| Priority | Defines the order in which the lists or stages are shown. Smaller numbers are on the left. |
| Project\_id | ID number for the project.  |
| Project\_name | Name of the project. |
| List\_name | Name of the list. |
| List\_type | Type of the list. |
| Project\_list\_id | ID number of the list. |
| Created | Person who created the project. |
| Updated | The time when the list was last edited (e.g. moved, renamed, etc.). |
| Active | Returns "True" if the list or stage hasn't been archived. |


 


#### Projects DataSet


 




| **Field** | **Description** |
| Created\_by\_user | The person who created the project. |
| Project\_id | The ID number for the project. |
| Created | Project creation date and time. |
| DueDate | Due date for the project. |
| Created\_by | User ID of the person who created the project. |
| Project\_name | Name of the project. |
| Description | Description for the project, if one has been specified. |
| Active | Returns "True" if the project is currently viewable. |
| Deleted | Returns "True" if the project has been deleted. |


 


#### Task Owners DataSet


 




| **Field** | **Description** |
| ProjectTaskName | Name of the task. |
| ProjectName | Name of the parent project for the task. |
| ProjectListId | ID number of the list in which the task is found. |
| ProjectListName | Name of the list in which the task is found. |
| ProjectListType | Type of list in which the task is found. |
| ProjectTaskID | ID number for the task. |
| ProjectID | ID number for the parent project of the task. |
| Created | Date and time the task was created. |
| AssignedBy | ID number of the person who assigned the task. |
| AssignedByName | Name of the person who assigned the task. |
| AssignedTo | ID number of the person the task has been assigned to. |
| AssignedToName | Name of the person the task has been assigned to. |


 


#### Tasks DataSet


 




| **Field** | **Description** |
| DueDate | Due date for the task. |
| Project\_id | ID number for the parent project for the task. |
| ProjectListId | ID number of the list the task is found in. |
| ProjectListName | Name of the list the task is found in. |
| ProjectListType | Type of the list the task is found in. |
| ProjectTaskId | ID number for the task. |
| ProjectTaskName | Name of the task. |
| Created | Date and time the task was created. |
| Updated | Date and time the task was last updated. |
| ProjectName | Name of the parent project for the task. |
| CreatedBy | User ID of the person who created the task. |
| CreatedByName | Name of the person who created the task. |
| Owner | The ID number for the task owner. The task owner is the creator by default, but can be changed to anyone in the instance. |
| OwnerName | The name of the person who created the task. In the case that the original owner reassigned ownership, then it is the name of the new owner. |
| Priority | The order in which the task shows up on the task board. Lower priority numbers are above higher priority numbers. |
| Active | Returns "True" if the task hasn't been archived. |
| Description | The description of the task, if one has been specified. |
| Contributors | Individuals assigned to work on the task. |


 


#### Workbench DataSet


 




|  Field  |  Description  |
|  Workbench Agent  |  The name of the machine running the Workbench job.  |
|  Owner ID  |  The ID number of the owner of the job.  |
|  DataSet ID  |  ID for the DataSet.  |
|  DataSet Name  |  Name of the DataSet.  |
|  Job Name  |  Name of the job.  |
|  Job Status  |  Status of the job (success, fail, etc.)  |
|  Created Date  |  Date the job was created.  |
|  Last Run  |  When the job ran last.  |
|  Next Run  |  When the job will run again.  |
|  Last Successful Run  |  When the job ran last successfully.  |
|  Update Method  |  How it updates the DataSet (Append, Replace, etc.)  |
|  Rows Updated  |  The number of rows that were updated.  |
|  Schedule Type  |  Shows the schedule type (Manual Schedule, Custom Schedule, etc.)  |


 


 

