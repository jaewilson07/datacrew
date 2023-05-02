

Intro
-------

Box Governance provides a globally accessible, cloud-based solution that allows users to seamlessly manage the entire lifecycle of their business documents. To learn more about the Box API, visit their page (

https://developer.box.com/

).


 You connect to your Box Governance account in the Data Center. This topic discusses the fields and menus that are specific to the Box Governance connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Box account and create a Box Governance DataSet, you must have your Box username and password.


 Connecting to Your Box Account
--------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Box Governance Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Box Governance connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Box Governance accounts in Domo) to open the Box OAuth screen where you can enter your Box credentials. Once you have entered valid Box Governance credentials, you can use the same account any time you go to create a new Box Governance DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Box when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Box.


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
 Select the Box Governance report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 File Classification Report
  |
 Lets you retrieve data about File Classification policies. These policies provide the ability to classify content and drive security settings based on that classification.
  |
|
 Legal Hold Reports
  |
 Lets you retrieve either of two different Legal Hold subreports. Legal Hold policies allow one to specify a custodian whose content must be retained in Box until the hold is removed.
  |
|
 Retention Report
  |
 Lets you retrieve data about Retention policies. These policies allow one to specify a length of time that a file must be retained in Box prior to a specified disposition date.
  |

|
|
 Enterprise Metadata Templates
  |
 Select the template you want to retrieve data for.
  |
|
 Specific Type of Subreport
  |
 Select the desired subreport for your "Legal Hold Report," either
 **"**
 File Versions" or "Assignments."
  |
|
 Assign To Type
  |
 Select the desired filter for your report.
  |
|
 Assign To ID (Optional)
  |
 Enter an ID to filter assignments to that ID only. Note that this shows only those assignments applied directly to this entity.
  |
|
 Disposition Action
  |
 Select the disposition action you want to show data for in your report.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

