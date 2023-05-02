

Intro
-------

CargoWatch is a telematics application that optimizes logistics management solutions for transportation service providers who use freight transportation assets. Use Domo's Cargowatch connector to get visibility into dry assets, maximize usage, reduce operational costs, and improve delivery predictability. To learn more about CargoWatch, visit their page (

https://www.orbcomm.com/en/solutions/web-applications/cargowatch

).


 You connect to your CargoWatch account in the Data Center. This topic discusses the fields and menus that are specific to the CargoWatch connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your CargoWatch account and create a DataSet, you must have a CargoWatch username and password.


 Connecting to Your CargoWatch Account
---------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the CargoWatch Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your CargoWatch account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your CargoWatch username.
  |
|
 Password
  |
 Enter your CargoWatch password.
  |


 Once you have entered valid CargoWatch credentials, you can use the same account any time you go to create a new CargoWatch DataSet. You can manage connector accounts in the
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
 Select the CargoWatch report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Messages
  |
 Returns all messages you've received about your cargo.
  |
|
 Asset Commands
  |
 Returns the available commands for a given Asset ID pertaining to a provided Datagate ID.
  |
|
 Device Commands
  |
 Returns the available commands for a given device pertaining to a provided Datagate ID.
  |
|
 Geofence Status
  |
 Returns a list of geofences that have changed since your "Last Modified" date.
  |

|
|
 Dategate ID
  |
 Enter your Datagate ID.
  |
|
 Time
  |
 Enter the time you want to retrieve status for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


#####
 Can I use the same account to create multiple DataSets?

Yes.

####
 How often can the data be updated?

As often as needed.

####
 Are there any API limits I should be aware of?

No.

