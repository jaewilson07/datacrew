

Intro
-------

You’ve Got Leads delivers web-based customer relationship management solutions to senior living communities. Use Domo's You've Got Leads connector to retrieve referral data for senior living communities. To learn more about the You've Got Leads API, visit their page (

https://www.youvegotleads.com/webser.../documentation

).


 You connect to your You've Got Leads account in the Data Center. This topic discusses the fields and menus that are specific to the You've Got Leads connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your You've Got Leads account and create a DataSet, you must have your You've Got Leads username and password.


 Connecting to Your You've Got Leads Account
---------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the You've Got Leads Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your You've Got Leads account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your You've Got Leads username.
  |
|
 Password
  |
 Enter your You've Got Leads password.
  |


 Once you have entered valid You've Got Leads credentials, you can use the same account any time you go to create a new You've Got Leads DataSet. You can manage connector accounts in the
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
 Select the You've Got Leads report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Community List
  |
 Returns a list of senior living communities in your account.
  |
|
 Details for a Community
  |
 Returns details for a given community.
  |
|
 Details for All Communities
  |
 Returns details for all communities in your account.
  |
|
 Lead Details for a Community
  |
 Returns referral information for a given community.
  |
|
 Details for a Lead
  |
 Returns details for a given referral.
  |
|
 Leads for a Community
  |
 Returns a list of referrals for a given community.
  |
|
 Task Details for a Lead
  |
 Returns task details for a given referral.
  |
|
 Tasks for a Community
  |
 Returns a list of tasks for a given community.
  |
|
 Tasks for a Lead
  |
 Returns a list of tasks for a given referral.
  |

|
|
 Community
  |
 Select the community you want to retrieve information for.
  |
|
 Lead
  |
 Select the referral you want to retrieve information for.
  |
|
 Task
  |
 Select the task you want to retrieve information for.
  |
|
 Filter (Optional)
  |
 Add filter criteria if you would like to narrow down the data returned in your report. For example:

CreatedOn+gt+'2014-05-20'

For more information, see You've Got Leads' API documentation at

https://www.youvegotleads.com/webser.../documentation

.
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

While YGL may enforce rate call limits, you should not need to worry about them.

