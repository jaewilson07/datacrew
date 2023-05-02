

Intro
-------

FreshService is an IT service desk management system.   To learn more about the FreshService API, visit their page (

http://api.freshservice.com/

).


 You connect to your FreshService account in the Data Center. This topic discusses the fields and menus that are specific to the FreshService connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your FreshService account and create a DataSet, you must have the following:

 The subdomain your FreshService account is hosted on. For example, if you log in at

domo.freshservice.com

, you would just enter

domo

in this field. You MUST have SSL enabled on your domain.
* Your FreshService username and password.

Connecting to Your FreshService Account
-----------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the FreshService Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your FreshService account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Domain
  |
 Enter the subdomain your FreshService account is hosted on.
  |
|
 Username
  |
 Enter your FreshService username.
  |
|
 Password
  |
 Enter your FreshService password.
  |


 Once you have entered valid FreshService credentials, you can use the same account any time you go to create a new FreshService DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a single menu from which you select a FreshService report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the FreshService report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Agents
  |
 Returns a list of active agents.
  |
|
 Agent Groups
  |
 Returns information about agent groups
  |
|
 All Conversations of Ticket
  |
 Returns all conversations of a ticket
  |
|
 All Tickets
  |
 Returns all tickets that are updated since the date specified.
  |
|
 List All Ticket Fields
  |
 Returns a list of all ticket fields
  |

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

DataSets should be updated once per day only, due to FreshService's API call limits.

###
 Are there any API limits I should be aware of?

FreshService allows 1000 API calls per day.

