

Intro
-------

Vimeo is a video-sharing website in which users can upload, share, and view videos. You can use the Vimeo connector to retrieve data about videos, people, albums, and the like. To learn more about the Vimeo API, go to

https://developer.domo.com/api/start

.


 The Vimeo connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 This topic discusses the fields and menus that are specific to the Vimeo connector user interface. For general information about adding DataSets, setting update schedules, and editing DataSet information, see

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 | * Accessing data about video performance, effectiveness, completion, and general information about your viewers
* Providing insight into campaign effectiveness from a product marketing standpoint
* Helping marketers understand their end audience better
 |
|
**Primary Metrics**
 | * Video views
* Video comments
* Geo-location of viewing events
* Video completion
* Video fallout
* Source by device type
 |
|
**Primary Company Roles**
 |
 Product marketing roles
  |
|
**Average Implementation Time**
 |
 Less than 1 hour
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 2
  |

Prerequisites
---------------

To connect to your Vimeo account and create a DataSet, you must have the following:

 The email address you entered when you signed up for a Vimeo account.
* Your Vimeo password.

Connecting to Your Vimeo Account
----------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Vimeo Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Vimeo connector uses OAuth to connect. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Vimeo accounts in Domo)


 to open the Vimeo OAuth screen where you can either enter the email address associated with your Vimeo account and your password or you can enter your Facebook credentials. After you have entered valid credentials and authorized Domo to access Vimeo, you can use the same account in Domo any time you create a Vimeo DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Vimeo when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Vimeo.


###
 Details Pane

This pane contains a single menu from which you select a Vimeo report. The following table describes all of the reports you can create using the Domo Vimeo connector:


 Report
  |
 Description
  |
| --- | --- |
|
 Albums
  |
 Returns a list of the authenticated user's albums.
  |
|
 Categories
  |
 Returns a list of Vimeo categories.
  |
|
 Channels
  |
 Returns a list of all public channels.
  |
|
 Contacts
  |
 Returns a list of the authenticated user's contacts.
  |
|
 Groups
  |
 Returns a list of the authenticated user's member groups.
  |
|
 People
  |
 Returns information about the authenticated user.
  |
|
 Videos
  |
 Returns a list of all videos credited to the authenticated user.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


* Ensure that your credentials correspond to the account where the videos are hosted.
* Ensure that data is updating at the desired frequency.
* Compare to Vimeo channel data by manually extracting from the Vimeo site.


