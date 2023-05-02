

Intro
-------

Jama Software leads the field in product development software, offering requirements management, traceability, test management, and maximum ease of use of the product. It is a single platform that will help accelerate innovation and manage regulations for medical device development innovation. Use Domo's Jama connector to retrieve various reports such as Relationships, Items, and Test Cycles for the given project IDs. To learn more about the Jama API, visit their page (

https://dev.jamasoftware.com/api/

).


 You connect to your Jama account in the Data Center. This topic discusses the fields and menus that are specific to the Jama connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Jama account and create a DataSet, you must have the following:

 Your Client ID
* Your Client Secret
* Your Jama instance

Connecting to Your Jama Account
---------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Jama Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Jama account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Client ID
  |
 Enter your Jama Client ID.
  |
|
 Client Secret
  |
 Enter your Jama Client Secret.
  |
|
 Jama instance
  |
 Enter your Jama instance URL. Example:

https://yourname.jamacloud.com
  |


 Once you have entered valid Jama credentials, you can use the same account any time you go to create a new Jama DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


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
 Select the Jama report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Projects
  |
 Retrieve all projects
  |
|
 Items
  |
 Retrieve all items for the selected project(s).
  |
|
 Relationships
  |
 Retrieve all relationships in the selected project(s).
  |
|
 Test Plans
  |
 Retrieve all test plans in the selected project(s).
  |
|
 Test Cycles
  |
 Retrieve all test cycles for each test plan in the selected project(s).
  |
|
 Test Runs
  |
 Retrieve all test runs for every test cycle in each test plan in the selected project(s).
  |

|
|
 Project ID
  |
 Select the project ID(s).
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

