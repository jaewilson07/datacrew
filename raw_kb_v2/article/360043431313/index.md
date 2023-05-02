

Intro
-------

Hearsay Social is a social media marketing management platform that uses social networks like Facebook, Twitter and LinkedIn to allow clients to market to their customer bases.  To learn more about the Hearsay Social API, visit their page (

https://docs.hearsaysocial.com/

).


 You connect to your Hearsay Social account in the Data Center. This topic discusses the fields and menus that are specific to the Hearsay Social connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Hearsay Social account and create a DataSet, you must have the following:

 Your Hearsay Social organization ID.
* Your Hearsay Social API token. If you do not have an API token, reach out to your Hearsay Social account representative.

Connecting to Your Hearsay Social Account
-------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Hearsay Social Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Hearsay Social account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Org ID
  |
 Enter your Hearsay Social organization ID.
  |
|
 Token
  |
 Enter your Hearsay Social API token.
  |


 Once you have entered valid Hearsay Social credentials, you can use the same account any time you go to create a new Hearsay Social DataSet. You can manage connector accounts in the
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
 Select the Hearsay Social report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Asset
  |
 Retrieves information about a specific asset.
  |
|
 Assets
  |
 Lists all active assets for a particular group.
  |
|
 District
  |
 Retrieves information about a specific district in the system.
  |
|
 Districts
  |
 List all active districts in the system.
  |
|
 Group
  |
 Retrieves information about a specific group in the system.
  |
|
 Groups
  |
 Lists all active groups in the system.
  |
|
 Group Membership
  |
 Retrieves information about a single group membership in the system.
  |
|
 Group Memberships
  |
 Lists all active group memberships in the system.
  |
|
 Role
  |
 Retrieves information about a specific role in the system.
  |
|
 Roles
  |
 Lists all active roles in the system.
  |
|
 Site Profile Data
  |
 Gets the profile data for a given Hearsay site in JSON format.
  |
|
 Sites
  |
 Gets a listing of the Hearsay Sites for a particular group.
  |
|
 User
  |
 Retrieves information about a specific user in the system.
  |
|
 Users
  |
 Lists all active users in the system.
  |

|
|
 User ID
  |
 Select the user you want to retrieve information for.
  |
|
 District ID
  |
 Select the district you want to retrieve information for.
  |
|
 Group ID
  |
 Select the group you want to retrieve information for.
  |
|
 Member ID
  |
 Select the group member you want to retrieve information for.
  |
|
 Asset ID
  |
 Select the asset you want to retrieve information for.
  |
|
 Role ID
  |
 Select the role you want to retrieve information for.
  |
|
 Site ID
  |
 Select the site you want to retrieve information for.
  |
|
 Admin (Optional)
  |
 Select whether you want your report to show data for all users or just Admin users.
  |
|
 Email (Optional)
  |
 Enter a user's email address to pull data for that user.
  |
|
 Reference ID (Optional)
  |
 Enter a reference ID to pull data for that ID.
  |
|
 Owner (Optional)
  |
 Enter an owner name to pull data for that owner.
  |
|
 Role (Optional)
  |
 Select a role to pull data for the role.
  |
|
 State (Optional)
  |
 Select whether to pull data for active accounts, pre-active accounts ("Groups" report only) cancelled accounts, or all accounts.
  |
|
 District (Optional)
  |
 Enter a district ID to pull data for that district.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

