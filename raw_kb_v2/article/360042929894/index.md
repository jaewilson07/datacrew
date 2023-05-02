


**Important:**
 Google has retired their Picasa platform as of January 2019.

Intro
---------

Picasa is a Google-owned photo-sharing website that provides image organizing, viewing, and editing capabilities. Use Domo's Picasa connector to retrieve lists of photos, albums, tags, and comments. To learn more about the Picasa API, visit their page (

https://developers.google.com/picasa-web/

).


 The Picasa connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your Picasa account in the

Data Center

. This topic discusses the fields and menus that are specific to the Picasa connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

Because Picasa is a Google application, you connect to Picasa by connecting to your Google account using your Google credentials (email address and password).


 Connecting to Your Picasa Account
-----------------------------------

This section enumerates the options in the

Credentials

and

Details

panes in the Picasa Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Picasa connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Picasa accounts in Domo) to open the Google OAuth screen where you can select the account you want to connect to. After selecting an account, you are asked for the password for that account. Once you have entered a valid password, you can use the same account any time you go to create a new Picasa DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Google when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of the currently active Google account.


###
 Details Pane

This pane contains two menus, one from which you select a report type and one in which you enter the Picasa username.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select a Picasa report. The following reports are available:


|  |  |
| --- | --- |
|
 Albums
  |
 Returns a list of albums for the specified user.
  |
|
 Photo Comments
  |
 Returns a list of photo comments for the specified user.
  |
|
 Photos by Album
  |
 Returns a list of photos for the specified user, broken down by album.
  |
|
 Tags
  |
 Returns a list of tags for the specified user.
  |

|
|
 Username
  |
 Enter the Picasa username of the user you want to retrieve information for. Enter

default

to refer to the authenticated user. If the username you enter is not the authenticated user, only public data is returned.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

