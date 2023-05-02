

Intro
-------

Firebase provides a real-time database for storing and syncing your data.  To learn more about the Firebase API, visit their page (

https://firebase.google.com/docs/reference/

).


 You connect to your Firebase account in the Data Center. This topic discusses the fields and menus that are specific to the Firebase connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Firebase account and create a DataSet, you must have a Firebase API authentication key.


 Connecting to Your Firebase Account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Firebase Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Firebase account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 APi Authentication Key
  |
 Enter your Firebase API authentication key.
  |


 Once you have entered valid Firebase credentials, you can use the same account any time you go to create a new Firebase DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains several menus for configuring your Firebase report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Firebase Name
  |
 Enter the name of the Firebase database you want to pull data from. For example:

flickering-water-4515

|
|
 Data Tag Name
  |
 Enter the data tag name in the format

tag/data

. For example, if you wanted to fetch the data for "coordinates," which is under the "geometry" tag, you would enter

geometry/coordinates

.
  |
|
 Root Tag Name
  |
 Enter the root tag for the data in your JSON text.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 How often can the data be updated?

DataSets should be set to update no more than once every 15 minutes.

###
 Are there any API limits I should be aware of?

While Firebase may enforce rate call limits, you should not have to worry about them.

