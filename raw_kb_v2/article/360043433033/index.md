

Intro
-------

Workday lets you to set up your own custom reports using their Report Writer and Custom Reports functionality. If you enable Custom Reports via Workday's web services, they become Reports-as-a-Service (RaaS) and can be imported into Domo. Once your reports are set up in Workday, this connector lets you select the available reports and bring them into Domo. For more information about the Workday API, see

https://community.workday.com/node/134011

.


 You connect to your Workday RaaS account in the Data Center. This topic discusses the fields and menus that are specific to the Workday connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 Use this connector to pull DataSets related to...
 * HR
* Workforce planning
* Recruiting
* Talent management
* Payroll
 |
|
**Primary Company Roles**
 | * CIO
* CEO
* HR roles
 |
|
**Average Implementation Time**
 |
 An hour or less
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 2
  |

Best Practices
----------------

It is highly recommended that you do not pull reports containing calculated fields from Workday, as these cause extremely long import times, even for small reports.


 Prerequisites
---------------

To connect to your Workday RaaS account and create a DataSet, you must have a Workday username and password.


 Connecting to Your Workday RaaS Account
-----------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Workday RaaS Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Workday RaaS account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your Workday username.
  |
|
 Password
  |
 Enter your Workday password.
  |


 Once you have entered valid Workday RaaS credentials, you can use the same account any time you go to create a new Workday RaaS DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains only two fields—one in which you enter the URL for your report, and another in which you can optionally enter fields to exclude.


 Menu
  |
 Description
  |
| --- | --- |
|
 Enter the URL to Your Report
  |
 Enter the URL for your Workday or Simple XML Report. You must provide the URL along with the fully qualified path, including the report name.


 For example:

https://com.workday.report/service/Report\_Name?format=simplexml


 For information about finding URLs in Workday, see

Troubleshooting

.

|
|
 Enter Fields to Exclude
  |
 Enter a comma-separated list of fields (columns) to exclude from your XML import, if any.
  |
|
 Enter Your Sublisttoflatten
  |
 Enter the comma separated lists that you want to flatten out in your data.
  |
|
 Flatten data
  |
 Select this checkbox to bring data for all duplicate elements.
  |
|
 Merge Keys
  |
 Enter the comma separated lists of keys that will be used to merge your data. This field is required if you are using the
 **Merge Update**
 mode.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------

This connector supports
 *only*
 Workday reports in Workday XML or Simple XML format. It does not support reports in CSV, RSS, GData, or JSON.


 To find report URLs in Workday, do the following:

. Navigate to the
 **View Custom Report**
 screen for the report you want.
2. Click the orange ellipsis next to the report name and select
 **Web Service > View URLs**
 .
3. Click either the
 **Workday XML**
 or
 **Simple XML link**
 .


 This will take you to the XML formatted report.
4. Copy the URL for the report.


 You will enter this value into the Workday Report URL field in Domo.


