

Intro
-------

ServiceNow is a software platform that supports IT service management and automates common business practices. Use Domo's ServiceNow connector to retrieve a data table from a list or provide a custom table name. For more information about the ServiceNow API, visit their website. (

http://wiki.servicenow.com/index.php...\_API#gsc.tab=0

)


 The ServiceNow connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 In addition to the standard ServiceNow connector, Domo also provides a "ServiceNow Upsert" connector. This connector is exactly the same as the standard ServiceNow connector except that it also offers "Upsert" as an update option alongside "Append" and "Replace." This option is discussed in this article under Other Panes.


 You connect to your ServiceNow account in the

Data Center

. This topic discusses the fields and menus that are specific to the ServiceNow connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 | * Monitor trends for incidents and find ways to reduce incident counts.
* Track change request volume and remove bottlenecks in the change request process.
* Track problem submissions and look for relationships to incident counts.
 |
|
**Primary Metrics**
 | * Open high priority incidents
* Incident trends
* Incident Mean Time To Resolve (MTTR)
* Incident volume by severity, priority, impact and urgency
* Change volume trend
* Open emergency changes
* Problem volume trend
 |
|
**Primary Company Roles**
 |
 IT service desk manager
  |
|
**Average Implementation Time**
 |
 3 hours
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 5
  |

Best Practices
----------------

Schedule reports at frequent intervals to maintain an accurate and current picture of the status of incidents, problems and change requests.


 Prerequisites
---------------

To connect to your ServiceNow account and create a DataSet, you must have a ServiceNow username and password. You will also need to provide the URL for your ServiceNow server. Usually this will be in the format

https://mycompany.servicenow.com


 .

Connecting to Your ServiceNow Account
---------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the ServiceNow Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your ServiceNow account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Host URL
  |
 Enter the URL for your ServiceNow server, e.g.

https://mycompany.servicenow.com


 .
  |
|
 Username
  |

Enter your ServiceNow username. User needs to have their timezone set to GMT time for accurate dates.

|
|
 Password
  |
 Enter your ServiceNow password.
  |

Once you have entered valid ServiceNow credentials, you can use the same account any time you go to create a new ServiceNow DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.


**Note:**
 The user account for the connected ServiceNow credentials
 *must*
 be set to Greenwich Mean Time (GMT); otherwise problems will occur. To edit your profile's time zone, do the following:

. While logged into ServiceNow, navigate to
 **Self Service > My Profile**
 .
2. Locate the property called
 **Time Zone**
 .
3. Select
 **GMT**
 as the time zone.


###
 Details Pane

This pane contains a primary
 **Report**
 menu in which you select the type of table you want to pull. Depending on the table type you select, other options may appear.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select a ServiceNow report. The following reports are available:


|  |  |
| --- | --- |
|
 Custom Query
  |
 Create a custom query. Includes the ability to select which fields are returned to the DataSet.
  |
|
 Custom Table
  |
 Provide a custom table name to retrieve data from.
  |
|
 Standard Table
  |

Select from a list of standard tables from Service Now.

|

|
|
 Table
  |
 Select the ServiceNow table you want to retrieve data for. The following tables are available:


|  |  |
| --- | --- |
|
 Incident
  |
 Retrieve data about incidents for a given date range, including impact, urgency level, description, close notes, etc.
  |
|
 Change Request
  |
 Retrieve change requests for a given date range.
  |
|
 Problem
  |
 Retrieve data about problems for a given date range.
  |
|
 User Groups
  |
 Retrieve data about user groups for a given date range.
  |
|
 Users
  |
 Retrieve data about users for a given date range.
  |

|
|
 Table Name
  |
 Enter the name of the table you want to retrieve data for.
  |
|
 Custom Query
  |


 Enter a custom query. Include only query values directly related to

sysparm\_query

. The fields

sysparm\_limit

and

sysparm\_offset

should not be included. If the field

sys\_created\_on

is included, the value should be in the following format:

yyyy-MM-dd HH:mm:ss

For example:

ORDERBYDESCsys\_created\_on^sys\_created\_on>2016-09-25+00:00:00^sys\_created\_on<2016-09-27+23:59:59

For more information about query building, visit

http://wiki.servicenow.com/index.php...le\_API#Methods

.


**Important:**

When creating custom queries, only include query values directly related to

sysparm\_query

. The fields

sysparm\_limit

and

sysparm\_offset

should not be included. If the field

sys\_created\_on

is included, the value should be in the following format:

yyyy-MM-dd HH:mm:ss

.

|
|
 Fields
  |
 Enter a comma-separated list of fields to return in your DataSet.


 For example:


`parent,sys_updated_on,number`
 |
|
 Data Date Format
  |

Select the format you expect the ServiceNow API will return date fields. If you select String, Domo will not process the date at all, and return the literal string returned from the ServiceNow API.

|
|
 Upsert/Merge Key
  |

Enter the upsert/merge key. By default sys\_id will be used as upsert/merge key.

|
|
 Select Date Type for Query
  |

  |  |
| --- | --- |
| **Update Method**  | **Description**  |
|
 Append
  |

  |  |
| --- | --- |
| **First run**  |
 Create Query with the selected Date Type for the selected DURATION.
  |
| **Consecutive run**  |
 Create Query with

*sys\_updated\_on**

from the last successful run date to Today, and Append to the existing data.
  |

|
|
 Merge
  |

  |  |
| --- | --- |
| **First run**  |
 Create Query with the selected Date Type for the selected DURATION.
  |
| **Consecutive run**  |
 Create Query with

*sys\_updated\_on**

from the last successful run date to Today, and Merge to the existing data.
  |

|


 |
|
 Duration
  |
 Select the duration for the report (a Single Date, or a Date Range)
  |
|
 Report Date
  |
 Specify whether the data is for a specific or relative date. Choose
 **Relative**
 if you always want the report to retrieve data for a given number of days back (which you specify in
 **Days Back**
 ) from the current date. For example, if you enter

5

for
 **Days Back**
 and set the DataSet to update daily, each new day the report will update to show information for the date 5 days in the past.
  |
|
 Select Specific Date
  |
 Select the date you want to retrieve data for.
  |
|
 Days Back
  |
 Enter the number of days back from the current date that will be presented in the report.
  |
|
 Start Date
  |
 Specify whether the first date in your date range is a specific or relative date. Choose
 **Relative**
 if you always want the report to retrieve data for a given number of days back (which you specify in
 **Days Back to Start From**
 ) from the current date. If you choose
 **Relative**
 here, you should also choose
 **Relative**
 for
 **End Date**
 and specify a value for
 **Days Back to End At**
 .


 For example, if you enter

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 and you set the DataSet to update daily, each new day the report will update to show information for 5 to 10 days in the past.
  |
|
 Select Specific Start Date
  |
 Select the first date in your date range.
  |
|
 End Date
  |
 Specify whether the last date in your date range is a specific or relative date. Choose
 **Relative**
 if you always want the report to retrieve data for a given number of days back (which you specify in
 **Days Back to End At**
 ) from the current date. If you choose
 **Relative**
 here, you should also choose
 **Relative**
 for
 **Start Date**
 and specify a value for
 **Days Back to Start From**
 .


 For example, if you enter

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 and you set the DataSet to update daily, each new day the report will update to show information for 5 to 10 days in the past.
  |
|
 Select Specific End Date
  |
 Select the last date in your date range.
  |
|
 Days Back to Start From
  |
 Enter the number of days before the current date to use as the start date.


 For example, if you enter

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 and you set the DataSet to update daily, each day the report updates to show information for a 5-day range, starting 10 days ago and ending 5 days ago.
  |
|
 Days Back to End At
  |
 Enter the number of days before the current date to use as the end date.


 For example, if you enter

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 and you set the DataSet to update daily, each day the report updates to show information for a 5-day range, starting 10 days ago and ending 5 days ago.
  |


###
 Other Panes

The "Upsert" version of this connector includes
 **Upsert**
 as an update option, alongside the standard "Replace" and "Append." When you select this option, you are asked to provide an upsert key that the system uses to match old data. If there are any existing rows of data that use that key, they will be replaced with the new data instead of being added to the DataSet as new rows.


 The following points explain the preservation of a schema with varying column numbers and different column datatypes to avoid any confusion:

 Domo preserves old schemas to avoid anyone making a mistake and thereby returning a different schema from the initial one, which can break all assets using the old schema.
* If a query does not return a previously populated field, then the field in the dataset will be blank but not deleted..
* Domo tries to infer the data type of a column when it ingests it. We could tell the connector to not change datatypes but in the case of a custom query where we don’t have insight into the fields before they come over, it would not be advisable. E.g., suppose the connector initially infers that column is a numeric because that’s what coming in during the first run. If on the next run, the query returns something with a character and a numeric, then the connector will fail because it will recognize the column as String instead of numeric.
* The connector will ingest the fields the API sends over. So if the API does not send over a field, the connector cannot ingest it.

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

##
 FAQ


#####
 Does this connector require whitelisting or allowlisting?

You need to add the connector to the network's whitelist to power up.


 You also must allow Domo's connector to talk to your ServiceNow instance by working with your IT team to Refer to the

add Domo's IPs to your network's allowlist


#####
 What version of the ServiceNow API does this connector use?

This connector uses version 1 of the ServiceNow API (

https://{

hostName}/api/now/v1.)

####
 Which endpoint(s) does each report call in this connector?


|
 Report Name
  |
 Endpoint URL
  |
| --- | --- |
|
 Custom Query
  |
 /table/{tableName}
  |
|
 Custom Table
  |
 /table/{tableName}
  |
|
 Standard Table
  |
 /table/{tableName}
  |


#####
 What kind of credentials do I need to power up this connector?

You need a host URL (ex:

https://mycompany.service-now.com

), and the username and password used to log into your ServiceNow instance.

####
 Do I need a certain kind of account with the data service to set up the connector?

Your account needs to have the appropriate roles, and the table you are trying to access must have web services enabled.

####
 What else do I need to do to power up my connector?

You have the option to choose one of the default tables we have included, however, if you need to pull from a custom table, you will need the table name. You also have the option of performing a custom ServiceNow query by providing a sysparmquery. Information on the structure of such a query can be found in the ServiceNow Table API documentation.

####
 How do I know if my query is right?

You can test queries inside ServiceNow if you have the proper access.

####
 I keep running into failed datasets. How do I fix that?

If the returned dates are incorrect, you need to verify if your ServiceNow instance is set to GMT or UTC format so that when we receive the data, we can properly translate it into your Domo timezone. If you are unable to change this for the entire company, you could create an individual user with their Timezone set to GMT or UTC specifically for the use inside DOMO.

####
 What's the difference between the ServiceNow connector and ServiceNow Upsert connector?

The ServiceNow Upsert connector supports the upsert mode along with the append and replace modes, for scheduling the datasets.

