

Intro
-------

DataSet Watchdog is a beta feature that allows you to monitor your most important DataSets and DataFlows to help minimize impact should any problems arise.


 Sometimes a change upstream can have unintended consequences. Use Data Watchdog to monitor and receive Alerts for your most important DataSets and DataFlows.


 DataSet Watchdog is part of the Governance Toolkit. To enable it, please reach out to your Account Executive (AE).


 This article introduces DataSet Watchdog in the following topics:

 Access the Toolkit
* Required grants
* Available Watchdog watcher types
* Notification settings
* Reporting
* Configuration DataSet (optional)
* Remote instance configuration
* Notes

Access the Toolkit
----------------------

To access the Governance Toolkit, do the following:

. In the navigation header, go to
 **More**
 >
 **Admin.**
2. In the
 **Governance**
 menu, select
 **Toolkit.**


**Note:**
 If the
 **Toolkit**
 option does not display in the
 **Governance**
 menu, make sure your user role has the required grants. You may need to enable the Toolkit by reaching out to your Account Executive (AE).

Required Grants
-------------------


 To access the Governance Toolkit, a user will need one of two grants enabled for their role: Create Custom Pipeline Processes or Administer Custom Pipeline Processes. Grants can be added to a custom user role. By default, the Administer Custom Pipeline Process grant is enabled for Admin users.


* Create Custom Pipeline Processes


 · Allows the user to create, update, share, and delete jobs.


 · Only allows the user to view jobs that they created or jobs that have been shared with them.
* Administer Custom Pipeline Processes


 · Allows the user to create, update, share, and delete jobs.


 · Allows the user to see all jobs within the pipeline.
* Edit DataFlow
* Edit DataSet


 To learn more about custom roles and grants, see

Managing Custom Roles.


 Available Watchdog Watcher Types
------------------------------------


|
 Watcher Type
  |
 Description
  |
| --- | --- |
|
 DataSet Errors
  |
 Checks if the selected DataSets have errored on the last run.
  |
|
 DataFlow Errors
  |
 Checks if the selected DataFlows have errored on the last run.
  |
|
 DataSet Index Time
  |
 Checks if the select DataSets' indexing duration has exceeded the user-provided time limit.
  |
|
 DataSet Last Updated
  |
 Checks if the selected DataSets have executed within the user-provided period.
  |
|
 Outlier DataSet execution times
  |
 Checks if the DataSets selected have run a certain percentage longer, or shorter, than the previous execution.
  |
|
 Outlier DataFlow execution times
  |
 Checks if the DataFlows selected have run a certain percentage longer, or shorter, than the previous execution
  |
|
 Row count change
  |
 Checks if the row count has changed by a certain percentage, positive or negative, compared to the last execution.
  |
|
 Custom Query
  |
 Checks if there are any rows that meet the condition specified in the query against the selected DataSets.
  |

Notification Settings
-------------------------

There are three ways to notify users if any of the above watchers find something unexpected:

. Select users
2. Select groups
3. Manually enter email addresses

Alternatively, you can do a combination of any/all of the above.


 If the job finds something unexpected, the system sends an email with an impact report and a link to the DataSet(s)/DataFlow(s) with the issues.


 Reporting
-------------

Select either a currently existing Watchdog metrics DataSet, or enter a name to create a new one. This new DataSet contains a row for each entity—DataSet or DataFlow—and what the results of the check were.


 Configuration DataSet (optional)
------------------------------------

The required columns and column order in the optional configuration DataSet are as follows:


 Column name
  |
 Column description
  |
| --- | --- |
|
 entity\_id
  |
 The ID of the entity to be monitored. This can typically be found in the browser URL when viewing the detail page of the entity, such as a DataSet overview page.
  |
|
 entity\_type
  |
 Supported values are: DATAFLOW and DATA\_SOURCE
  |
|
 watcher\_type
  |
 The following types are supported:
 * error\_detection
* row\_count\_variance
* execution\_variance
* custom\_query
* max\_indexing\_time
* last\_data\_updated (See watcher type paragraphs for descriptions.)
 |
|
 value
  |
 The value to be used for the specific watcher type.


 Example:


```
custom_query
```

watcher type would take a query as the value.

*Important:**

``
error_detection
```


 types do NOT require a value.

|

The following image shows an example configuration DataSet:


**Note:**
 Only 100 rows are supported per configuration DataSet. This is to ensure that DataSet Watchdog is as efficient as possible to monitor your most important data.

Remote Instance Configuration
---------------------------------

With DataSet Watchdog, you can monitor from one Domo instance important DataSets stored in other instances to which you have access. This allows you to ensure the quality of the data your users are consuming.


 Remote instance monitoring requires a configuration DataSet to run (see

Configuration DataSet

). It also requires you to have a Domo Access Token account configured with either a Domo Access Token or with a username and password for the instance you want to monitor. Instructions for

configuring a Domo Access Token account

appear below.

##
 Configure DataSet Watchdog for Remote Instance

You can configure DataSet Watchdog for an external instance you have access to by following these steps:

. While creating or editing a

job for
 **DataSet Watchdog**
 , in the
 **Settings**
 section, select
 **Remote Instance**
 .
2. In the
 **Configuration**
 section, select a configuration DataSet populated with valid values for the remote instance according to the

Configuration DataSet

section above.
3. Under
 **Instance Settings**
 , in the
 **Instance:**
 field, enter the domain for the remote instance you want to configure DataSet Watchdog for.
4. From the
 **Select the account for your instance:**
 list, select a valid Domo Access Token account. To learn how to

configure a Domo Access Token account

, see below.
5. (Optional) Configure any notifications in the
 **Notifications**
 section.
6. Fill in the details for the
 **Reporting**
 section.


**Note:**
 The notification emails and metric logs are written to the instance the policy is running from, not to the remote instance.
7. Select
 **Submit**
 to save your changes to the job.


###


 Configure Domo Access Token Account

Follow these steps to configure a Domo Access Token account:

. In the Domo navigation header, select
 **Data**
 .


 The
 **Data Center**
 opens.
2. In the sidebar, select

*Accounts**
 .
3. Select
 **Add New**
 >
 **Account**
 .


 The
 **Add Account**
 modal displays.
4. In the modal, complete one of the following options:
	* **Access Token —**
	 Enter an access token in the
	 **Remote Instance Access Token**
	 field. To learn how to generate a token, see

 Generate Access Token

 .
	* **Username and password —**
	 Enter your credentials in the
	 **Remote Instance Username**
	 and
	 **Remote Instance Password**
	 fields.
5. Select
 **Connect**
 .


###


 Generate Access Token

Follow these steps to generate an access token:

. In the Domo navigation header, select
 **More**
 >
 **Admin**
 .


 The Admin Settings display.
2. In the
 **Authentication**
 menu of the Admin Settings, select
 **Access tokens**
 .
3. On the
 **Access tokens**
 page, select
 **+ Generate access token**
 .
4. Enter a description in the
 **Access token description**
 field.
5. Search for and select a user for whom you are generating the access token.
6. Select an expiration interval in the
 **Expire after**
 list.
7. Select
 **Generate**
 .
8. Copy the code to use.

Notes
---------


* You can only select one watcher type per job, but you can select multiple DataSets and/or DataFlows per job, depending on the watcher type selected.
* If using the
 **Custom Query**
 option, ensure that all the DataSets selected contain the columns used in the query, otherwise it fails to run for that DataSet.
* When the job is Enabled, it automatically runs one time per hour. If the job is Disabled, it does not run unless it is run manually.


