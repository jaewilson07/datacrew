

*Important:**
 Dropbox has deprecated the Dropbox for Business v1 API and disabled the endpoints as of May 30, 2019. Domo has updated the Dropbox for Business connectors so that our customers can leverage the new Dropbox v2 API. Due to changes in authentication and schema in the new API, we will be deprecating the 2.x version of the Domo Dropbox for Business and Dropbox for Business Advanced connectors. In addition, Domo plans to consolidate the two connectors into a single Dropbox for Business Advanced connector. In order to minimize the interruptions with your Dropbox data, please be aware of the following dates for these changes.


**May 31, 2019**
 : The 2.x version of the Dropbox for Business and Dropbox for Business Advanced connectors will be deprecated. Customers will still have access to all existing DataSets but will no longer be able to create new ones using the 2.x connectors. The updated 3.x version of the Dropbox for Business Advanced connector will be available for use on this date. In order to create new DataSets, customers will need to create a new Dropbox for Business Advanced DataSet and enter credentials there. Customers should begin migrating/re-creating existing Dropbox for Business and Dropbox for Business Advanced DataSets immediately to use the new 3.x Dropbox for Business Advanced connector.


**June 19, 2019**
 : The 2.x versions of the Dropbox for Business and Dropbox for Business Advanced connectors will be disabled DataSets created using these versions of the connectors will no longer function. Customers will need to have created new accounts and DataSets using the updated 3.x version of Dropbox for Business Advanced connector by this date.


 Intro
-------


 Dropbox for Business is a file sharing and storage solution that allows users to share, store, and sync files securely. You can use Domo's Dropbox for Business Advanced connector to compile reports about account information, team information, audit log, and team usage statistics. To learn more about the Dropbox for Business API, go to

https://www.dropbox.com/developers/business

.


 This connector is nearly identical to the standard Dropbox for Business connector but includes an additional report type, "Groups Information," and some configuration options. For information about the standard Dropbox for Business connector, see

Dropbox for Business Connector

.


 This topic discusses the fields and menus that are specific to the Dropbox for Business Advanced connector user interface. For general information about adding DataSets, setting update schedules, and editing DataSet information, see

Adding a DataSet Using a Data Connector

.


|  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 Use this connector to get information about system usage and make governance decisions.
  |
|
**Primary Metrics**
 | * Storage usage
* Membership
* User activity
 |
|
**Primary Company Roles**
 |
 Dropbox system administrator
  |
|
**Average Implementation Time**
 |
 Less than 1 hour
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 3
  |


 Prerequisites
----------------


 To connect to your Dropbox account and create a Dropbox for Business Advanced connector DataSet, you must have the following:


* The account you use to log into your Dropbox account.
* The password you use to log into your Dropbox account.

If you don't have credentials you can get them here:

https://www.dropbox.com/business


 Connecting to your Dropbox account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Dropbox for Business Advanced connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 The Domo Dropbox for Business Advanced connector uses OAuth to connect to Dropbox for Business. (Domo does not store or transmit user passwords.) Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Dropbox accounts in Domo) to open the Dropbox OAuth screen where you can enter the account and password associated with your Dropbox account. You may also enter Google credentials. After you have entered valid Dropbox credentials, you can use the same account in Domo any time you create a Dropbox for Business Advanced DataSet.


 You can manage connector accounts in the
 **Accounts**
 tab in the
 **Data Center**
 . For more information about this tab, see

Managing User Accounts for Connectors

.


###

Details Pane


 This pane includes a menu from which you select a report type, along with various configuration options.


|
 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select a Dropbox for Business Advanced report. The following reports are available:


|  |  |
| --- | --- |
|

Audit Log

|

Accesses the Dropbox for Business audit log for a team.

|
|
 Groups Information
  |
 Retrieves reporting data about your Dropbox for Business groups.
  |
|

Linked Devices

|

Retrieves reporting data about a team's linked devices.

|
|

Members

|

Lists members of a team.

|
|

Membership

|

Retrieves reporting data about a team's membership.

|
|

Storage usage

|

Retrieves reporting data about a team's storage usage.

|
|

Team Information

|

Retrieves information about a team.

|
|

User Activity

|

Retrieves reporting data about a team's user activity.

|

|
|
 Start Date
  |
 Enter the start date for the data you want to pull into Domo.
  |
|
 End Date
  |
 Enter the end date for the data you want to pull into Domo.
  |
|
 User
  |
 Enter the email ID of the user you want to pull information for.
  |
|
 Category Flag
  |
 Select whether you want to filter your report data using a category.
  |
|
 Category
  |
 Select the category you want to filter your data by.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQ
-----


####
 How do I know my Dropbox credentials are secure?

The login process uses the OAuth process, so your Dropbox credentials are never seen or stored by Domo. This keeps your login secure. You can revoke Domo's access to your account at any time.

###
 Can I use the same account to create multiple DataSets?

Yes.

###
 How often can the data be updated?

DataSets should be set to update no more than once every 15 minutes.

###
 Are there any API limits I should be aware of?

While Dropbox may enforce call rate limits, you should not need to worry about them.


 Troubleshooting
-----------------

Check credentials and permissions against the error code received.

