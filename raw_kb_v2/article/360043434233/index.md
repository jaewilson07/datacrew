

Intro
-------

Jive integrates the functionality of online communities, microblogging, social networking, discussion forums, blogs, wikis, and IM under one unified user interface. To learn more about the Jive API, visit their page (

https://developers.jivesoftware.com/...est/index.html

).


 You connect to your Jive account in the Data Center. This topic discusses the fields and menus that are specific to the Jive connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Jive account and create a DataSet, you must have the following:

 Your Jive username and password
* Your Jive URL (e.g.


 https://community.jivesoftware.com


 )

Connecting to Your Jive Account
---------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Jive Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Jive account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter the username for your Jive account.
  |
|
 Password
  |
 Enter the password for your Jive account.
  |
|
 Jive URL
  |
 Enter your Jive URL (e.g.


 https://community.jivesoftware.com


 )
  |


 Once you have entered valid Jive credentials, you can use the same account any time you go to create a new Jive DataSet. You can manage connector accounts in the
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
 Select the Jive report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Activities
  |
 Returns a list of activities matching the specified criteria.
  |
|
 Announcements
  |
 Returns a list of announcements.
  |
|
 Contents
  |
 Returns a list of contents matching the specified criteria.
  |
|
 People
  |
 Returns a list of people matching the specified criteria.
  |
|
 Places
  |
 Returns a list of places matching the specified criteria.
  |

|
|
 Search
  |
 Enter a search keyword to retrieve data about that search term.
  |
|
 Start Days
  |
 Enter the number of past days you want to pull data for. Use

0

for today and

1

for yesterday.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

a DataSet Using a Data Connector

.

