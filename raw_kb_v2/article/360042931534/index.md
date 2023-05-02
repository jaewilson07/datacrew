

Intro
-------

Raiser's Edge by Blackbaud develops fundraising software and facilitating relationship management for nonprofits. Use Domo's Raiser's Edge connector to retrieve lists of gifts, constituents, and actions taken. To learn more about the Raiser's Edge API, visit their page (

https://developer.blackbaud.com/skyapi/

).


 You connect to your Raiser's Edge account in the Data Center. This topic discusses the fields and menus that are specific to the Raiser's Edge connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Raiser's Edge account and create a DataSet, you must have the following:

 A Raiser's Edge client ID for your OAuth app
* A Raiser's Edge client secret for your OAuth app
* A Raiser's Edge API subscription key
* Your Raiser's Edge account credentials

Connecting to Your Raiser's Edge Account
------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Raiser's Edge Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Raiser's Edge account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Client ID
  |
 Enter the client ID for your Raiser's Edge OAuth app.
  |
|
 Client Secret
  |
 Enter the client secret for your Raiser's Edge OAuth app.
  |
|
 Subscription Key
  |
 Enter your Raiser's Edge subscription key.
  |


 Once you have entered valid Raiser's Edge credentials, you are taken to an OAuth screen where you are requested to enter your account credentials. You can use the same account any time you go to create a new Raiser's Edge DataSet. You can manage connector accounts in the
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
 Select the Raiser's Edge report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Actions
  |
 Returns a list of actions taken in your account.
  |
|
 Constituents
  |
 Returns a list of your constituents.
  |
|
 Gifts
  |
 Returns a list of gifts in your account.
  |

|
|
 Date Type
  |
 Select whether you want to pull in report data for the date the data was added or the date when it was last modified.
  |
|
 Date Added
  |
 Select the desired "Date Added" date for your report data.
  |
|
 Last Modified
  |
 Select the desired "Last Modified" date for your report data.
  |
|
 Column to Expand
  |
 Select the column you want to group by in your report.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQ
-----


#####
 How often can the data be updated?

As often as needed.

####
 Are there any API limits I should be aware of?

No.

