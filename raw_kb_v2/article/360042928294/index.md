

Intro
-------

Taleo is a cloud-based talent management software vendor. Use Domo's Taleo connector to compile reports about potential job candidates, completed interviews, and requisitions for additional employees. To learn more about the Taleo API, visit their website (

http://www.oracle.com/technetwork/documentation/default-1841567.html

).


 The Taleo connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your Taleo account in the

Data Center

. This topic discusses the fields and menus that are specific to the Taleo connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Taleo account and create a DataSet, you must have the following:

 Your company code. This is the portion of the URL of your company's Taleo instance following the slashes (subdomain). For example, in the URL

https://domo.taleo.net

, the company code is

domo

.
* The username and password you use to log into Taleo.

Connecting to Your Taleo Account
----------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Taleo Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Taleo account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Company Code
  |
 Enter your Taleo company code. For more information, see "Prerequisites," above.
  |
|
 Username
  |
 Enter the username you use to log into Taleo.
  |
|
 Password
  |
 Enter the password you use to log into Taleo.
  |

Once you have entered valid credentials and connected to Taleo, you can use the same account any time you go to create a new Taleo DataSet. You can manage connector accounts in the

*Accounts**

tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a primary
 **Report**
 menu, along with other fields and menus that may or may not appear depending on the selected report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Taleo report you want to run. The following reports are available:

*Note:**
 The word "replace" in a report name indicates that new report data replaces old data; it is
 *not*
 appended. When using one of these reports, you must select "Replace" as your
 **Update Method**
 in the
 **Scheduling**
 tab. For more information, see

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
 Candidates Applications
  |
 Retrieves data for candidates that have applied for positions.
  |
|
 Candidates
  |
 Retrieves data for potential candidates.
  |
|
 Candidates (replace)
  |
 Retrieves data for potential candidates.
  |
|
 Interviews (replace)
  |
 Retrieves data for candidates that have completed interviews.
  |
|
 Requisitions
  |
 Retrieves data about requisitions for additional employees.
  |
|
 Requisitions (replace)
  |
 Retrieves data about requisitions for additional employees.
  |


 |
|
 Date
  |
 Select the date for your report. The report will return records for this date only.
  |
|
 Start Date
  |
 Select the start date for your report. The report will return records created on or after this date. Pair with
 **End Date**
 to include a range of dates in your report.
  |
|
 End Date
  |
 Select the end date for your report. The report will return records created on or before this date. Pair with
 **Start Date**
 to include a range of dates in your report.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

a DataSet Using a Data Connector

.

