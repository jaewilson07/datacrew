

Intro
-------

Pocket, previously known as Read It Later, is an application and service for managing a reading list of articles from the Internet. To learn more about the Pocket API, visit their page (

https://getpocket.com/developer/

).


 You connect to your Pocket account in the Data Center. This topic discusses the fields and menus that are specific to the Pocket connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Pocket account and create a DataSet, you must have credentials for a Pocket account. Any of the following types of credentials will work:

 A Pocket username and password
* Google or Firefox credentials you have used to sign into Pocket

Connecting to Your Pocket Account
-----------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Pocket Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Pocket connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Pocket accounts in Domo) to open the Pocket OAuth screen where you can enter your Pocket credentials. You can enter a Pocket username and password, or, if you signed up for Pocket through Google or Firefox, you can use those to log in. Once you have entered valid credentials, you can use the same account any time you go to create a new Pocket DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Pocket when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Pocket.


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
 Select the Pocket report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Get Article Data
  |
 Returns a list of articles in your Pocket account.
  |
|
 Get Image Data
  |
 Returns a list of images associated with articles in your Pocket account.
  |
|
 Get Video Data
  |
 Returns a list of videos associated with articles in your Pocket account.
  |

|
|
 State
  |
 Lets you select whether to retrieve data for all articles or only those that are archived or unread.
  |
|
 Detail Type
  |
 Select the level of detail you want your report to contain. If you select
 **Simple**
 , basic information such as title, URL, and status is returned. If you select
 **Detailed**
 , all data is returned, including tags, images, authors, videos, etc.
  |
|
 Tag (Optional)
  |
 Enter a search tag to retrieve data for.
  |
|
 Date Since
  |
 Select whether you want to retrieve data for a specific date or for a relative number of days back.
  |
|
 Specific Date
  |
 Select the date you want to retrieve data for.
  |
|
 Days Back
  |
 Enter the number of days back you want to retrieve data for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

