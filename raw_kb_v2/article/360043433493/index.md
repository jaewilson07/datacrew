

Intro
-------

Okta provides secure identity management and Single Sign-On for any application. To learn more about the Okta API, visit their page (

https://developer.okta.com/docs/api/...ces/users.html

).


 You connect to your Okta account in the Data Center. This topic discusses the fields and menus that are specific to the Okta connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Okta account and create a DataSet, you must have the following:

 The domain for your company Okta instance (e.g.


 okta.mycompany.com


 ).
* An Okta API token. For information about obtaining a token, see

https://developer.okta.com/docs/api/...g\_a\_token.html

.

Connecting to Your Okta Account
---------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Okta Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Okta account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Domain
  |
 Enter the domain for your company Okta instance (e.g.


 okta.mycompany.com


 ).
  |
|
 API Token
  |
 Enter your Okta API token. For information about obtaining a token, see

https://developer.okta.com/docs/api/...g\_a\_token.html

.
  |


 Once you have entered valid Okta credentials, you can use the same account any time you go to create a new Okta DataSet. You can manage connector accounts in the
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
 Select the Okta report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Applications (Apps)
  |
 Returns a list of Okta-enabled apps added to your organization.
  |
|
 Events
  |
 Returns a list of events from your Okta organization system log.
  |
|
 Groups
  |
 Returns a list of Okta groups in your organization.
  |
|
 Users
  |
 Returns a list of Okta users in your organization.
  |
|
 Zones
  |
 Returns a list of zones.
  |

|
|
 Search Term (Optional)
  |
 Enter the term you want to return data for in your "Groups" report.
  |
|
 Published Start Date
  |
 Select the start date for your "Events" report. Pair with
 **Published End Date**
 to return a range of dates.
  |
|
 Published End Date
  |
 Select the end date for your "Events" report. Pair with
 **Published Start Date**
 to return a range of dates.
  |
|
 Filter By
  |
 Select whether you want to filter by group or user.
  |
|
 User Name
  |
 Select the user you want to filter by.
  |
|
 Group Name
  |
 Select the group you want to filter by.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

