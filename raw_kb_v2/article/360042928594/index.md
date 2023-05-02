

Intro
-------

Black Duck Hub open source management helps security and development teams identify and eliminate open source security risks. To learn more about the Black Duck Hub API, visit their page (

https://www.blackducksoftware.com/te...y/integrations

).


 You connect to your Black Duck Hub account in the Data Center. This topic discusses the fields and menus that are specific to the Black Duck Hub connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Black Duck Hub account and create a DataSet, you must have a Black Duck Hub username and password.


 Connecting to Your Black Duck Hub Account
-------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Black Duck Hub Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Black Duck Hub account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter the username of your Black Duck Hub account.
  |
|
 Password
  |
 Enter the password of your Black Duck Hub account.
  |


 Once you have entered valid Black Duck Hub credentials, you can use the same account any time you go to create a new Black Duck Hub DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains two menus, one that allows you to import an existing report by inputting a URL and another that lets you pull data from Black Duck Hub.


 Menu
  |
 Description
  |
| --- | --- |
|
 Custom Report
  |
 Enter the URL for the existing Black Duck Hub report you want to import into Domo.
  |
|
 Specified Report
  |
 Select the Black Duck Hub report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Code Locations
  |
 Returns a list of code locations.
  |
|
 Components
  |
 Returns a list of components.
  |
|
 Files
  |
 Returns a list of files.
  |
|
 Security
  |
 Returns security information.
  |
|
 Version
  |
 Returns version information.
  |

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

