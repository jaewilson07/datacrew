

Intro
-------

Jamf is comprehensive enterprise management software for the Apple platform, simplifying IT management for Mac, iPad, iPhone and Apple TV. This connector will allow you to pull in information for your managed devices. To learn more about the Jamf API, visit their page (

https://developer.jamf.com/documentation

).


 You connect to your Jamf account in the Data Center. This topic discusses the fields and menus that are specific to the Jamf connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Jamf account and create a DataSet, you must have the following:

 Your Jamf username and password
* The URL of your Jamf instance
* Your Jamf account name

Connecting to Your Jamf Account
---------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Jamf Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Jamf account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your Jamf username.
  |
|
 Password
  |
 Enter your Jamf password.
  |
|
 URL
  |
 Enter the URL of your Jamf instance.
  |
|
 Account Name
  |
 Enter your Jamf account name.
  |


 Once you have entered valid Jamf credentials, you can use the same account any time you go to create a new Jamf DataSet. You can manage connector accounts in the
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
 Select the Jamf report you want to run.


 The following reports with RAW data are available:


|  |  |
| --- | --- |
|
 Accounts
  |
 Returns account data.
  |
|
 Account Group Details
  |
 Returns detailed information about account groups.
  |
|
 Account User Details
  |
 Returns detailed information about account users.
  |
|
 Classes
  |
 Returns data about classes.
  |
|
 Computers
  |
 Returns data about computers on your account.
  |
|
 Computer Apps
  |
 Returns data about apps on your account.
  |
|
 Computer Details
  |
 Returns detailed information about computers on your account.
  |
|
 Computer Groups
  |
 Returns data about computer groups.
  |
|
 Computer Group Details
  |
 Returns detailed information about computer groups.
  |
|
 Mac Applications
  |
 Returns information about all Mac applications on your account.
  |
|
 Mobile Device Applications
  |
 Returns data about mobile device applications on your account.
  |
|
 Mobile Devices
  |
 Returns data about mobile devices on your account.
  |
|
 Mobile Device Details
  |
 Returns detailed information about mobile devices on your account.
  |
|
 Mobile Device Groups
  |
 Returns information about your mobile device groups.
  |
|
 Mobile Device Group Details
  |
 Returns detailed information about mobile device groups.
  |
|
 Packages
  |
 Returns package data.
  |
|
 Patches
  |
 Returns information about patches.
  |
|
 Policies
  |
 Returns policy data.
  |
|
 Users
  |
 Returns data about the users on your account.
  |
|
 User Details
  |
 Returns detailed information about the users on your account.
  |


 In addition, the following CURATED reports are available. In all of these reports, headers have been reformatted so they are easier to read.


|  |  |
| --- | --- |
|
 All Devices
  |
 Returns information about computer and mobile devices, with renamed headers.
  |
|
 Computer Applications
  |
 Returns a list of computers associated with their applications, with renamed headers.
  |
|
 Computer Details
  |
 Returns detailed information about your computers, with renamed headers.
  |
|
 Computer Extension Attributes
  |
 Returns a list of computers broken down by their extension attributes, with renamed headers.
  |
|
 Computer Groups
  |
 Returns a list of computer groups, with renamed headers.
  |
|
 Mobile Applications
  |
 Returns a list of applications installed on your mobile devices, with renamed headers.
  |
|
 Mobile Details
  |
 Returns detailed information about your mobile devices, with renamed headers.
  |
|
 Mobile Extension Attributes
  |
 Returns a list of mobile devices broken down by their extension attributes, with renamed headers.
  |
|
 Mobile Groups
  |
 Returns a list of mobile devices with their associated groups, with renamed headers.
  |

|
|
 Expand Additional Data
  |
 Lets you choose an additional data category to apply to your report.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

