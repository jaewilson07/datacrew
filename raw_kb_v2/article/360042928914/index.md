

Intro
-------

Opsgenie is a cloud-based incident management platform. To learn more about the Opsgenie API, visit their page (

https://docs.opsgenie.com/docs

).


 You connect to your Opsgenie account in the Data Center. This topic discusses the fields and menus that are specific to the Opsgenie connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Opsgenie account and create a DataSet, you must have your Opsgenie API key. For information about obtaining an API key, see

https://docs.opsgenie.com/docs/api-key-management

.


 Connecting to Your Opsgenie Account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Opsgenie Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Opsgenie account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your Opsgenie API key.
  |
|
 Domain
  |
 Select your Opsgenie domain. If you are using the EU instance of Opsgenie, you must use

api.eu.opsgenie.com

|


 Once you have entered valid Opsgenie credentials, you can use the same account any time you go to create a new Opsgenie DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a single menu from which you select a report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Opsgenie report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Alerts
  |
 Returns a list of alerts. You must select
 **Merge**
 as your
 **Update Mode**
 (in the
 **Scheduling**
 tab) for this report to run properly.
  |
|
 Incidents
  |
 Returns a list of incidents. You must select
 **Merge**
 as your
 **Update Mode**
 (in the
 **Scheduling**
 tab) for this report to run properly.
  |
|
 Schedules
  |
 Returns a list of schedules. You must select
 **Replace**
 as your
 **Update Mode**
 (in the
 **Scheduling**
 tab) for this report to run properly.
  |
|
 Teams
  |
 Returns a list of teams. You must select
 **Replace**
 as your
 **Update Mode**
 (in the
 **Scheduling**
 tab) for this report to run properly.
  |
|
 Users
  |
 Returns a list of users. You must select
 **Replace**
 as your
 **Update Mode**
 (in the
 **Scheduling**
 tab) for this report to run properly.
  |
|
 Who Is on Call
  |
 Returns a list of users on a call. You must select
 **Replace**
 as your
 **Update Mode**
 (in the
 **Scheduling**
 tab) for this report to run properly.
  |

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

